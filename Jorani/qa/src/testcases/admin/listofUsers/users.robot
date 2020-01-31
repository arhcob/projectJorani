*** Settings ***
Documentation           Suite List of users
Library                 Selenium2Library
Resource                JORANI_2020.robot
*** Test Cases ***
Connect To Jorani Application
    Open Jorani Application
    Set Login
    Set Password
    Click on Login Button


*** Keywords ***
Provided precondition
