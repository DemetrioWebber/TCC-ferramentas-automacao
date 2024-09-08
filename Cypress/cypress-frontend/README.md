<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" />
<img src="https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white" />
![Cypress.io](https://img.shields.io/badge/tested%20with-Cypress-04C38E.svg)<br>

# Acelerador :: Visual Forest
Cypress para Front-end arquitetado em _Page Objects_ com _Cucumber_ (BDD)
<br>

## Setup do projeto
Clonar o repositório e executar `npm ci` para instalar as dependências

## Comandos para execução da automação em produção
`npm run cy:open:prod` - __Executar em tela gráfica__ <br><br>

`npm run cy:run:prod` - __Executar em  modo headless__ <br>

#### Limpar reports atuais e gerar novos reports:
* Execute os comandos na seguinto ordem: <br>
`npm run cy:clear` >> `npm run cy:run:prod` >> `npm run cy:report`
* O report HTML será armazenado na pasta `reports/html`

### Para rodar o projeto pelo docker:
  * `docker build -t <nome_da_imagem>`
  * `docker container run --rm -it -e tags=@tag -v %cd%:/usr/src/e2e <nome_da_imagem>`
  * O comando acima não funciona no Powershell devido aos dois pontos após %cd%, utilize por exemplo o CMDER

### Boas práticas de desenvolvimento:
* Siga os padrões de identação e nomenclatura exemplificados.
* Separe suas _specs_ por funcionalidade e contexto.
* Utilize sempre as marcações de tipo de arquivo. Ex: **.step.js** || **.page.js** || **.elements.js**

### Boas práticas na escrita Gherkin:
* 'Dado   // Given' - Pré-requsitos :: Dado que esteja.../ Dado que tenha.../ Dado que possua.../ Dado que inicie...
* 'Quando // When'  - Ações         :: Quando <verbo>.../ Quando preencher o formulário/ Quando realizar a requisição...
* 'Então  // Then'  - Validações    :: Então deverá <validação>.../ Então deverá ser visualizado o logo/

#### Não utilize primeira pessoa na escrita Gherkin.
* Ao invés de escrever: __Quando EU preencher o cadastro__
* Escreva: __Quando preencher o cadastro__
* `Lembre-se, quem está executando a ação é um robô!`
* Ou ainda, utilize atores: __Quando o administrador preencher o cadastro__

__Faça download do documento abaixo para acessar todas as boas práticas indicadas para Gherkin__
[link]

# Guia para desenvolvimento:
* 0 - Configure seus ambientes nos arquivos _.json_ da pasta `cypress/config`.
* 0.1 - Lembre-se de revisar os scripts de execução em `package.json` para garantir que 'configFile' envie o nome do seu arquivo
* 1 - Crie o seu arquivo _.feature_ na pasta `cypress/e2e/specs` seguindo as boas práticas indicadas.
* 2 - Crie um arquivo _*.step.js_ com o mesmo nome da feature na pasta `cypress/e2e/step_definitions`.
* 2.1 - Lembre-se de reutilizar steps de diferentes features organizando-os em `cypress/e2e/step_definitions/common`.
* 3 - As páginas devem ser organizadas em uma classe na pasta `cypress/pages` seguindo o exemplo de `sauce.page.js`
* 3.1 - Siga o padrão de nomenclaturas e boas práticas da orientação a objetos.
* 3.2 - Os elementos das páginas devem ser armazenados em arquivos `*.elements.js` na pasta `pages/components`
* 3.3 - Lembre-se de reutilizar funções herdando a `_base.page.js`, isso vai acelerar o seu processo de desenvolvimento.
* 4 - Utilize as boas práticas indicadas pela documentação do Cypress [https://docs.cypress.io/guides/references/best-practices]

__Em caso de dúvidas peça ajuda de um evangelista do iStudio de QA ou colega com experiência__

### Dependências:

  * [**Cypress**](https://www.cypress.io/)
  * [**Cypress-cucumber-preprocessor**](https://github.com/TheBrainFamily/cypress-cucumber-preprocessor)
  * [**Fs-extra**](https://www.npmjs.com/package/fs-extra)
  * [**Rimraf**](https://www.npmjs.com/package/rimraf)
  * [**Multiple-cucumber-html-reporter**](https://www.npmjs.com/package/multiple-cucumber-html-reporter)
  * [**Faker**](https://www.npmjs.com/package/faker)
