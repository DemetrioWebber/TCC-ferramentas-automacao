from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina de esportes da GauchaZH')
def step_impl(context):
    context.browser.get("https://gauchazh.clicrbs.com.br/esportes/ultimas-noticias/")


@when(u'clicar na imagem de uma notícia')
def step_impl(context):
    context.browser.find_element(By.CSS_SELECTOR, '.btn.module-ads__accept').click()
    context.browser.find_element(By.CSS_SELECTOR, '.image-wrapper__image').click()


@then(u'devera ser exibido a pagina da noticia na gaucha')
def step_impl(context):
    context.browser.implicitly_wait(10) # Setando o Wait implicito aqui só pra ficar visivel (Ideal é colocar no environment.py)
    imagem_noticia = context.browser.find_element(By.CSS_SELECTOR, '.figure-img')
    if imagem_noticia.is_displayed():
        print("Passou no teste")
    else:
        print("Falhou no teste")