/// <reference types="cypress" />

import {Given, When, Then, But, Before, After} from 'cypress-cucumber-preprocessor/steps'
import {Sauce} from '../../pages/sauce.page'

When(`adicionar o produto {string} ao carrinho`, (prod) => {
	cy.log(prod);
    Sauce.adicionarProdutoCarrinho(prod)
});

When(`acessar o carrinho`, () => {
    cy.log('Acessar carrinho')
    Sauce.acessarCarrinho()
});

Then(`o carrinho deve conter {int} produto`, (qtd) => {
	Sauce.validarBadgeCarrinho(qtd)
});

Then(`o produto {string} deve estar adicionado ao carrinho`, (prod) => {
	Sauce.verificarProdutoAdicionado(prod)
});
