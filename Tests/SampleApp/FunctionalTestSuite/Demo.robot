*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_parameter}  Harman
${url}  https://www.google.com/
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
    Open Browser  ${url}  chrome
    search data
    Submit form
    Close Browser

*** Keywords ***
search data
    input text  name:q  ${search_parameter}

