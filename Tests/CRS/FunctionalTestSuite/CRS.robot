*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${url}  http://127.0.0.1:5000/

*** Test Cases ***
guest user test case
    [Documentation]    guest module
    [Tags]  CRS
    Open Browser  ${url}  chrome
    maximize browser window
    sleep  2s
    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    sleep  2s

guest report test case
    [Documentation]  complaint report by guest
    [Tags]  CRS
    input text  name:description  xyxyxyxy
    sleep  2s
    input text  name:remarks  9875
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Go to home page test case
    [Documentation]  navigating to home
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/a
    sleep  5s

user test case
    [Documentation]  Clicking on user module
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  2s

registeration for user test case
    [Documentation]  user Registering
    [Tags]  CRS
    click element  xpath=/html/body/div/div/div/form/table/tbody/tr[4]/td/a
    sleep  2s
    input text  name:name  Raman
    sleep  2s
    input text  name:address  Goa
    sleep  2s
    input text  name:email  raman@gmail.com
    sleep  2s
    input text  name:mno  353464265
    sleep  2s
    input text  name:pswd  123
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[6]/td[2]/button
    sleep  3s

login user test case
    [Documentation]  user login
    [Tags]  CRS
    input text  name:email  prathmeshsandikar@gmail.com
    sleep  2s
    input text  name:pswd  123
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

user report test case
    [Documentation]  complaint report by user
    [Tags]  CRS
    input text  name:description  yzyzyzyzyzyz
    sleep  2s
    input text  name:remarks  987578
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

edit user account information test case
    [Documentation]  editing user
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    input text  name:Name  Ramuu
    sleep  2s
    input text  name:address  pune
    sleep  2s
    input text  name:email  ramu@gmail.com
    sleep  2s
    input text  name:mno  45742542
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[5]/td[2]/button
    sleep  3s


to access user account after logout test case
    [Documentation]  logging out user
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[1]/a
    sleep  2s
    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    click element  xpath=/html/body/nav/div/a
    sleep  3s


login admin test case
    [Documentation]  admin login
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[1]/a
    sleep  2s
    input text  name:uname  admin
    sleep  2s
    input text  name:pswd  12345
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s




view all the reported crimes test case
    [Documentation]  viewing all crimes
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[1]/a
    sleep  5s


search a crime based on reported date test case
    [Documentation]  view all crimes by date
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    input text  name:date  3092022
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  5s
    input text  name:date  4092022
    sleep  2s
    click button  xpath=/html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  5s


logout from the website test case
    [Documentation]  logging out
    [Tags]  CRS
    click element  xpath=/html/body/nav/div/div/ul/li[3]/a
    sleep  5s
    close browser


*** Keywords ***
