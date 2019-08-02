*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${MAIN_URL}   http://thedemosite.co.uk
${LOGIN_URL}  /login.php
${USERNAME_INPUT}  xpath=//input[@name='username']
${PASSWORD_INPUT}  xpath=//input[@name='password']
${LOGIN_BUTTON}  xpath=//input[@value='Test Login']
${TAB_TITLE}  Login example page to test the PHP MySQL online system
${PAGE_TITLE}  xpath=//p/big/strong
${STATUS_MESSAGE}  xpath=//center/b
${PAGE_INFORMATION_MESSAGE}  xpath=//blockquote/p
*** Keywords ***

go to loginPage
    go to  ${MAIN_URL}${LOGIN_URL}
wait until textbox is visible
    Wait Until Element Is Visible  ${USERNAME_INPUT}
    Wait Until Element Is Visible  ${PASSWORD_INPUT}
check tab title
    Title Should Be  ${TAB_TITLE}  Sekme başlığı doğru değil!
check page title
   Element Text Should Be  ${PAGE_TITLE}  4. Login  sayfa başlığı doğru değil!
check page information message
   Element Should Contain  ${PAGE_INFORMATION_MESSAGE}  Enter your login details you added on the previous page


