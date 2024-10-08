import Base from './_base.page'
import {Home, Cart, Login, Check} from './components/sauce.elements'

const element = require('./components/sauce.elements').element 

export class Sauce extends Base {

    static acessarSauceDemo(){
      cy.visit('/')
    }

    static logarSauceDemo(user_type, password){
      element('username')
        .should('be.visible')
        .type(user_type)
      element('password')
        .should('be.visible')
        .type(password)
    }

    static adicionarProdutosCarrinho(){
      super.clickOnElement(Home.BTN_ADD_BACKPACK)
      super.clickOnElement(Home.BTN_ADD_BIKE_LIGHT)
      super.clickOnElement(Home.BTN_ADD_TSHIRT)
    }

    static acessarCarrinho(){
      super.clickOnElement(Cart.BTN_CART)
    }

    static clicarLogin(){
      super.clickOnElement(Login.BTN_LOGIN)
    }

    static clicarCheckout(){
      super.clickOnElement(Cart.BTN_CHECKOUT)
    }

    static clicarFinalizarCompra(){
      super.clickOnElement(Check.BTN_FINISH)
    }

    static verificarValorFinal(valor){
      super.validateElementText(Check.TXT_SUMMARY, valor)
    }

    static verificarQuantidadeProdutos(){
      cy.get(Check.ARR_PRODUCTS_RESUME).should('have.length', 3)
    }

    static colocarDadosComprador(){
      cy.get(Check.INP_FIRST_NAME)
        .should('be.visible')
        .type('Demetrio')
      cy.get(Check.INP_LAST_NAME)
        .should('be.visible')
        .type('Atitus')
      cy.get(Check.INP_POSTAL_CODE)
        .should('be.visible')
        .type('95300000')
      super.clickOnElement(Check.BTN_CONTINUE)
    }
}
