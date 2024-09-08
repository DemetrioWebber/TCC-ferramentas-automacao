# Boas práticas, dicas e lembretes para escrita de features em Gherkin

Se você trabalha na Compass.uol, acesse o link da apresentação sobre Gherkin!
[https://compasso.sharepoint.com/:p:/t/time.istd.qa/EZLzkyZ6Fo1Ar53sDTRkPHoBBS1mPCdEwwGqcn1TWIeBaQ?e=1evWou]

*Lembre-se:*
    - O objetivo por trás da escrita do BDD não é somente o desenvolvimento de automação!
    - As features nos ajudam a entender melhor os requisitos e o passo a passo de um comportamento na aplicação.
    - Elas devem ser escritas pensando que outros papéis (PO, SM, DEV, outros QAs e até o pessoal do negócio) podem as utilizar para se aprofundar no entedimento de funcionalidades.
    - O ideal é que elas sejam escritas junto ao time de desenvolvimento, principalmente o PO que deve trazer o viés de entendimento aprofundado dos requisitos.

# Primordial!

* Dado // Given: Pré-requisitos​
    - Dado que esteja/ Dado que tenha/ Dado que busque/ Dado que possua/

* Quando // When: Ações sendo executadas​
    - Quando acessar/ Quando buscar/ Quando requisitar/ Quando preencher/ Quando <verbo>

* Então // Validações: Validações das ações executadas
    - Então deverá ser mostrado.../ Então deverá ser visivel.../ Então deverá acessar a página.../ Então deverá ser exibido...

# *Boas práticas:*

- Sempre que possível utilize _Contexto_ ou _Background_ para indicar quais são os pré-requisitos que se aplicam a todos os cenários descritos em uma feature. Em situações onde a mesma funcionalidade tem diferentes contextos, crie outros arquivos, por exemplo: `produtos_logado.feature` e `produtos_deslogado.feature`

- Sempre que possível utilize Esquema do Cenário para criar diferentes casos de teste mudando somente os parâmetro enviados, isso diminui bastante o tamanho dos arquivos `.feature`

    