*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${MAIN_URL}   http://thedemosite.co.uk
${LOGIN_URL}  /login.php
${USERNAME_INPUT}  xpath=//input[@name='username']
${PASSWORD_INPUT}  xpath=//input[@name='password']
${LOGIN_BUTTON}  xpath=//input[@value='Test Login']
${STATUS_MESSAGE}  xpath=//center/b

*** Keywords ***
start session
    open browser  about:blank  chrome
    Maximize Browser Window
close session
    close browser




