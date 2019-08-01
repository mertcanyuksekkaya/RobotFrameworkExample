*** Settings ***
Documentation   Robotframework test örneği
Library  SeleniumLibrary

Test Setup  create session
Test Teardown  close session

*** Variables ***
${SERVER}       thedemosite.co.uk/
${PARAM}        login.php
${TEST_URL}     http://${SERVER}${PARAM}
${BROWSER}      Chrome
${TAB_TITLE}
${PAGE_TITLE}
${STATUS_MESSAGE}
${INFORMATION_MESSAGE}

*** Keywords ***
create session
    open browser  about:blank  chrome
    go to  ${TEST_URL}
close session
    close browser

*** Test Cases ***
get title
    ${TAB_TITLE}=  Get Title
    log to console  ${TAB_TITLE}
    Title Should Be  Login example page to test the PHP MySQL online system  sekme başlığı istenilenden farklı!

get page title
   ${PAGE_TITLE}=  Get Text  xpath=//p/big/strong[text()='4. Login']
   log to console  ${PAGE_TITLE}
   Element Text Should Be  xpath=//p/big/strong[text()='4. Login']  4. Login  sayfa başlığı istenilenden farklı!

get status message
    ${STATUS_MESSAGE}=  Get Text  //b[text()='**No login attempted**']
   log to console  ${STATUS_MESSAGE}
   Element Text Should Be  xpath=//b[text()='**No login attempted**']  **No login attempted**  statü message istenilenden farklı!

get page information message
    ${INFORMATION_MESSAGE}=  Get Text  //blockquote/p
    log to console  ${INFORMATION_MESSAGE}
    Element Should contain  xpath=//blockquote/p  Enter your login details you added on the previous page and test the login.



