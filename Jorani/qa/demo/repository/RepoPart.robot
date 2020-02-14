*** Variables ***
${BROWSER}                                      chrome
${URL}                                          https://demo.jorani.org/session/login
${LoginBtn}                                     xpath=.//button[@id="send"]

${Admin_List}                                   xpath=.//a[contains(text(),'Admin')]
${List_Of_Users}                                xpath=.//a[contains(text(),'List of users')]
${Create_User}                                  xpath=.//a[contains(text(),'Create user')]
${List_of_types}                                xpath=.//li/a[contains(text(),'List of types')]
${Diagnostic}                                   xpath=.//li/a[contains(text(),'Diagnostic')]

${lastPageBtn}                                  xpath=.//div[@id='users_paginate']//a[last()][not(@id)]
${DeleteBtn}                                    xpath=.//tbody/tr[last()]//a[@class='confirm-delete']
${PopupDelete}                                  xpath=.//div[@id='frmConfirmDelete']/div[@class='modal-body']
${AlertDelete}                                  delete one user
${ConfirmDeleteBtn}                             xpath=.//a[contains(@id,'lnkDelete')]
${Flashbox}                                     xpath=.//*[@id="flashbox"]
${AlertDeleted}                                 deleted