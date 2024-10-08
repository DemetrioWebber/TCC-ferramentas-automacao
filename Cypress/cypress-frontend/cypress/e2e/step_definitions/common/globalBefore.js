/// <reference types="cypress" />

import {Before, After} from 'cypress-cucumber-preprocessor/steps'
import {Sauce} from '../../../pages/sauce.page'

Before(() => {
  cy.log("before all, this!")
  cy.clearLocalStorage();
  cy.clearCookies();
  Sauce.acessarSauceDemo()
    
})

After(() => {
  cy.log("After each, this!")
})