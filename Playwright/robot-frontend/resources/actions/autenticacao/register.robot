* Settings *
Documentation     Ações da Funcionalidade de Registro

Library           FakerLibrary

Resource          ../../support/factory.robot


* Variables *
${btn_login_page}           css=.login 
${inp_email_create}         css=#email_create
${btn_create}               css=#SubmitCreate
#--------------- Dados Pessoais --------------#
${rad_mister}               css=#id_gender1
${inp_first_name}           css=#customer_firstname
${inp_last_name}            css=#customer_lastname
${inp_email_reg}            css=#email
${inp_password}             css=#passwd
${sel_day_of_birth}         css=#days
${sel_month_of_birth}       css=#months
${sel_year_of_birth}        css=#years
${chk_newsletter}           css=#newsletter
${chk_special_offers}       css=#optin
#------------- Dados do Endereço -------------#
${inp_address_first_name}   css=#firstname
${inp_address_last_name}    css=#lastname
${inp_company}              css=#company
${inp_address}              css=#address1
${inp_address2}             css=#address2
${inp_city}                 css=#city
${sel_state}                css=#id_state
${inp_zip_code}             css=#postcode
${sel_country}              css=#id_country
${tar_additional_info}      css=#other
${inp_home_phone}           css=#phone
${inp_mobile_phone}         css=#phone_mobile
${inp_address_alias}        css=#alias

${btn_submit_account}       css=#submitAccount

${txt_my_account}           css=.page-heading
${txt_error}                css=.alert-danger


* Keywords *
Clicar no Botão de Login
    Click                  ${btn_login_page}


Preencher Email de Registro Aleatório
    ${random_user}         Gerar Dados de Usuário Aleatório
    Fill Text              ${inp_email_create}    ${random_user["email"]}
    Set Global Variable    ${random_user}


Preencher Email de Registro
    [Arguments]     ${email}

    Fill Text       ${inp_email_create}    ${email}


Clicar no Botão de Registro
    Click                  ${btn_create}


Acessar Página de Registro
    Clicar no Botão de Login
    Preencher Email de Registro Aleatório
    Clicar no Botão de Registro


Cadastrar Usuário Aleatório
    Check Checkbox         ${rad_mister}
    Fill Text              ${inp_first_name}         ${random_user["first_name"]}
    Fill Text              ${inp_last_name}          ${random_user["last_name"]}
    Fill Secret            ${inp_password}           ${random_user["password"]}    
    Select Options By      ${sel_day_of_birth}       value     1
    Select Options By      ${sel_month_of_birth}     value     1
    Select Options By      ${sel_year_of_birth}      value     2000

    Fill Text              ${inp_address_first_name}      ${random_user["first_name"]}
    Fill Text              ${inp_address_last_name}       ${random_user["last_name"]}
    Fill Text              ${inp_address}                 ${random_user["address"]}
    Fill Text              ${inp_address2}                Apartment
    Fill Text              ${inp_city}                    ${random_user["city"]}
    Select Options By      ${sel_state}                   value         1
    Fill Text              ${inp_zip_code}                21244
    Fill Text              ${inp_company}                 ${random_user["company"]}
   #Select Options By      ${sel_country}                 value         21
    Fill Text              ${inp_home_phone}              (198)704-1111
    Fill Text              ${inp_mobile_phone}            (198)704-3333
    Fill Text              ${inp_address_alias}           Home Address

    Click               ${btn_submit_account}


Validar Cadastro com Sucesso
    Wait For Elements State     ${txt_my_account}       visible     ${IMPLICIT_TIMEOUT}
    Get Text                    ${txt_my_account}       contains    MY ACCOUNT


Validar Cadastro com Erro
    Wait For Elements State     ${txt_error}       visible     ${IMPLICIT_TIMEOUT}
    Get Text                    ${txt_error}       contains    An account using this email address has already been registered