*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
login page test case
    [Documentation]  login for user
    [Tags]  user
    Log  hello

Registration Page test case
    [Documentation]  registration page for user
    [Tags]  user
    Log  welcome

Dashboard test case
    [Documentation]  Dashboard for user
    Log  Dash

Google test case
    [Documentation]  simple google test
    Open Browser    https://www.google.com/  chrome
    input text  name:q  HARMAN

    Submit form
    Close Browser

*** Keywords ***

