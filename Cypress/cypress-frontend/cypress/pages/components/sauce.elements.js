export function element(selector){
    return cy.get(`[data-test=${selector}]`)
}

export const Login = {
    INP_USER     : '[data-test=username]',
    INP_PASSWORD : '[data-test=password]',
    BTN_LOGIN    : '[data-test=login-button]'
}

export const Home = {
    SELECT_FILTER : '[data-test=product_sort_container]',
    ARR_PRODUCTS  : '.inventory_list .inventory_item',
    BTN_ADD_BACKPACK: '[id=add-to-cart-sauce-labs-backpack]',
    BTN_ADD_BIKE_LIGHT: '[id=add-to-cart-sauce-labs-bike-light]',
    BTN_ADD_TSHIRT: '[id=add-to-cart-sauce-labs-bolt-t-shirt]'
}

export const Cart = {
    BTN_CART      : '.shopping_cart_link',
    LBL_CART_ITEM : '.cart_item',
    LBL_CART_QTD  : '.shopping_cart_badge',
    BTN_RM_BACKPACK: '[id=remove-sauce-labs-backpack]',
    BTN_RM_BIKE_LIGHT: '[id=remove-sauce-labs-bike-light]',
    BTN_RM_TSHIRT: '[id=remove-sauce-labs-bolt-t-shirt]',
    BTN_CHECKOUT: '[id=checkout]'
}

export const Check = {
    INP_FIRST_NAME: '[id=first-name]',
    INP_LAST_NAME: '[id=last-name]',
    INP_POSTAL_CODE: '[id=postal-code]',
    BTN_CONTINUE: '[id=continue]',
    BTN_FINISH: '[id=finish]',
    INP_FIRST_NAME: '[id=first-name]',
    ARR_PRODUCTS_RESUME: '.cart_item',
    TXT_SUMMARY: '.summary_total_label'
}