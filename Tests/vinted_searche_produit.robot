*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Pages/vinted_searche_page.robot
Resource  ../Resources/Pages/BasePage.robot


*** Comments ***
User go to url_vinted   
User write ay8embijoux at the searche bar and click enter  
User verifier there are 11 results

*** Test Cases ***
vinted search bar 
   [Tags]   Smoke
   Go to url_vinted
   Write produit at the searche bar and click enter
   Verifier there are 11 results
  
    