*** Settings ***
Resource  ../Resources/Pages/vinted_searche_page.robot
Resource  ../Resources/Pages/vinted_home_Page.robot
Resource  ../Resources/Pages/BasePage.robot
Resource  ../Resources/Pages/Cookies.robot

*** Test Cases ***
# Go to url vinted
# Click on Login button
#
User Create
    [Tags]  Smoke
    Go to url_vinted
    Reject Vinted_Cookie
    Click on the button s'inscrire/Se connecter
    Click on Email
    Enter nom de utilisatuer 
    Enter username 
    Enter password
    Click checkbox 
    Click Button Button continuer