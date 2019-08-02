*** Settings ***
Resource  ../Resources/utils.robot
Resource  ../Resources/failLoginBase.robot
Resource  ../Resources/loginPageBase.robot
Resource  ../Resources/successLoginBase.robot
Library   SeleniumLibrary
Library   DebugLibrary
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
check login page test
    [Tags]  checkList
    loginPageBase.check loginpage test
login succes test
    [Tags]  successTest
    successLoginBase.success loginpage test
login fail test
    [Tags]  failTest
    failLoginBase.fail loginpage test
