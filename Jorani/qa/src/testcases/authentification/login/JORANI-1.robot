*** Settings ***
Documentation                   Suite description
Resource                        LOGIN.robot

*** Test Cases ***
Connect To Jorani Application As Default User
    Connect To Jorani Application With Default User