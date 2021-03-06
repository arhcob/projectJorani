*** Settings ***
Documentation                                   [Admin][ListofUsers] Reset password for user
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                                        src/main/python/demo/Jorani/functions/adminFunc.robot

*** Variables ***
${ResetIcon}                                    xpath=.//a[@href='https://demo.jorani.org/users/reset/${ID}']
${ID}                                           128
${PopupResetPwd}                                xpath=.//div[@id='frmResetPwd']/div[@class='modal-body']
${AlertResetPwd}                                Password
${ResetBtn}                                     xpath=.//button[@id='send']
${Flashbox}                                     xpath=//*[@id="flashbox"]
${AlertPwdChanged}                              changed

*** Keywords ***
Reset password
    click element                               ${ResetIcon}
    set selenium speed                          2
Confirm Reset Password
    element should contain                      ${PopupResetPwd}      ${AlertResetPwd}
    Change Password
    click button                                ${ResetBtn}
Assert that Password has been successfully changed
    capture page screenshot
    element should contain                      ${Flashbox}           ${AlertPwdChanged}

*** Test Cases ***
Reset password for user
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Reset password
    Confirm Reset Password
    Assert that Password has been successfully changed

[Teardown]          close all browsers