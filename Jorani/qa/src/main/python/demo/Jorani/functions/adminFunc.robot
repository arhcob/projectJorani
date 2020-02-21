*** Settings ***
Library                                                 Selenium2Library
Resource                                                src/main/python/demo/Jorani/repository/adminRepo.robot

*** Keywords ***
Open Admin List
    click element                                       ${Admin_List}
Open List of Users Page
    click element                                       ${List_Of_Users}
    capture page screenshot
    set selenium speed                                  3
Open Create User Page
    click element                                       ${Admin_List}
    click element                                       ${Create_User}
    capture page screenshot
Open List of types Page
    click element                                       ${List_of_types}
    capture page screenshot
Open Diagnostic Page
    click element                                       ${Diagnostic}
    capture page screenshot

Click on last paginate button
    set selenium speed                                  2
    click element                                       ${lastPageBtn}

Delete User
    click element                                       ${DeleteUserBtn}
    set selenium speed                                  2
Delete Type
    click element                                       ${DeleteTypeBtn}
    set selenium speed                                  3
Confirm Delete Field
    set selenium speed                                  2
    element should contain                              ${PopupDelete}              ${AlertDelete}
    click element                                       ${ConfirmDeleteBtn}

Assert that Field has been successfully deleted
    capture page screenshot
    element should contain                              ${Flashbox}                 ${AlertDeleted}

Click on Create a new User/Type button
    click element                                       ${CreateNewFieldBtn}
    capture page screenshot

Click on Export this list button
    click element                                       ${ExportListBtn}
    capture page screenshot