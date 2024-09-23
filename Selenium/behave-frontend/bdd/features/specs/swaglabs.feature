#language: pt

@feature.swag_labs
Funcionalidade: Flow Basico Swag Labs

    @scenario.login
    Cenário: Logar na Aplicação

        Dado que esteja na pagina de login
        Quando digitar o username "standard_user" e senha "secret_sauce"
        E clicar no botao de login
        Então devera ser exibida a pagina de produtos da aplicação

    Cenário: Adicionar Produtos ao Carrinho

        Dado que esteja na pagina de produtos
        Quando clicar para adicionar um produto ao carrinho
        E clicar no icone do carrinho
        Então devera ser exibido o carrinho com o produto selecionado

    Cenário: Checkout de Produtos

        Dado que esteja na pagina de carrinho
        E que tenha diversos produtos adicionados
        Quando clicar no botao de checkout
        E colocar os dados do comprador
        Então devera ver os produtos e o valor na pagina de resumo do pedido
        Quando clicar no botao para finalizar a compra
        Então devera ser exibido um agradecimento pelo pedido