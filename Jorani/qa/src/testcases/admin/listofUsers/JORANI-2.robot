*** Settings ***
Documentation                                   Suite description
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                                        src/main/python/demo/Jorani/functions/adminFunc.robot

*** Variables ***
${ActiveBtn}                                    xpath=.//tr[td[contains(text(),'${Login}')]]/td/div/a[contains(@href,'enable')]
${DeactiveBtn}                                  xpath=.//tr[td[contains(text(),'${Login}')]]/td/div/a[contains(@href,'disable')]
${Login}                                        login_109
${Flashbox}                                     xpath=//*[@id="flashbox"]
${AlertUpdated}                                 updated
*** Keywords ***
Activate User
    click element                               ${ActiveBtn}
Deactivate User
    click element                               ${DeactiveBtn}
Assert That user has been successfully updated
     element should contain                     ${Flashbox}       ${AlertUpdated}

*** Test Cases ***

Activate User
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Activate User
    Assert That user has been successfully updated


Deactivate User
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Deactivate User
    Assert That user has been successfully updated

    [Teardown]          close all browsers