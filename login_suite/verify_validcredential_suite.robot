*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for demoopencart.
Resource      ../Resource/Base/CommonFunctionality.resource
Resource        ../Resource/Page/LoginPage.resource
Test Setup      Launch Browser
Test Teardown      Close Browser

*** Test Cases ***
valid reg
    Click Element    class=caret

    Click Element    xpath=//*[@id="top-links"]/ul/li[2]/ul/li[1]
    #Input Text    id=input-firstname    apsar jaha
    Enter firstname     apsar jaha

    #Input Text    id=input-lastname    mohammed
    Enter lastname      mohammed

    Input Text    id=input-email    mdapsarjaha@gmail.com

    Input Text    id=input-telephone    9030788644

    Input Password    id=input-password    apsar123

    Input Password    id=input-confirm     apsar123
    Click Element    xpath=//*[@id="content"]/form/div/div/input[1]
    #Click Button    class=btn btn-primary
    #Click Button    xpath=//[@type="submit"]
    Click Button    xpath=//*[@id="content"]/form/div/div/input[2]

    [Teardown]  close Window

