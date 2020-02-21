*** Settings ***
Documentation                                   [Admin][ListofUsers] Delete User
Library                                         Selenium2Library

*** Variables ***
${BROWSER}                                      chrome
${URL}                                          https://demo.jorani.org/session/login
${LoginInput}                                   xpath=.//*[@id="login"]
${PwdInput}                                     xpath=.//*[@id="password"]
${LoginBtn}                                     id=send
${DELAY}                                        2

${Admin_List}                                   xpath=.//a[contains(text(),'Admin')]
${List_Of_Users}                                xpath=.//a[contains(text(),'List of users')]

${lastPageBtn}                                  xpath=.//div[@id='users_paginate']//a[last()][not(@id)]
${DeleteBtn}                                    xpath=.//tbody/tr[last()]//a[@class='confirm-delete']
#${DeleteBtn}                                    xpath=.//a[@class='confirm-delete' and @data-id='128']
#${ID}                                           128
${PopupDelete}                                  xpath=.//div[@id='frmConfirmDelete']/div[@class='modal-body']
${AlertDelete}                                  delete one user
${ConfirmDeleteBtn}                             xpath=.//a[contains(@id,'lnkDelete')]
${Flashbox}                                     xpath=.//*[@id="flashbox"]
${AlertDeleted}                                 deleted

*** Keywords ***
Open Jorani Application
    open browser                                ${URL}                     ${BROWSER}
    MAXIMIZE BROWSER WINDOW
Set Login
    clear element text                          ${LoginInput}
    input text                                  ${LoginInput}              user_test
Set Password
    clear element text                          ${PwdInput}
    input text                                  ${PwdInput}                password
    set selenium speed                          ${DELAY}
Click on Login Button
    click button                                ${LoginBtn}
    capture page screenshot
Open Admin List
    click element                               ${Admin_List}
Open List of Users Page
    click element                               ${List_Of_Users}
    capture page screenshot
Click on last paginate button
    click element                               ${lastPageBtn}
Delete User
    click element                               ${DeleteBtn}
    set selenium speed                          3
Confirm Delete User
    element should contain                      ${PopupDelete}              ${AlertDelete}
    click element                               ${ConfirmDeleteBtn}
Assert that user has been successfully deleted
    capture page screenshot
    element should contain                      ${Flashbox}                 ${AlertDeleted}


*** Test Cases ***
Delete Actual User
    Open Jorani Application
    Set Login
    Set Password
    Click on Login Button
    Open Admin List
    Open List of Users Page
    Click on last paginate button
    Delete User
    Confirm Delete User
    Assert that user has been successfully deleted



#TC 2
#    open browser    https://www.google.com/         chrome