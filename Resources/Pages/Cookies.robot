*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${Vinted_Cookie}    id=onetrust-reject-all-handler



*** Keywords ***
Reject Vinted_Cookie

  Wait Until Page Contains Element    ${Vinted_Cookie}
  Click Element    ${Vinted_Cookie}

  