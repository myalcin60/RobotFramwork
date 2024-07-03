'''
1 https://www.vinted.fr/ adresine git
2 Vinted yazisinin gorundugnu dogrula
3 Enter In The Search    ${produit}
4 Browser kapat
'''

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Chrome()
def open_vinted_website():
    
    driver.get("https://www.vinted.fr/")
    driver.maximize_window()
    return driver

def verify_vinted_text_is_visible():
    vinted = driver.find_element(By.XPATH, "//img[@alt='Vinted logo']")
    assert vinted.is_displayed(), "Vinted text is not visible"

def close_browser_method():
    if driver:
        driver.quit()

def close_cookie() :
    wait =WebDriverWait(driver, 10)
    cookie=  wait.until(EC.visibility_of_element_located((By.ID, "onetrust-reject-all-handler")))
    cookie=driver.find_element(By.ID, "onetrust-reject-all-handler")
    cookie.click() 
    

def  enter_in_the_search(produit) :
    wait =WebDriverWait(driver, 10)
    search=  wait.until(EC.visibility_of_element_located((By.ID, "search_text")))
    search=driver.find_element(By.ID, "search_text")
    search.send_keys(produit)
    time.sleep(5)
    search.send_keys(Keys.ENTER)

  