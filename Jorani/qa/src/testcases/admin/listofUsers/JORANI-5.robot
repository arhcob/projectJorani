*** Settings ***
Documentation                                   [Admin][ListofUsers] Export users list
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                                        src/main/python/demo/Jorani/functions/adminFunc.robot

*** Variables ***
${ExportListBtn}                                xpath=.//a[@href='https://demo.jorani.org/users/export']

*** Keywords ***
Click on Export this list button
    click element                               ${ExportListBtn}
    capture page screenshot

*** Test Cases ***
Export users list
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Click on Export this list button

    [Teardown]          close all browsers