* Settings *
Documentation   Cenários de Busca por Produtos

Resource        ../resources/actions/produtos/search.robot
Resource        ../resources/support/base.robot

Test Setup      Start Application
Test Teardown   Take Screenshot


* Test Cases *
Deve Buscar por Produtos
    Procurar Por    dress
    Produtos Deverão Estar Visíveis


Deve Trazer Mensagem de Produtos não Encontrados
    Procurar Por    este_produto_nao_existe
    Mensagem Nenhum Produto Encontrado Deve Estar Visível


Deve Exibir Produtos na Categoria Camisetas
    Acessar Categoria no Menu Women    T-shirts
    Produtos Deverão Estar Visíveis


Deve Exibir Produtos na Categoria Vestidos de Verão
    Acessar Categoria no Menu Women    Summer Dresses
    Produtos Deverão Estar Visíveis