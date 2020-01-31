*** Settings ***
Documentation                   Suite description
Library                         Selenium2Library
Resource                        JORANI_2020.robot

*** Keywords ***
Open Jorani Application
    open browser                 ${URL}                      ${BROWSER}

Click on Login Button
    click button                 ${LoginBtn}
    capture page screenshot

*** Test Cases ***
Connect To Jorani Application As Default User
    Connect To Jorani Application With Default User