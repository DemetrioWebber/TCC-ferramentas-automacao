* Settings *
Documentation   Cenário de Registro na Aplicação

Resource        ../resources/actions/autenticacao/register.robot
Resource        ../resources/support/base.robot
Resource        ../resources/support/common_keywords.robot

Suite Setup     Carregar Dados de Usuários Estáticos

Test Setup      Start Application
Test Teardown   Take Screenshot


* Test Cases *
Cadastrar Usuário com Dados Aleatórios
    Acessar Página de Registro
    Cadastrar Usuário Aleatório
    Validar Cadastro com Sucesso


Cadastrar Usuário já Cadastrado Gera Erro
    Clicar no Botão de Login
    Preencher Email de Registro         ${static_users["valido"]["email"]}
    Clicar no Botão de Registro
    Validar Cadastro com Erro