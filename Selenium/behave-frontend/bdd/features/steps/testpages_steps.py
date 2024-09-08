from behave import given, when, then
import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
import time

@given(u'que esteja na pagina home do site TestPages')
def step_impl(context):
    context.browser.get("https://testpages.eviltester.com/styled/key-click-display-test.html")


@when(u'clicar no botão Click Me')
def step_impl(context):
    context.browser.find_element(By.ID, 'button').click()


@then(u'deverá ser exibido a um log de clicks')
def step_impl(context):
    logs = context.browser.find_element(By.ID, 'event1')
    if logs.is_displayed():
        print("Passou no teste")
    else:
        print("Falhou no teste")