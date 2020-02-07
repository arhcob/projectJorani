*** Settings ***
Documentation                    Suite List of users
Library                          Selenium2Library
Resource                         src/testcases/authentification/login/LOGIN.robot
Resource                         src/testcases/admin/adminList.robot

*** Test Cases ***
Connect To Jorani Application
    Connect To Jorani Application With Admin User
    Open Create User Page