* Settings *
Documentation   Cenários de teste para o Swag Labs

Resource        ../resources/actions/produtos/search.robot
Resource        ../resources/support/base.robot

Test Setup      Start Application
Test Teardown   Take Screenshot


* Test Cases *
Deve Logar na Aplicação
    Procurar Por    dress
    Produtos Deverão Estar Visíveis


Deve Adicionar Produtos ao Carrinho
    Procurar Por    este_produto_nao_existe
    Mensagem Nenhum Produto Encontrado Deve Estar Visível


Deve Fazer Checkout de Produtos
    Acessar Categoria no Menu Women    T-shirts
    Produtos Deverão Estar Visíveis


#language: pt

@feature.swag_labs
Funcionalidade: Flow Basico Swag Labs

    @scenario.login
    Cenário: Logar na Aplicação

        Dado que esteja na pagina de login do Swag Labs
        Quando digitar o username "standard_user" e senha "secret_sauce"
        E clicar no botao de login
        Então devera ser exibida a pagina de produtos da aplicação

    Cenário: Adicionar Produtos ao Carrinho

        Dado que esteja na pagina de produtos do Swag Labs
        Quando clicar para adicionar um produto ao carrinho
        E clicar no icone do carrinho
        Então devera ser exibido o carrinho com o produto selecionado

    Cenário: Checkout de Produtos

        Dado que esteja na pagina de carrinho
        E que tenha diversos produtos adicionados
        Quando clicar no botao de checkout
        E colocar os dados do comprador
        Então deverá ver os produtos e o valor na pagina de resumo do pedido
        Quando clicar no botao para finalizar a compra
        Então devera ser exibido um agradecimento pelo pedido