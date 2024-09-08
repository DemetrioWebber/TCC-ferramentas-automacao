import selenium.webdriver as webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from features.page_objects.Ml.MercadoLivre_index import *
from features.helper.page_helper import *
from features.fixtures.factory import *
from webdriver_manager.chrome import ChromeDriverManager
import time


def before_all(context):
    print("-----------------Iniciando teste--------------")
    #instancia do navegador:
    context.browser = webdriver.Chrome()
    

def after_step(context, step):
    pass

def after_all(context):
    print("----------------Encerrando teste---------------")
    context.browser.quit()