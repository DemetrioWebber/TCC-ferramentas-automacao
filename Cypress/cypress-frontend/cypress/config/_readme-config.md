# Sobre os arquivos de configuração de ambiente

* Os arquivos JSON dentro da pasta `cypress/config` servem como diferentes ambientes para execução dos testes automatizados.
* Você pode criar diversos desses arquivos com ambientes como `hml_1` ou `qa` ou ainda `staging` por exemplo.
* A base URL deve ser única em cada um desses arquivos.
* Lembre-se de criar um script de execução no `package.json` como o *cy:open:prod* encaminhando o nome do arquivo de ambiente na variavel `--env configFile=<nome_do_arquivo>`
* Na propriedade `env` desses arquivos você pode adicionar variáveis de ambiente que podem ser acessadas utilizando o comando: 
`Cypress.env('<nome_da_variável>')`.
* Você pode adicionar novas variáveis de ambiente em tempo de execução com o mesmo comando, encaminhando como segundo parâmetro o valor da variável: `Cypress.env('<nome_da_variável>', <valor_da_variável>)`.