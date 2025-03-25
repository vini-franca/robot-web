from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service
from selenium import webdriver

def setup_chromedriver():
    # Instala o ChromeDriver e retorna o objeto de serviço
    service = Service(ChromeDriverManager().install())
    return service
