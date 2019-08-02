*** Settings ***
Resource  main/failLogin.robot


*** Keywords ***
fail loginpage test
    failLogin.go to loginPage
    failLogin.username input
    failLogin.password input
    failLogin.click login button
    failLogin.check fail message