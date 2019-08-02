*** Settings ***
Resource  ../utils.robot
Library  SeleniumLibrary


*** Keywords ***
go to loginPage
    go to  ${MAIN_URL}${LOGIN_URL}
username input
    Input Text  ${USERNAME_INPUT}  test0
password input
    Input Text  ${PASSWORD_INPUT}  test0
click login button
    Click Button  ${LOGIN_BUTTON}
check fail message
     Element Text Should Be  ${STATUS_MESSAGE}  **Failed Login**