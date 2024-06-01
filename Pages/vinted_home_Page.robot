*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${nom}           yalcin
${email}         yalcinhoca0@gmail.com
${password}      Yalcinhoca0  
${S'inscrire}    xpath=//a[@role='button']
${KEY_ENTER}      \\13
#iframe icinde
${nomDeUtiliseteur}  id=login
${Contact_email}  xpath=(//span[@role='button'])[1]
${username}       id=email
${motDePass}      id=password
${checkbox}       xpath=//label[@for='agreeRules']
${Btn_continuer}   xpath=//button[@type='submit']

${Se_connecter}   xpath=(//span[@role='button'])[2]
${email_se_connecter}   id=username
${slider}               xpath=//i[@class='sliderIcon']


        


*** Keywords ***
Click on the button s'inscrire/Se connecter
   Click Element    ${S'inscrire}
Click on Email 
#   Select Frame    index=1
   Click Element    ${Contact_email}
Enter nom de utilisatuer
  Input Text    ${nomDeUtiliseteur}    ${nom}
Enter username 
  Click Element    ${username} 
  Input Text    ${username}    ${email}
Enter password
  Click Element    ${motDePass}
  Input Password    ${motDePass}    ${password}
Click checkbox 
   Click Element    ${checkbox}
Click Button Button continuer
  Click Element    ${Btn_continuer} 
Clickon Se_connecter
  Click Element    ${Se_connecter}
Enter email ou nom de utilisatuer
 # Click Element    ${email_se_connecter}
  Input Text    ${email_se_connecter}    ${email}
Move the slider
  Wait Until Element Is Visible    xpath=//div[@style='height:100vh;width:100%;position:fixed;top:0;left:0;z-index:2147483647;background-color:#ffffff;']//iframe
  Select Frame    xpath=//div[@style='height:100vh;width:100%;position:fixed;top:0;left:0;z-index:2147483647;background-color:#ffffff;']//iframe
  Wait Until Element Is Visible    ${slider}  timeout=10s
  Drag And Drop By Offset   ${slider}   202  0  

