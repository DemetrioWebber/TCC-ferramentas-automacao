#language: pt

@feature.login_sauce
Funcionalidade: Login na SauceDemo

    @scenario.login_com_sucesso
    Cenário: Login com usuário válido

        Dado que esteja na pagina de login da SauceDemo
        Quando colocar o usuário "standard_user" e senha "secret_sauce"
        E clicar no botao de login
        Então deve ser realizado o login com sucesso