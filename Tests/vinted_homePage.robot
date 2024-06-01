*** Settings ***
Library   SeleniumLibrary
Library   ../Resources/vinted_keywords.py

*** Variables ***
${produit}  collier femme

*** Test Cases ***
Test Vinted Home Page
  ${driver}=   Open Vinted Website
  Verify Vinted Text Is Visible    
  Close Cookie 
  Enter In The Search     ${produit}  
  Close Browser Method    
   


 