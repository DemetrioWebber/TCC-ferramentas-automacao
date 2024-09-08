
* Tudo que for específico de uma funcionalidade você deve armazenar nos steps com o mesmo nome da `.feature`;

* Todos os steps para serem reaproveitados em diferentes features devem ser armazenados na pasta `step_definitions/common`, você pode criar novos arquivos ou continuar utilizando a `global.step.js`. A pasta common não pode sair de dentro da pasta step_definitions;

* No arquivo `global.step.js` você pode adicionar _hooks_ como o Before() e o After() para serem executados por todas as features;

* Em todos os arquivos que você for interagir com comandos Cypress, adicione `/// <reference types="cypress" />` ao inicio do documento, isso permite que você acesse documentos e explicações de forma mais rápida e direto do código;

* Você pode usar extensões de IDE para gerar automaticamente os `.step.js` através dos arquivos features, uma das extensões que faz isso é a _Cuke Step Definition Generator_, mas ela se limita a gerar somente steps escritos com as marcações (Feature, Scenario, Given, When, Then) em inglês!