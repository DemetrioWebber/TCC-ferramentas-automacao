* Settings *
Documentation           Ações da Funcionalidade de Login


* Variables *
${btn_login_page}       css=.login
${inp_email}            css=#email
${inp_password}         css=#passwd
${btn_submit_login}     css=#SubmitLogin
${txt_my_account}       css=.page-heading
${btn_logout}           css=.logout
${txt_error}            css=.alert-danger > p


* Keywords *
Fazer Login Com
    [Arguments]     ${email}          ${password}

    Click           ${btn_login_page}
    Fill Text       ${inp_email}      ${email}
    Fill Secret     ${inp_password}   ${password}
    Click           ${btn_submit_login}


Validar Login com Falha
    Wait For Elements State     ${txt_error}        visible         ${IMPLICIT_TIMEOUT}
    Get Text                    ${txt_error}        contains        error


Validar Login com Sucesso
    Wait For Elements State     ${txt_my_account}       visible     ${IMPLICIT_TIMEOUT}
    Get Text                    ${txt_my_account}       contains    MY ACCOUNT


Deslogar do Site
    Click           ${btn_logout}


Realizar Login Inválido
    [Arguments]     ${email}    ${password}

    Fazer Login Com          ${email}     ${password}
    Validar Login com Falha