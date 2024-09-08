* Settings *
Documentation   Ações da Funcionalidade do Carrinho de Compras

Resource        ../autenticacao/login.robot
Resource        ../produtos/search.robot


* Variables *
${txt_product_name_first_product}      css=.product_list .ajax_block_product:first-child .product-name
${btn_add_cart_first_product}          css=.product_list .ajax_block_product:first-child .ajax_add_to_cart_button
${mod_added_to_cart}                   css=#layer_cart
${txt_no_products_in_cart}             css=.center_column .alert-warning
${inp_cart_quantity}                   css=#cart_summary .cart_item:first-child .cart_quantity_input
${btn_remove_from_cart}                css=#cart_summary .cart_item:first-child a[title="Delete"]
${txt_cart_quantity}                   css=#summary_products_quantity
${btn_continue_shopping}               css=a[title="Continue shopping"]
${btn_proceed_to_checkout}             css=a[title="Proceed to checkout"].standard-checkout


* Keywords *
Acessar Página do Carrinho
    Go to           ${BASE_URL}?controller=order      ${IMPLICIT_TIMEOUT}


Adicionar Produto no Carrinho
    [Arguments]     ${product}

    Procurar Por                    ${product}
    Produtos Deverão Estar Visíveis
    Sleep                           1s
    Hover                           ${txt_product_name_first_product}
    Wait For Elements State         ${btn_add_cart_first_product}       visible     ${IMPLICIT_TIMEOUT}
    Click                           ${btn_add_cart_first_product}
    Wait For Elements State         ${mod_added_to_cart}                visible     ${IMPLICIT_TIMEOUT}
    Acessar Página do Carrinho


Alterar Quantidade do Produto Para
    [Arguments]     ${quantity}

    Fill Text       ${inp_cart_quantity}     ${quantity}
    Keyboard Key    Press                    Enter


Validar Que a Quantidade do Carrinho é
    [Arguments]     ${quantity}

    Wait Until Keyword Succeeds      10s      0.5s     Get Text     ${txt_cart_quantity}     contains     ${quantity} Product


Clicar Em Remover Produto
    Click           ${btn_remove_from_cart}


Validar Que o Carrinho Está Vazio
    Get Text        ${txt_no_products_in_cart}        contains        Your shopping cart is empty


Clicar em Continuar Comprando
    Click           ${btn_continue_shopping}


Clicar em Finalizar Pedido
    Click           ${btn_proceed_to_checkout}