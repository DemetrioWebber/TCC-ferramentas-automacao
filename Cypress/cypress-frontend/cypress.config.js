const { defineConfig } = require('cypress')
const cucumber = require('cypress-cucumber-preprocessor').default
const fs = require('fs-extra')
const path = require('path')
const { exec } = require('child_process')

function getConfigurationByFile(file) {
  const pathToConfigFile = path.resolve('.', 'cypress', 'config', `${file}.json`)
  return fs.readJson(pathToConfigFile)
}

/** Tentativa de limpar os reports e gerar ao final da automação de forma automática */
// const clearReports = new Promise(
//   function(resolve, reject) {
//     console.log('Iniciando o processo de limpeza do reports...')
//     resolve(exec(`node ${path.join(__dirname,'./cypress/support/clear.js')}`))
//   }
// )

// const generateReports = new Promise(
//   function(resolve, reject) {
//     console.log('Iniciando o processo de gerar report HTML...')
//     resolve(exec(`node ${path.join(__dirname,'./cypress/support/reporter.js')}`))
//   }
// )

module.exports = defineConfig({
  video: false,
  viewportWidth: 1600,
  viewportHeight: 900,
  chromeWebSecurity: false,
  numTestsKeptInMemory: 5,
  screenshotsFolder: 'reports/screenshots',
  e2e: {
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber())

      on('before:browser:launch', (browser = {}, launchOptions) => {
        if (browser.family === 'chromium' && browser.name !== 'electron') {
          launchOptions.args.push('--disable-dev-shm-usage')
        }
        return launchOptions
      })

      on('before:run', async () => {
        console.log('before:run')
      })

      on('after:run', async () => {
        console.log('after:run')
      })

      const file = config.env.configFile || 'dev'
      return getConfigurationByFile(file)
    },
    excludeSpecPattern: '*.js',
    specPattern: 'cypress/e2e/**/*.{feature, features}',
  },
})
