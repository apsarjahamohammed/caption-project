*** Settings ***
Documentation   This file handles browsers configuration, resuable scripts

Library     SeleniumLibrary

*** Variables ***
#global variable
${BROWSER_NAME}     chrome
${URL}      https://opensource-demo.orangehrmlive.com/


*** Keywords ***
Launch Browser And Navigate To URL
    IF  '${BROWSER_NAME}'=='edge'
        Set Local Variable    ${driver_name}     msedgedriver.exe
    ELSE IF  '${BROWSER_NAME}'== 'ff'
        Set Local Variable    ${driver_name}     geckodriver.exe
    ELSE
        Set Local Variable    ${driver_name}     chromedriver.exe
    END

    Open Browser    browser=${BROWSER_NAME}     executable_path=${EXECDIR}${/}driver${/}${driver_name}
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}screenshots
    Go To    ${URL}



