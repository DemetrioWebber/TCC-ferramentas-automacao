Feature: Carrinho

    Background: Iniciar na página de login da Sauce Demo
      Given que esteja na página de login
      And que esteja logado com "standard_user"

    @cart-scenario
    Scenario: Adicionar produtos ao carrinho
      When adicionar o produto "Sauce Labs Backpack" ao carrinho
      And acessar o carrinho
      Then o carrinho deve conter 1 produto
      And o produto "Sauce Labs Backpack" deve estar adicionado ao carrinho