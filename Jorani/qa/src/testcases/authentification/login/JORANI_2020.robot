*** Settings ***
Documentation                   Suite description
Library                         Selenium2Library

*** Variables ***
${BROWSER}                      chrome
${URL}                          https://demo.jorani.org/session/login
${LoginInput}                   xpath=.//*[@id="login"]
${PwdInput}                     xpath=.//*[@id="password"]
${LoginBtn}                     xpath=.//button[@id="send"]
${DELAY}                        3

*** Test Cases ***
Connect To Jorani Application
    Open Jorani Application
    Set Login
    Set Password
    Click on Login Button

*** Keywords ***
Open Jorani Application
    open browser                 ${URL}                      ${BROWSER}
Set Login
    clear element text           ${LoginInput}
    input text                   ${LoginInput}               admin
Set Password
    clear element text           ${PwdInput}
    input text                   ${PwdInput}                 Hello00
    set selenium speed           ${DELAY}
Click on Login Button
    click button                 ${LoginBtn}
    capture page screenshot
