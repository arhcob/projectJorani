*** Settings ***
Documentation                       Admin Pages List
Library                             Selenium2Library


*** Variables ***
${SERVER}                           https://demo.jorani.org/session/login
${BROWSER}                          chrome
${DELAY}                            2
${DELAY2}                           4
${DELAY3}                           8
${Login}                            xpath=.//button[@id="send"]
${Admin_List}                       xpath=.//a[contains(text(),'Admin')]
${List_Of_Users}                    xpath=.//a[contains(text(),'List of users')]
${Create_User}                      xpath=.//a[contains(text(),'Create user')]
${List_of_types}                    xpath=.//li/a[contains(text(),'List of types')]
${Diagnostic}                       xpath=.//li/a[contains(text(),'Diagnostic')]
${LOGIN_PATH}                       xpath=.//*[@id="login"]
${PASSWORD_PATH}                    xpath=.//*[@id="password"]
*** Keywords ***
Open Browser To Login Page
    Open browser                    ${SERVER}              ${BROWSER}
    maximize browser window
    set selenium speed              ${DELAY}
Set Login
    set test variable               ${LOGIN}               '#admin
    clear element text              ${LOGIN_PATH}
    input text                      ${LOGIN_PATH}           ${LOGIN}
Set Password
    set test variable               ${PASSWORD}             Hello00
    clear element text              ${PASSWORD_PATH}
    input text                      ${PASSWORD_PATH}        ${PASSWORD}
Click on Login Button
    click button                    ${Login}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Admin List
    click element                   ${Admin_List}
    set selenium speed              ${DELAY}
Open List of Users Page
    click element                   ${List_Of_Users}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Create User Page
    click element                   ${Admin_List}
    click element                   ${Create_User}
    capture page screenshot
    set selenium speed              ${DELAY}
Open List of types Page
    click element                   ${Admin_List}
    click element                   ${List_of_types}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Diagnostic Page
    click element                   ${Admin_List}
    click element                   ${Diagnostic}
    capture page screenshot
    set selenium speed              ${DELAY}

*** Test Cases ***
AdminPages
    Open Browser To Login Page
    Set Login
    Set Password
    Click on Login Button
    Open Admin List
    Open List of Users Page
    Open List of types Page
    Open Diagnostic Page

Login Pages
    Open Browser To Login Page
    Click on Login Button

    [Teardown]                        close browser

