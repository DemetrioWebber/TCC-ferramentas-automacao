* Settings *
Documentation     Ações da Funcionalidade de Fechamento de Pedido


* Variables *
${btn_submit_login}                 css=#SubmitLogin
${box_delivery_address_name}        css=#address_delivery .address_firstname
${box_delivery_address}             css=#address_delivery .address_address1
${box_delivery_address_country}     css=#address_delivery .address_country_name
${box_delivery_address_city}        css=#address_delivery .address_city
${box_delivery_address_company}     css=#address_delivery .address_company
${box_delivery_address_phone}       css=#address_delivery .address_phone
${box_delivery_address_mobile}      css=#address_delivery .address_phone_mobile
${rad_delivery_option}              css=input[id^="delivery_option"]
${chk_agree_terms_delivery}         css=#cgv
${btn_go_to_delivery_options}       css=button[name="processAddress"]
${btn_go_to_payment_options}        css=button[name="processCarrier"]
${btn_pay_by_bank_wire}             css=.payment_module a[title^="Pay by bank wire"]
${btn_pay_by_check}                 css=.payment_module a[title^="Pay by check"]
${btn_confirm_order}                css=#cart_navigation button[type="submit"]
${txt_order_complete}               text=Your order on My Store is complete


* Keywords *
Validar Se Pediu Identificação
    Wait For Elements State     ${btn_submit_login}      visible     ${IMPLICIT_TIMEOUT}


Validar se Endereço está Correto
    Get Text     ${box_delivery_address_name}         contains     ${random_user["first_name"]} ${random_user["last_name"]}
    Get Text     ${box_delivery_address}              contains     ${random_user["address"]}
    Get Text     ${box_delivery_address}              contains     Apartment
    Get Text     ${box_delivery_address_country}      contains     United States
    Get Text     ${box_delivery_address_city}         contains     ${random_user["city"]}
    Get Text     ${box_delivery_address_city}         contains     Alabama
    Get Text     ${box_delivery_address_city}         contains     21244
    Get Text     ${box_delivery_address_company}      contains     ${random_user["company"]}
    Get Text     ${box_delivery_address_phone}        contains     (198)704-1111
    Get Text     ${box_delivery_address_mobile}       contains     (198)704-3333


Ir para Seleção do Método de Entrega
    Click                       ${btn_go_to_delivery_options}


Escolher Método de Entrega
    Check Checkbox              ${rad_delivery_option}
    Check Checkbox              ${chk_agree_terms_delivery}


Ir para Seleção do Método de Pagamento
    Click                       ${btn_go_to_payment_options}


Escolher Método de Pagamento
    [Arguments]                 ${payment_type}
    
    Run Keyword If              '${payment_type}' == 'check'      Click       ${btn_pay_by_check}
    ...                         ELSE                              Click       ${btn_pay_by_bank_wire}


Finalizar Pedido
    Wait For Elements State     ${btn_confirm_order}              visible     ${IMPLICIT_TIMEOUT}
    Click                       ${btn_confirm_order}
    Wait For Elements State     ${txt_order_complete}             visible     ${IMPLICIT_TIMEOUT}