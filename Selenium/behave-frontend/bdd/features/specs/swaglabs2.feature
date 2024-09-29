#language: pt

@feature.swag_labs
Funcionalidade: Flow Basico Swag Labs

    @scenario.login
    Cenário: Logar na Aplicação

        Dado que esteja na pagina de login
        Quando digitar o username "e" e senha "secret_sauce"
        E clicar no botao de login
        Então devera ser exibida a pagina de produtos da aplicação

    Cenário: Adicionar Produtos ao Carrinho

        Dado que esteja na pagina de produtos
        Quando adicionar produtos ao carrinho
        E clicar no icone do carrinho
        Então devera ser exibido o carrinho com os produtos selecionados

    Cenário: Checkout de Produtos

        Dado que tenha diversos produtos adicionados ao carrinho
        E que esteja na pagina de carrinho com diversos produtos
        Quando clicar no botao de checkout
        E colocar os dados do comprador
        Então devera ver os produtos e o valor na pagina de resumo do pedido
        Quando clicar no botao para finalizar a compra
        Então devera ser exibido um agradecimento pelo pedido