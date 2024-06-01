*** Settings ***
Library  SeleniumLibrary

*** Comments ***
User go to url_vinted   
User write ay8embijoux at the searche bar and click enter  
User verifier there are 11 results

*** Variables ***
${search_bar}    id= search_text
${ayem}          ay8embijoux
${libellue}      xpath=//*[@id="content"]/div/div/section/div[15]/div/div[1]/div/div/div/div[2]/a
${price_locate}   xpath=//*[@id="sidebar"]/div[1]/div[1]/div[1]/div[1]/div[1]/h1
${KEY_ENTER}      \\13
${price}          ${EMPTY}

${parent_div_produit}   xpath= //div[@class='feed-grid']
${child_div_produit}         xpath= //div[@class='feed-grid']//div[@data-testid='grid-item']

*** Keywords ***
Input text in search_bar
  Input Text    ${search_bar}    ${ayem}
  Press Key    ${search_bar}   ${KEY_ENTER}

  
Click on first article
    Wait Until Page Contains Element    ${libellue}
    Click Element    ${libellue}
Verify prix
   Wait Until Page Contains Element    ${price_locate} 
   ${price}=  Get Text                  ${price_locate} 
   Should Be Equal As Strings          ${price}     25,00 €

Write ay8embijoux at the searche bar and click enter
  Input text in search_bar 

Verifier there are 11 results
   Wait Until Element Is Visible    ${parent_div_produit}  10s
   ${child_divs}=    Get WebElements    ${child_div_produit}
   ${child_div_count}=    Get Length    ${child_divs}
   Should Be Equal As Numbers    ${child_div_count}    11