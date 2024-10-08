/// <reference types="cypress" />

import {Given, When, Then} from 'cypress-cucumber-preprocessor/steps'
import {Sauce} from '../../pages/sauce.page'

Given(`que esteja na pagina de login`, () => {
    cy.contains('Accepted usernames are:')
    cy.url().should('eq', 'https://www.saucedemo.com/')
});

Given(`que esteja na pagina de produtos`, () => {
    Sauce.logarSauceDemo('standard_user', 'secret_sauce')
    Sauce.clicarLogin()
    cy.contains('Products')
    cy.url().should('eq', 'https://www.saucedemo.com/inventory.html')
});

Given(`que esteja na pagina de carrinho com diversos produtos`, () => {
    Sauce.acessarCarrinho()
    cy.contains('Your Cart')
    cy.url().should('eq', 'https://www.saucedemo.com/cart.html')
});

Given(`que tenha diversos produtos adicionados ao carrinho`, () => {
    Sauce.logarSauceDemo('standard_user', 'secret_sauce')
    Sauce.clicarLogin()
    Sauce.adicionarProdutosCarrinho()
});

When(`adicionar produtos ao carrinho`, () => {
    Sauce.adicionarProdutosCarrinho()
});

When(`digitar o username {string} e senha {string}`, (username, senha) => {
    Sauce.logarSauceDemo(username, senha)
});

When(`clicar no botao de login`, () => {
    Sauce.clicarLogin()
});

When(`clicar no icone do carrinho`, () => {
    Sauce.acessarCarrinho()
});

When(`clicar no botao de checkout`, () => {
    Sauce.clicarCheckout()
});   

When(`colocar os dados do comprador`, () => {
    Sauce.colocarDadosComprador()
});

When(`clicar no botao para finalizar a compra`, () => {
    Sauce.clicarFinalizarCompra()
});

Then(`devera ser exibido um agradecimento pelo pedido`, () => {
    cy.contains('Thank you for your order!')
    cy.url().should('eq', 'https://www.saucedemo.com/checkout-complete.html')
});

Then(`devera ver os produtos e o valor na pagina de resumo do pedido`, () => {
    Sauce.verificarValorFinal('Total: $60.45')
    Sauce.verificarQuantidadeProdutos()
});

Then(`devera ser exibido o carrinho com os produtos selecionados`, () => {
    Sauce.verificarQuantidadeProdutos()
});

Then(`devera ser exibida a pagina de produtos da aplicação`, () => {
    cy.contains('Products')
    cy.url().should('eq', 'https://www.saucedemo.com/inventory.html')
});
