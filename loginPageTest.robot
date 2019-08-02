*** Settings ***
Resource  ../Resources/Utils.robot
Resource  ../Resources/loginPageBase.robot
Library   SeleniumLibrary
Library   DebugLibrary
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
login page test
    loginPageBase.check loginpage test