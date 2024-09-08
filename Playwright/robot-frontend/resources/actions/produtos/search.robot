* Settings *
Documentation     Ações Envolvendo a Funcionalidade de Busca

* Variables *
${inp_search}                   css=#search_query_top
${btn_search}                   css=button[name="submit_search"]
${box_products}                 css=.product_list .product-container
${msg_not_found}                css=.alert-warning             
${menu_women_category}          css=a[title="Women"]
${menu_women_links}             css=a[title="Women"]~.submenu-container


* Keywords *
Procurar Por
    [Arguments]     ${query}

    Fill Text                 ${inp_search}               ${query}
    Click                     ${btn_search}


Produtos Deverão Estar Visíveis
    ${prev_mode}              Set Strict Mode             False
    Wait For Elements State   ${box_products}             visible     ${IMPLICIT_TIMEOUT}
    Get Element Count         ${box_products}             >=          1
    Set Strict Mode           ${prev_mode}

Mensagem Nenhum Produto Encontrado Deve Estar Visível
    Wait For Elements State   ${msg_not_found}     visible     ${IMPLICIT_TIMEOUT}
    Get Text                  ${msg_not_found}     contains    No results were found for your search


Acessar Categoria no Menu Women
    [Arguments]     ${category}

    Hover                     ${menu_women_category}
    Wait For Elements State   ${menu_women_links} a[title="${category}"]     visible     ${IMPLICIT_TIMEOUT}
    Click                     ${menu_women_links} a[title="${category}"]
