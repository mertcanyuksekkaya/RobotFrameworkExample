*** Settings ***
Resource  ../Resources/Utils.robot
Resource  ../Resources/successLoginBase.robot
Library   SeleniumLibrary
Library   DebugLibrary
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
# successful login mesajını görmek için kullanıcı ekleyip eklediğim kullanıcı bilgilerini yazarak test yapıyorum.
login page test
    successLoginBase.success loginpage test