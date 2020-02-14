*** Settings ***
Documentation                                   [Admin][ListofUsers] Delete User
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                                        src/main/python/demo/Jorani/functions/adminFunc.robot

*** Test Cases ***

Delete Actual User
    Open Jorani Application
    Click on Login Button
    Open Admin List
    Open List of Users Page
    Click on last paginate button
    Delete User
    Confirm Delete Field
    Assert that Field has been succesfully deleted

    [Teardown]                  CLOSE ALL BROWSERS
