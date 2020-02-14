*** Settings ***
Library                                             Selenium2Library
Resource                                            src/main/python/demo/Jorani/repository/loginRepo.robot




*** Keywords ***
Open Jorani Application
    open browser                                    ${URL}                      ${BROWSER}
    maximize browser window
Set Login
    clear element text                              ${LoginInput}
    input text                                      ${LoginInput}               user_test
Set Password
    clear element text                              ${PwdInput}
    input text                                      ${PwdInput}                 Hello00
    set selenium speed                              ${DELAY}
Click on Login Button
    click button                                    ${LoginBtn}
    capture page screenshot
Change Password
    input text                                      ${PwdInput}                 ${NewPassword}

Connect To Jorani Application With Default User
    Open Jorani Application
    Click on Login Button
    set selenium speed                              ${DELAY}
Connect To Jorani Application With Admin User
    Open Jorani Application
    Set Login
    Set Password
    Click on Login Button
    set selenium speed                              ${DELAY}