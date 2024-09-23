from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina de login')
def step_impl(context):
    context.browser.get("https://www.saucedemo.com/")
    
@given(u'que esteja na pagina de produtos')
def step_impl(context):
    pass

@given(u'que esteja na pagina de carrinho')
def step_impl(context):
    pass

@given(u'que tenha diversos produtos adicionados')
def step_impl(context):
    pass

@when(u'digitar o username "{username}" e senha "{senha}"')
def step_impl(context):
    pass

@when(u'clicar no botao de login')
def step_impl(context):
    pass

@when(u'clicar no icone do carrinho')
def step_impl(context):
    pass

@when(u'clicar para adicionar um produto ao carrinho')
def step_impl(context):
    pass    

@when(u'clicar no botao de checkout')
def step_impl(context):
    pass    

@when(u'colocar os dados do comprador')
def step_impl(context):
    pass   

@when(u'clicar no botao para finalizar a compra')
def step_impl(context):
    pass     

@then(u'devera ser exibido um agradecimento pelo pedido')
def step_impl(context):
    pass

@then(u'devera ver os produtos e o valor na pagina de resumo do pedido')
def step_impl(context):
    pass

@then(u'devera ser exibido o carrinho com o produto selecionado')
def step_impl(context):
    pass

@then(u'devera ser exibida a pagina de produtos da aplicação')
def step_impl(context):
    pass