from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina home da Magalu')
def step_impl(context):
    context.browser.get("https://www.magazineluiza.com.br/")


@when(u'pesquisar por um produto "{produto}"')
def step_impl(context, produto):
    context.browser.find_element(By.ID, 'input-search').send_keys(produto)
    context.browser.find_element(By.CSS_SELECTOR, "svg[data-testid='search-submit']").click()


@then(u'deverá ser exibido a página de resultados para "{produto}"')
def step_impl(context, produto):
    context.browser.implicitly_wait(10) # Setando o Wait implicito aqui só pra ficar visivel (Ideal é colocar no environment.py)
    imagem_produto = context.browser.find_element(By.CSS_SELECTOR, "img[data-testid='image']")
    if imagem_produto.is_displayed():
        print("Passou no teste")
    else:
        print("Falhou no teste")
