*** Settings ***
Documentation                                   [Admin][ListofUsers] Delete User
Library                                         Selenium2Library

*** Variables ***
${BROWSER}                                      chrome
${URL}                                          https://demo.jorani.org/session/login
${LoginBtn}                                     xpath=.//button[@id="send"]

${Admin_List}                                   xpath=.//a[contains(text(),'Admin')]
${List_Of_Users}                                xpath=.//a[contains(text(),'List of users')]

${lastPageBtn}                                  xpath=.//div[@id='users_paginate']//a[last()][not(@id)]
${DeleteBtn}                                    xpath=.//tbody/tr[last()]//a[@class='confirm-delete']
#${DeleteBtn}                                    xpath=.//a[@class='confirm-delete' and @data-id='${ID}']
#${ID}                                           128
${PopupDelete}                                  xpath=.//div[@id='frmConfirmDelete']/div[@class='modal-body']
${AlertDelete}                                  delete one user
${ConfirmDeleteBtn}                             xpath=.//a[contains(@id,'lnkDelete')]
${Flashbox}                                     xpath=//*[@id="flashbox"]
${AlertDeleted}                                 deleted

*** Keywords ***
Open Jorani Application
    open browser                                ${URL}                     ${BROWSER}
Click on Login Button
    click button                                ${LoginBtn}
    capture page screenshot
Open Admin List
    click element                               ${Admin_List}
Open List of Users Page
    click element                               ${List_Of_Users}
    capture page screenshot
Click on last paginate button
    #set selenium speed                          2
    click element                               ${lastPageBtn}
Delete User
    click element                               ${DeleteBtn}
    set selenium speed                          4
Confirm Delete User
    element should contain                      ${PopupDelete}              ${AlertDelete}
    click element                               ${ConfirmDeleteBtn}
Assert that user has been succesfully deleted
    capture page screenshot
    element should contain                      ${Flashbox}                 ${AlertDeleted}

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