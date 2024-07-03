*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/Pages/vinted_home_Page.robot
Resource   ../Resources/Pages/BasePage.robot

*** Comments ***
User go to vinted home Pages
User chooses the English language
User close the browser 

*** Test Cases ***
change the language
   Go to url_vinted
   Choose language
   

