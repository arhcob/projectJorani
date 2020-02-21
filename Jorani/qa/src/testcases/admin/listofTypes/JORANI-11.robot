*** Settings ***
Documentation                                           [Admin][ListofTypes] Delete a leave types
Library                                                 Selenium2Library
Resource                                                src/main/python/demo/Jorani/functions/loginFunc.robot
Resource                                                src/main/python/demo/Jorani/functions/adminFunc.robot

*** Test Cases ***
Delete Actual Type
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of types Page
    Delete Type
    Confirm Delete Field
    Assert that Field has been successfully deleted

    [Teardown]      CLOSE ALL BROWSERS
