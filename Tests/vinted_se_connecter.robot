*** Settings ***
Resource  ../Pages/vinted_searche_page.robot
Resource  ../Pages/vinted_home_Page.robot
Resource  ../Pages/BasePage.robot
Resource  ../Pages/Cookies.robot

*** Test Cases ***
# Go to url vinted
# Click on Login button
#
User Login
    [Tags]   Smoke   
    Go to url_vinted
    Reject Vinted_Cookie
    Click on the button s'inscrire/Se connecter
    Clickon Se_connecter
    Click on Email
    Enter email ou nom de utilisatuer 
    Enter password 
    Click Button Button continuer
    Move the slider