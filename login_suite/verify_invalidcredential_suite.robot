*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for jiomart.
Resource      ../Resource/Base/CommonFunctionality.resource


Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     mdapsarjaha@gmail.com       ${EMPTY}        //*[@id="account-login"]/div[1] #Warning: No match for E-Mail Address and/or Password.
TC2     ${EMPTY}        apsar123        #Warning: No match for E-Mail Address and/or Password.

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${email}    ${password}     ${expected-error}
   Click Element    class=caret
    Click Element    xpath=//*[@id="top-links"]/ul/li[2]/ul/li[2]

    Input Text    id=input-email    ${email}
    Input Password    id=input-password    ${password}
    Click Button    xpath=//[@type="submit"]
    #Click Element   xpath=//*[@id="account-login"]/div[1] //*[@id="account-login"]/div[1]

    #Validate Error Message    ${expected_error}


    [Teardown]  close Window


