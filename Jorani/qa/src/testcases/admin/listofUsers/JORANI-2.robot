*** Settings ***
Documentation                                   Suite description
Library                                         Selenium2Library
Resource                                        src/testcases/authentification/login/LOGIN.robot
Resource                                        src/testcases/admin/adminList.robot

*** Variables ***
${ActiveBtn}                                    xpath=.//tr[td[contains(text(),'${Login}')]]/td/div/a[contains(@href,'https://demo.jorani.org/users/disable')]
${DeactiveBtn}                                  xpath=.//tr[td[contains(text(),'${Login}')]]/td/div/a[contains(@href,'https://demo.jorani.org/users/enable')]
${Login}                                        login_104
${Flashbox}                                     xpath=//*[@id="flashbox"]
${AlertUpdated}                                 updated
*** Keywords ***
Activate User
    click element                               ${ActiveBtn}
Deactivate User
    click element                               ${DeactiveBtn}
Assert That user has been succesfully updated
     element should contain                     ${Flashbox}       ${AlertUpdated}

*** Test Cases ***

Activate User
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Activate User
    Assert That user has been succesfully updated
    close all browsers
Deactivate User
    Connect To Jorani Application With Default User
    Open List of Users Page
    Deactivate User
    Assert That user has been succesfully updated
    close all browsers