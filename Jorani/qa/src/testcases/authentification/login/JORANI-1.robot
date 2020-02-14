*** Settings ***
Documentation                   Suite description
Resource                        src/main/python/demo/Jorani/functions/loginFunc.robot

*** Test Cases ***
Connect To Jorani Application As Default User
    Connect To Jorani Application With Default User

Connect To Jorani Application As Admin User
    Connect To Jorani Application With Admin User

    [Teardown]          close all browsers