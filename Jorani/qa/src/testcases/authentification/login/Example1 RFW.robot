#EXAMPLE 3 Robot Framework official website
*** Settings ***
Suite Setup      Open Browser To Login Page
Suite Teardown   Close Browser
Test Setup       Go To Login Page
Test Template    Login with Invalid Credentials Should Fail
Resource         resource.txt




*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]                     ${username}         ${password}
    input Username                  ${username}
    input password                  ${password}
    submit form
    Login Should Have Failed

Login Should Have Failed
    location should be              ${ERROR URL}
    title should be                 Error Page

*** Settings ***
Library          Selenium2Library

*** Variables ***
${SERVER}                           demo.jorani.org/session/
${BROWSER}                          chrome
${DELAY}                            0
${VALID USER}                       demo
${VALID PASSWORD}                   mode
${INVALID USER}                     /*9874
${INVALID PASSWORD}                 In*123
${LOGIN URL}                        http://${SERVER}/
${WELCOME URL}                      http://${SERVER}/welcome.html
${ERROR URL}                        http://${SERVER}/error.html


*** Keywords ***
Open Browser To Login Page
    Open Browser                    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed              ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be                 Login Page

Go To Login Page
    Go To                           ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]                     ${username}
    Input Text                      username_field    ${username}

Input Password
    [Arguments]                     ${password}
    Input Text                      password_field    ${password}

Submit Credentials
    Click Button                    login_button

Welcome Page Should Be Open
    Location Should Be              ${WELCOME URL}
    Title Should Be                 Welcome Page


*** Test Cases ***
Invalid Username                    ${INVALID USER}     ${VALID PASSWORD}
Invalid Password                    ${VALID USER}       ${INVALID PASSWORD}
Invalid Username And Password       ${INVALID USER}     ${INVALID PASSWORD}
Empty Username                      ${EMPTY}            ${VALID PASSWORD}
Empty Password                      ${VALID USER}       ${EMPTY}
Empty Username And Password         ${EMPTY}            ${EMPTY}







