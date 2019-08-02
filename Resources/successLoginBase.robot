*** Settings ***
Resource  main/successLogin.robot


*** Keywords ***
success loginpage test
    successlogin.go to loginPage
    successLogin.username input
    successLogin.password input
    successLogin.click login button
    successLogin.check success message