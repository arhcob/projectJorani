*** Settings ***
Resource                                demo/function/FuncPart.robot

*** Test Cases ***

Delete Actual User
    Open Jorani Application
    Click on Login Button
    Open Admin List
    Open List of Users Page
    Click on last paginate button
    Delete User
    Confirm Delete User
    Assert that user has been succesfully deleted