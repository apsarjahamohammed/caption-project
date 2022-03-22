*** Settings ***
Documentation   This file handles all operation in the login page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${FIRSTNAME_LOCATOR}     id=input-firstname
${LASTNAME_LOCATOR}     id=input-lastname


*** Keywords ***
Enter firstname
    [Arguments]     ${firstname}
    Input Text    ${FIRSTNAME_LOCATOR}   ${firstname}

Enter lastname
    [Arguments]     ${lastname}
    Input Password    ${LASTNAME_LOCATOR}    ${lastname}



