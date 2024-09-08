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
    ARR_PRODUCTS  : '.inventory_list .inventory_item'
}

export const Cart = {
    BTN_CART      : '.shopping_cart_link',
    LBL_CART_ITEM : '.cart_item',
    LBL_CART_QTD  : '.shopping_cart_badge'
}