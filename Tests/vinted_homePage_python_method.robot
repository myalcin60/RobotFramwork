*** Settings ***
Library   SeleniumLibrary
Library   ../Resources/vinted_keywords.py



*** Variables ***
${produit}  collier femme



    

*** Test Cases ***
Test Vinted Home Page with Pyton Method
   Open Vinted Website
   Close Cookie
   Verify Vinted Text Is Visible
   Enter In The Search    ${produit}

  
   
   


 