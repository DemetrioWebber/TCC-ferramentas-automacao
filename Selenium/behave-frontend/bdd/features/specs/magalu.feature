#language: pt

@feature.busca_na_magalu
Funcionalidade: Busca na Magalu

    @scenario.pesquisar_eletronicos
    Cenário: Pesquisar por Eletronicos

        Dado que esteja na pagina home da Magalu
        Quando pesquisar por um produto "eletronicos"
        Então deverá ser exibido a página de resultados para "eletronicos"