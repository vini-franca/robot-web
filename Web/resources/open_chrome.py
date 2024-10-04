from webdriver_manager.chrome import ChromeDriverManager
import os

def setup_chromedriver():
    # Instala o ChromeDriver e retorna o caminho para ele
    chromedriver_path = ChromeDriverManager().install()
    os.environ["webdriver.chrome.driver"] = chromedriver_path
    return chromedriver_path
