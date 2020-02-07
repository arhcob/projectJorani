*** Settings ***
Documentation                                   [Admin][ListofUsers] Delete User
Library                                         Selenium2Library
Resource                                        src/testcases/authentification/login/LOGIN.robot
Resource                                        src/testcases/admin/adminList.robot

*** Variables ***
${DeleteBtn}                                    xpath=.//a[@class='confirm-delete' and @data-id='${ID}']
${ID}                                           126
${PopupDelete}                                  xpath=.//div[@id='frmConfirmDelete']/div[@class='modal-body']
${AlertDelete}                                  delete one user
${ConfirmDeleteBtn}                             xpath=.//a[@href='https://demo.jorani.org/users/delete/${ID}']
${Flashbox}                                     xpath=//*[@id="flashbox"]
${AlertDeleted}                                 deleted
*** Keywords ***
Delete User
    click element                               ${DeleteBtn}
    set selenium speed                          4
Confirm Delete User
    element should contain                     ${PopupDelete}      ${AlertDelete}
    click element                              ${ConfirmDeleteBtn}
Assert that user has been succesfully deleted
    capture page screenshot
    element should contain                     ${Flashbox}       ${AlertDeleted}

*** Test Cases ***

Delete Actual User
    Connect To Jorani Application With Default User
    Open Admin List
    Open List of Users Page
    Delete User
    Confirm Delete User
    Assert that user has been succesfully deleted
    close all browsers