*** Settings ***
Documentation                    Suite List of users
Library                          Selenium2Library
Resource                         src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                         src/main/python/demo/Jorani/functions/adminFunc.robot

*** Test Cases ***
Connect To Jorani Application
    Connect To Jorani Application With Admin User
    Open Create User Page
    [Teardown]          close all browsers