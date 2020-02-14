*** Settings ***
Documentation                                   [Admin][ListofTypes] Create a new type
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                                        src/main/python/demo/Jorani/functions/adminFunc.robot


*** Test Cases ***
Create a new type from List of Leave types page
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of types Page
    Click on Create a new User/Type button

    [Teardown]          close all browsers


    # TODO Call Create Type Package
    # FIXME