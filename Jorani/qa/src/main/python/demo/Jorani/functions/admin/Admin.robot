*** Settings ***
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/repository/admin/Admin.robot

*** Keywords ***

Delete Field
    click element                                       ${DeleteBtn}
    set selenium speed                                  4
Confirm Delete Field
    set selenium speed                                  4
    element should contain                              ${PopupDelete}              ${AlertDelete}
    click element                                       ${ConfirmDeleteBtn}
Click on Export this list button
    click element                                       ${ExportListBtn}
    capture page screenshot
Assert that User/Type has been succesfully deleted
    capture page screenshot
    element should contain                              ${Flashbox}                 ${AlertDeleted}

Click on Create a new User/Type button
    click element                                       ${CreateNewFieldBtn}
    capture page screenshot
    Click on Export this list button