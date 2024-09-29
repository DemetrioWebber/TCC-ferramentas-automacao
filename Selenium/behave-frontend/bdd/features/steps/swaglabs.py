from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina de login')
def step_impl(context):
    assert context.browser.find_element(By.XPATH, "//*[contains(text(), '{}')]".format("Accepted usernames are:"))
    assert str(context.browser.current_url) == "https://www.saucedemo.com/"
    
@given(u'que esteja na pagina de produtos')
def step_impl(context):
    context.browser.find_element(By.ID, "user-name").send_keys("standard_user")
    context.browser.find_element(By.ID, "password").send_keys("secret_sauce")
    context.browser.find_element(By.ID, "login-button").click()
    assert context.browser.find_element(By.XPATH, "//*[contains(text(), '{}')]".format("Products"))
    assert str(context.browser.current_url) == "https://www.saucedemo.com/inventory.html"

@given(u'que esteja na pagina de carrinho com diversos produtos')
def step_impl(context):
    context.browser.find_element(By.CLASS_NAME, "shopping_cart_link").click()
    assert context.browser.find_element(By.ID, "remove-sauce-labs-backpack")
    assert context.browser.find_element(By.ID, "remove-sauce-labs-bike-light")
    assert context.browser.find_element(By.ID, "remove-sauce-labs-bolt-t-shirt")
    assert context.browser.find_element(By.XPATH, "//*[contains(text(), '{}')]".format("Your Cart"))
    assert str(context.browser.current_url) == "https://www.saucedemo.com/cart.html"

@given(u'que tenha diversos produtos adicionados ao carrinho')
def step_impl(context):
    context.browser.find_element(By.ID, "user-name").send_keys("standard_user")
    context.browser.find_element(By.ID, "password").send_keys("secret_sauce")
    context.browser.find_element(By.ID, "login-button").click()

@when(u'digitar o username "{username}" e senha "{senha}"')
def step_impl(context, username, senha):
    context.browser.find_element(By.ID, "user-name").send_keys(username)
    context.browser.find_element(By.ID, "password").send_keys(senha)

@when(u'clicar no botao de login')
def step_impl(context):
    context.browser.find_element(By.ID, "login-button").click()

@when(u'clicar no icone do carrinho')
def step_impl(context):
    context.browser.find_element(By.CLASS_NAME, "shopping_cart_link").click()

@when(u'adicionar produtos ao carrinho')
def adicionar_produtos(context):
    context.browser.find_element(By.ID, "add-to-cart-sauce-labs-backpack").click()
    context.browser.find_element(By.ID, "add-to-cart-sauce-labs-bike-light").click()
    context.browser.find_element(By.ID, "add-to-cart-sauce-labs-bolt-t-shirt").click()  

@when(u'clicar no botao de checkout')
def step_impl(context):
    context.browser.find_element(By.ID, "checkout").click()

@when(u'colocar os dados do comprador')
def step_impl(context):
    context.browser.find_element(By.ID, "first-name").send_keys("Demetrio")
    context.browser.find_element(By.ID, "last-name").send_keys("Atitus")
    context.browser.find_element(By.ID, "postal-code").send_keys("95300000")
    context.browser.find_element(By.ID, "continue").click()

@when(u'clicar no botao para finalizar a compra')
def step_impl(context):
    context.browser.find_element(By.ID, "finish").click()

@then(u'devera ser exibido um agradecimento pelo pedido')
def step_impl(context):
    assert context.browser.find_element(By.XPATH, "//*[contains(text(), '{}')]".format("Thank you for your order!"))
    assert str(context.browser.current_url) == "https://www.saucedemo.com/checkout-complete.html"

@then(u'devera ver os produtos e o valor na pagina de resumo do pedido')
def step_impl(context):
    assert len(context.browser.find_elements(By.CLASS_NAME, "cart_item")) > 1
    assert context.browser.find_element(By.CLASS_NAME, "summary_total_label").text == "Total: $60.45"

@then(u'devera ser exibido o carrinho com os produtos selecionados')
def step_impl(context):
    assert len(context.browser.find_elements(By.CLASS_NAME, "cart_item")) > 1

@then(u'devera ser exibida a pagina de produtos da aplicação')
def step_impl(context):
    assert context.browser.find_element(By.XPATH, "//*[contains(text(), '{}')]".format("Products"))
    assert str(context.browser.current_url) == "https://www.saucedemo.com/inventory.html"