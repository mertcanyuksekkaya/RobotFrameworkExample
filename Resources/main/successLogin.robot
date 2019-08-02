*** Settings ***
Resource  ../utils.robot
Library  SeleniumLibrary

*** Keywords ***
go to loginPage
    go to  ${MAIN_URL}${LOGIN_URL}
username input
    Input Text  ${USERNAME_INPUT}  testuser
password input
    Input Text  ${PASSWORD_INPUT}  testpass
click login button
    sleep  5
    Click Button  ${LOGIN_BUTTON}
check success message
     Element Text Should Be  ${STATUS_MESSAGE}  **Successful Login**
     sleep  5