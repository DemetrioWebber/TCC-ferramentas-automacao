from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina inicial da Uol Esportes')
def step_impl(context):
    context.browser.get("https://www.uol.com.br/esporte/")


@when(u'clicar no menu jogos do dia')
def step_impl(context):
    context.browser.find_element(By.CSS_SELECTOR, '.link-games-day').click()


@then(u'deverao ser exibidos os jogos do dia')
def step_impl(context):
    jogos = context.browser.find_element(By.CSS_SELECTOR, '.match-center-timeline')
    if jogos.is_displayed():
        print("Passou no teste")
    else:
        print("Falhou no teste")