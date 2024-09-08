
* Settings *
Documentation   Cenário de Ações no Carrinho

Resource        ../resources/actions/compra/cart.robot
Resource        ../resources/support/base.robot

Test Setup      Start Application
Test Teardown   Take Screenshot


* Test Cases *
Alterar Quantidade de Produtos no Carrinho
    Adicionar Produto no Carrinho                  dress
    Alterar Quantidade do Produto Para             2
    Validar Que a Quantidade do Carrinho é         2


Remover Produto do Carrinho
    Adicionar Produto no Carrinho                  dress
    Clicar Em Remover Produto
    Validar Que o Carrinho Está Vazio


Continuar Comprando no Site
    Adicionar Produto no Carrinho                  dress
    Clicar em Continuar Comprando
    Adicionar Produto no Carrinho                  blouse
    Validar Que a Quantidade do Carrinho é         2