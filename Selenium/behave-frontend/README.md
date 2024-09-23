

## EXECUÇÃO DA AUTOMAÇÃO
## Instalar Dependências
```pip install -r requirements.txt```
* Para executar os comandos ```behave``` a seguir, navege para dentro da pasta _bdd_!
* Caso deseje gerência automática dos drivers, começe os comandos a seguir com: ```behave -D auto-manage-drivers```
## Executar todas as features:
```behave```

## Executar testes por tags:
### Vai rodar a tag1 e tag2
```behave --tags "@tag1 and @tag2" caminho_da_feature```

### Vai rodar ou a tag1 ou a tag2
```behave --tags "@tag1 or @tag2" caminho_da_feature```

### Vai rodar todas as tags menos a tag2
```behave --tags "not @tag2" caminho_da_feature```

## Para chamar o Job do Jenkins passando o sistema que deverá ter um usuário registrado, é possível utilizar a API da seguinte forma:
```curl <jenkins_url>/job/<nome_job>/buildWithParameters  --user user:key --data sistema=ngin --data verbosity=high```

Para isso, deve-se criar o job do Jenkins responsável por chamar a lógica do build através do Jenkinsfile do projeto, e ligando a opção de parâmetro string com o nome 'sistema'

