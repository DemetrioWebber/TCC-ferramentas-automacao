/// <reference types="cypress" />

import {Before, After} from 'cypress-cucumber-preprocessor/steps'

Before(() => {
  cy.log("before all, this!")
  cy.clearLocalStorage();
  cy.clearCookies();
    
})

After(() => {
  cy.log("After each, this!")
})