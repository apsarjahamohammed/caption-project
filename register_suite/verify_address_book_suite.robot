*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for jiomart.
Resource      ../Resource/Base/CommonFunctionality.resource

Library     DataDriver      file=../test_data/demoopencart.xlsx      sheet_name=AddressBook

Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template   Address Book Template

*** Test Cases ***
Address Book Template

*** Keywords ***
Address Book Template
    [Arguments]     ${email}    ${password}     ${firstname}    ${lastname}     ${company}      ${add1}     ${add2}     ${city}     ${postcode}
    Click Element    class=caret

    #Click Element    class=class="dropdown-menu dropdown-menu-right"
    Click Element    xpath=//*[@id="top-links"]/ul/li[2]/ul/li[2]

    Input Text    id=input-email    ${email}
    Input Password    id=input-password     ${password}

    #Click Element    xpath=//button[@type="submit"]
    Click Button    xpath=//*[@id="content"]/div/div[2]/div/form/input
    Click Element    xpath=//*[@id="column-right"]/div/a[4]
    Click Element    xpath=//*[@id="content"]/div/div[2]

    Input Text    id=input-firstname    ${firstname}
    Input Text    id=input-lastname    ${lastname}
    Input Text    id=input-company    ${company}
    Input Text    id=input-address-1    ${add1}
    Input Text    id=input-address-2    ${add2}
    Input Text    id=input-city     ${city}
    Input Text    id=input-postcode    ${postcode}
    Click Element    xpath=//*[@id="input-country"]/option[107]
    Click Element    xpath=//*[@id="input-zone"]/option[4]
    Click Element    xpath=//*[@id="content"]/form/div/div[2]/input

    [Teardown]  close Window




























    
    #Click Button    xpath=//*[@id="column-right"]/div/a[4]




     [Teardown]  close Window