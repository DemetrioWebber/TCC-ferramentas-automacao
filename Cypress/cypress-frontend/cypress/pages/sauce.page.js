import Base from './_base.page'
import {Home, Cart} from './components/sauce.elements'

const element = require('./components/sauce.elements').element 

export class Sauce extends Base {

    static acessarSauceDemo(){
      cy.visit('/')
    }

    static logarSauceDemo(user_type){
      element('username')
        .should('be.visible')
        .type(user_type)
      element('password')
        .should('be.visible')
        .type('secret_sauce')
      element('login-button')
        .should('be.visible')
        .click()
    }

    static filtrarProdutos(filtro){
      super.waitElementAndSelectOption(Home.SELECT_FILTER, filtro)
    }

    static verificarProduto(name, price){
      super.validarPrimeiroElementoDoArray(Home.ARR_PRODUCTS, name)
      super.validarPrimeiroElementoDoArray(Home.ARR_PRODUCTS, price)
    }

    static adicionarProdutoCarrinho(prod){
      switch (prod) {
        case "Sauce Labs Backpack":
          element('add-to-cart-sauce-labs-backpack')
            .should('be.visible')
            .click()
          break;
        default:
          throw new Error(`Produto ${prod} não encontrado`)
      }
    }

    static acessarCarrinho(){
      super.clickOnElement(Cart.BTN_CART)
    }

    static verificarProdutoAdicionado(prod){
      super.validateElementText(Cart.LBL_CART_ITEM, prod)
    }

    static validarBadgeCarrinho(qtd){
      super.validateElementText(Cart.LBL_CART_QTD, qtd)
    }

}
