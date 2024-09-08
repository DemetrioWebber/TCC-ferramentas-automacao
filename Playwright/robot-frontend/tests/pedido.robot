* Settings *
Documentation   Cenário de Conclusão de Pedidos

Resource        ../resources/actions/autenticacao/login.robot
Resource        ../resources/actions/compra/order.robot
Resource        ../resources/actions/compra/cart.robot
Resource        ../resources/support/base.robot
Resource        ../resources/support/common_keywords.robot

Suite Setup     Carregar Dados de Usuários Estáticos

Test Setup      Start Application
Test Teardown   Take Screenshot 


* Test Cases *
Validar Identificação Necessária para Finalizar Pedido
    Adicionar Produto no Carrinho         dress
    Clicar em Finalizar Pedido
    Validar Se Pediu Identificação


Validar Endereço de Entrega
    Fazer Cadastro de Usuário Aleatório
    Adicionar Produto no Carrinho         dress
    Clicar em Finalizar Pedido
    Validar se Endereço está Correto


Realizar Pagamento por Transferência Bancária
    Executar Login com Usuário Estático Válido
    Adicionar Produto no Carrinho         dress
    Clicar em Finalizar Pedido
    Ir para Seleção do Método de Entrega
    Escolher Método de Entrega
    Ir para Seleção do Método de Pagamento
    Escolher Método de Pagamento          bank-wire
    Finalizar Pedido


Realizar Pagamento por Cheque
    Executar Login com Usuário Estático Válido
    Adicionar Produto no Carrinho         dress
    Clicar em Finalizar Pedido
    Ir para Seleção do Método de Entrega
    Escolher Método de Entrega
    Ir para Seleção do Método de Pagamento
    Escolher Método de Pagamento          check
    Finalizar Pedido


Finalizar Compra com Mais de Um Produto
    Executar Login com Usuário Estático Válido
    Adicionar Produto no Carrinho         dress
    Adicionar Produto no Carrinho         blouse
    Clicar em Finalizar Pedido
    Ir para Seleção do Método de Entrega
    Escolher Método de Entrega
    Ir para Seleção do Método de Pagamento
    Escolher Método de Pagamento          check
    Finalizar Pedido