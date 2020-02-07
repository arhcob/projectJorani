*** Settings ***
Documentation                                   [Admin][ListofUsers] Create a new user from List of users page
Library                                         Selenium2Library
Resource                                        src/testcases/authentification/login/LOGIN.robot
Resource                                        src/testcases/admin/adminList.robot

*** Variables ***
${CreateNewUserBtn}                             xpath=.//div/a[@href='https://demo.jorani.org/users/create']

*** Keywords ***
Click on Create a new user button
    click element                               ${CreateNewUserBtn}
    capture page screenshot

*** Test Cases ***
Create a new user from List of users page
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Click on Create a new user button

    # TODO Call Create User Package
    # FIXME