/// <reference types="cypress" />
import {Given, When, Then, Before} from 'cypress-cucumber-preprocessor/steps'
import {Sauce} from '../../pages/sauce.page'

/*** 
 * Os 'before' que se aplicam para todos as features e steps estão armazenados na pasta 'step_definitions/common/globalBefore.js'
 */

Before({ tags: "@tag"}, () => {
  console.log("before scenarios with tag '@tag'")
})

/** Pré-requisitos :: Dado :: Given
 * Dado que esteja/ Dado que tenha/ Dado que busque/ Dados possua/ ...
 */

  // Given('', () => {})

/** Ações :: Quando :: When
 * Quando acessar/ Quando buscar/ Quando requisitar/ Quando preencher/ Quando <verbo>/ ...
 */
  When(`filtrar os produtos por {string}`, (filtro) => {
    Sauce.filtrarProdutos(filtro)
  });

/** Validações :: Então :: Then
 * Então deverá ser mostrado.../ Então deverá ser visivel.../ Então deverá acessar a página.../ Então deverá ser exibido.../ ...
 */  
  Then(`deverá ser mostrado o primeiro produto com nome {string} e preço {string}`, (product_name, product_price) => {
    Sauce.verificarProduto(product_name, product_price)
  });
