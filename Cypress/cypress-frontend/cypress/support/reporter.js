
// O reporter que será utilizado para gerar o report HTML
const report = require('multiple-cucumber-html-reporter');

// O diretório onde está o arquivo JSON gerado pelo cypress-cucumber-preprocessor
const cucumberJsonDir = "reports/json";
const htmlReportDir = "reports/html";

report.generate({
	jsonDir: cucumberJsonDir,
	reportPath: htmlReportDir,
    pageFooter: "<div></div>",
    openReportInBrowser: false,
    displayDuration: true,
    displayReportTime: true,
    hideMetadata: true,
    /**
     *customData: {
        title: 'Run info',
        data: [
            {label: 'Project', value: 'Custom project'},
            {label: 'Release', value: '1.2.3'},
            {label: 'Cycle', value: 'B11221.34321'},
            {label: 'Execution Start Time', value: 'Nov 19th 2017, 02:31 PM EST'},
            {label: 'Execution End Time', value: 'Nov 19th 2017, 02:56 PM EST'}
        ]
      }
    */
});
