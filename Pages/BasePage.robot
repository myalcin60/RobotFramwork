*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Library    String


*** Variables ***
${Browser}            chrome
${url_vinted}         https://www.vinted.fr/
${url_Investing}      https://tr.investing.com/portfolio/?portfolioID/ZWQyaWM9Yj0%2Fbm1iMGMxNw%3D%3D
${url_Nioyatech}      https://a3m-qa-gm3.quaspareparts.com/login
${valid_email}        testiva@testiva.com
${valid_password}     VQAS_ldM9U1-CR2
${title}              Account Management
${invalid_email}      abac@gmail.com
${invalid_password}   azert

*** Keywords ***
Go to url_Nioyatech 
    Open Browser  ${url_Nioyatech}  ${Browser}
    Maximize Browser Window
   
Go to url_Investing   
    Open Browser  ${url_Investing}  ${Browser}
    Maximize Browser Window

Go to url_vinted 
    Open Browser   ${url_vinted}  ${Browser} 
    Maximize Browser Window
    