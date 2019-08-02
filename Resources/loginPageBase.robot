*** Settings ***
Resource  main/loginPage.robot

*** Keywords ***
check loginpage test
    loginpage.go to loginPage
    loginpage.wait until textbox is visible
    loginpage.check tab title
    loginpage.check page title
    loginpage.check page information message