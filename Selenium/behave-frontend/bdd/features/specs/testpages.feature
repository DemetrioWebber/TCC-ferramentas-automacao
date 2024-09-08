#language: pt

@feature.adicionar_ao_carrinho
Funcionalidade: Interagir com o site TestPages

    @scenario.notebook_dell
    Cenário: Clicar no botão Click Me

        Dado que esteja na pagina home do site TestPages
        Quando clicar no botão Click Me
        Então deverá ser exibido a um log de clicks