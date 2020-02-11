*** Settings ***
Documentation                                   [Admin][ListofTypes] Delete a leave types
Library                                         Selenium2Library
Resource                                        src/testcases/authentification/login/LOGIN.robot
Resource                                        src/testcases/admin/adminList.robot
Resource                                        src/main/python/demo/Jorani/functions/admin/Admin.robot

*** Test Cases ***
Delete Actual Type
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of types Page
    Delete Field
    Confirm Delete Field
    Assert that User/Type has been succesfully deleted

    [Teardown]      CLOSE ALL BROWSERS
