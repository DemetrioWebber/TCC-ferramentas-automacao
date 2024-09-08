* Settings *
Documentation    Arquivo com keywords reutilizáveis

Resource         ../actions/autenticacao/login.robot
Resource         ../actions/autenticacao/register.robot
Resource         factory.robot


* Keywords *
Carregar Dados de Usuários Estáticos
    [Documentation]        Utilizado na Suite Setup quando dados estáticos são necessários

    ${static_users}        Run Keyword             Ler JSON            sensitive
    Run Keyword            Set Global Variable     ${static_users}


Executar Login com Usuário Estático Válido
    Run Keyword            Fazer Login Com         ${static_users["valido"]["email"]}     ${static_users["valido"]["senha"]}
    Run Keyword            Validar Login com Sucesso


Fazer Cadastro de Usuário Aleatório
    Run Keyword            Acessar Página de Registro
    Run Keyword            Cadastrar Usuário Aleatório
    Run Keyword            Validar Cadastro com Sucesso