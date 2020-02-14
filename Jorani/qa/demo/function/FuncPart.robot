*** Settings ***
Library                                        Selenium2Library
Resource                                       demo/repository/RepoPart.robot

*** Keywords ***
Open Jorani Application
    open browser                                ${URL}                      ${BROWSER}
Click on Login Button
    click button                                ${LoginBtn}
    capture page screenshot
Open Admin List
    click element                               ${Admin_List}
Open List of Users Page
    click element                               ${List_Of_Users}
    capture page screenshot
    set selenium speed                          3
Open Create User Page
    click element                               ${Admin_List}
    click element                               ${Create_User}
    capture page screenshot
Open List of types Page
    click element                               ${List_of_types}
    capture page screenshot
Open Diagnostic Page
    click element                               ${Diagnostic}
    capture page screenshot

Click on last paginate button
    click element                               ${lastPageBtn}
Delete User
    click element                               ${DeleteBtn}
    set selenium speed                          2
Confirm Delete User
    element should contain                      ${PopupDelete}              ${AlertDelete}
    click element                               ${ConfirmDeleteBtn}
Assert that user has been succesfully deleted
    capture page screenshot
    element should contain                      ${Flashbox}                 ${AlertDeleted}