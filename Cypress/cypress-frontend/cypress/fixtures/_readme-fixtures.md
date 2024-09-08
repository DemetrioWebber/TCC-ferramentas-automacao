
# Fixtures em Cypress:

[https://docs.cypress.io/api/commands/fixture]
- O Cypress conta com um comando nativo para acessar as massas de dados para testes, leia a documentação da linha 4.

- Para acessar, por exemplo, o arquivo `cypress/fixtures/example.json` basta utilizar o comando passando o nome do arquivo que quer acessar:

```
let data = cy.fixture('example.json') //Atribuído a uma variável

cy.fixture('example.json').then( data => { //Utilizando a syntax de BDD
    console.log(JSON.stringify(data))

    expect(data.body).to.eq('Fixtures are a great way to mock data for responses to routes')
})
```
