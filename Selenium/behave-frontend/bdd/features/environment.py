import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
import time


def before_all(context):
    print("-----------------Iniciando teste--------------")
    #instancia do navegador:
    context.browser = webdriver.Chrome()

def before_scenario(context, scenario):
    context.browser.get("https://www.saucedemo.com/")
    context.browser.delete_all_cookies()
    context.browser.implicitly_wait(5)

def after_step(context, step):
    pass

def after_all(context):
    print("----------------Encerrando teste---------------")
    context.browser.quit()