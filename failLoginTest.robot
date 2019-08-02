*** Settings ***
Resource  ../Resources/utils.robot
Resource  ../Resources/failLoginBase.robot
Library   SeleniumLibrary
Library   DebugLibrary
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
login page test
    failLoginBase.fail loginpage test