*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for demoopencart.
Resource      ../Resource/Base/CommonFunctionality.resource

Library     DataDriver      file=../test_data/demoopencart.xlsx      sheet_name=Login

Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template   Valid Reg Template

*** Test Cases ***
Valid Reg Template

*** Keywords ***
Valid Reg Template
    [Arguments]     ${firatname}        ${lastname}     ${email}    ${phone-no}     ${password}     ${re-enterpwd}
    Click Element    class=caret
    Click Element    xpath=//*[@id="top-links"]/ul/li[2]/ul/li[1]
    Input Text    id=input-firstname    ${firatname}
    Input Text    id=input-lastname    ${lastname}
    Input Text    id=input-email    ${email}
    Input Text    id=input-telephone    ${phone-no}
    Input Password    id=input-password    ${password}
    Input Password    id=input-confirm     ${re-enterpwd}
    Click Element    xpath=//*[@id="content"]/form/div/div/input[1]
    #Click Button    class=btn btn-primary
    #Click Button    xpath=//[@type="submit"]
    Click Button    xpath=//*[@id="content"]/form/div/div/input[2]

    [Teardown]  close Window








