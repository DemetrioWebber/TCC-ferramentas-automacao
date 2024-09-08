* Settings *
Documentation   Cenário de Login na Aplicação

Resource        ../resources/actions/autenticacao/login.robot
Resource        ../resources/support/base.robot
Resource        ../resources/support/common_keywords.robot

Suite Setup     Carregar Dados de Usuários Estáticos

Test Setup      Start Application
Test Teardown   Take Screenshot


* Test Cases *
Deve Fazer Login com Dados Válidos
    Fazer Login com       ${static_users["valido"]["email"]}       ${static_users["valido"]["senha"]}
    Validar Login com Sucesso


Não Deve Fazer Login com Dados Inválidos
    [Template]            Realizar Login Inválido

    ${static_users["invalido"]["email"]}    ${static_users["invalido"]["senha"]}
    ${static_users["valido"]["email"]}      ${static_users["invalido"]["senha"]}
    ${static_users["invalido"]["email"]}    ${static_users["valido"]["senha"]}
    ${static_users["valido"]["email"]}      ${EMPTY}
    ${EMPTY}                                ${static_users["valido"]["senha"]}