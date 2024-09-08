# Boas práticas para mapeamento de elementos:
  
Existem diferentes formas de mapear os elementos dependendo de como estes foram criados no desenvolvimento,
mas algumas práticas ainda podem ser seguidas para garantir a organização e manutenção do código.
  
1. Nomenclatura: 
    Os elementos devem ser mapeados em caixa alta indicando seu tipo e nome.
    - Exemplo: *INP_NOME* = Armazena um input com o nome do usuário.
    - Exemplo: *LBL_NOME* = Armazena uma label com o nome do usuário.
    - Exemplo: *IMG_USER* = Armazena uma imagem de usuário

2. Prioridade de seletores:
    Primeiramente você pode utilizar a ferramenta nativa de seleção do Cypress pela tela gráfica `cypress open`, ela trará um dos melhores seletores do elemento.
    Se você precisar definir manualmente os seletores, de prioridade nessa ordem:
    1. Seletores customizados: [data-test='login-button']
    2. ID (se único)         : #search_query_top
    3. Name (se único)       : [name='search_query']
    4. Class                 : .search_query
    5. Placeholder (se único): [placeholder='Username']
    ## Somente em últimos casos utilize CSS, Xpath ou links para indicar elementos da página.

3. O dev é nosso melhor amigo!
    Quando temos o time de desenvolvimento ao nosso lado, podemos combinar a implementação de seletores customizados, como os exemplos de login em `sauce.elements`.

    Isso permite que criemos funções que nos retornam esses elementos:
    '''
    export function element(selector){
        return cy.get(`[data-test=${selector}]`)
    }
    '''
    Observe a utilização desta função no método `logar_sauce_demo` na `sauce.page`

    ## Desta forma não precisamos criar constantes para armazenar nosso elementos.
    ## Mas perdemos a possibilidade de alterarmos sempre o elemento em um único local na automação caso este seja alterado na aplicação.

