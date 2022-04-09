# Test cases for Hospital Management System Project using flask


*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${url}  http://127.0.0.1:5000/
*** Test Cases ***


Google test case
    [Documentation]  simple hospital management to open test
    Open Browser  ${url}  chrome


#    Close Browser

Login test case
    [Documentation]  user login test  case
    [Tags]  HMS

    Input Text  xpath=//html/body/div/div/div/form/table/tbody/tr[1]/td[2]/input  admin
    Input Text  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/input  12345
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  5s
#    Close Browser

View Patients test case
    [Documentation]  view paitents list test  case
    [Tags]  HMS

    Click element  xpath=//html/body/nav/div/div/ul/li[2]/a
    sleep  5s
    Close Browser

*** Keywords ***