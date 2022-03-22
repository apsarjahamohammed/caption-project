*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for demoopencart.
Resource      ../Resource/Base/CommonFunctionality.resource


Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     mdapsarjaha@gmail.com       ${EMPTY}       Password is required.
TC2     ${EMPTY}        apsar123        An email address required.
TC3     apsarjaha@gmail.com     abcdefgh    Invalid password

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${email}    ${password}     ${expected-error}
   Click Element    class=caret
    Click Element    xpath=//*[@id="top-links"]/ul/li[2]/ul/li[2]

    Input Text    id=input-email    ${email}
    Input Password    id=input-password    ${password}
    Click Button    xpath=//[@type="submit"]
    #Click Element   xpath=//*[@id="account-login"]/div[1] //*[@id="account-login"]/div[1]

    Page Should Contain    ${expected_error}


    [Teardown]  close Window


