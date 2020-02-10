*** Settings ***
Documentation                                   [Admin][ListofTypes] Export list of types
Library                                         Selenium2Library

Resource                                        src/testcases/authentification/login/LOGIN.robot
Resource                                        src/testcases/admin/adminList.robot
Resource                                        src/main/python/demo/Jorani/functions/admin/Admin.robot

*** Test Cases ***
Export types list
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of types Page
    Click on Export this list button