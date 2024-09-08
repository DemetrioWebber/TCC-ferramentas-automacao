from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina de login da SauceDemo')
def step_impl(context):
    context.browser.get("https://www.saucedemo.com/")


@when(u'colocar o usuário "{user}" e senha "{password}"')
def step_impl(context, user, password):
    context.browser.find_element(By.ID, 'user-name').send_keys(user)
    context.browser.find_element(By.ID, 'password').send_keys(password)

@when(u'clicar no botao de login')
def step_impl(context):
    context.browser.find_element(By.ID, 'login-button').click()

@then(u'deve ser realizado o login com sucesso')
def step_impl(context):
    inventario = context.browser.find_element(By.ID, 'inventory_container')
    if inventario.is_displayed():
        print("Passou no teste")
    else:
        print("Falhou no teste")