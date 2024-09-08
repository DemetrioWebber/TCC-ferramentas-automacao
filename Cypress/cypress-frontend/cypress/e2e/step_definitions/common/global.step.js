import {Given, When, Then, Before} from 'cypress-cucumber-preprocessor/steps'
import {Sauce} from '../../../pages/sauce.page'


/** Pré-requisitos :: Dado :: Given
 * Dado que esteja/ Dado que tenha/ Dado que busque/ Dados possua/ ...
 */
    Given(`que esteja na página de login`, () => {
        Sauce.acessarSauceDemo()
    });

    Given(`que esteja logado com {string}`, (user_type) => {
        Sauce.logarSauceDemo(user_type)
    });