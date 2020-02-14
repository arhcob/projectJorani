*** Variables ***
${Admin_List}                                   xpath=.//a[contains(text(),'Admin')]
${List_Of_Users}                                xpath=.//a[contains(text(),'List of users')]
${Create_User}                                  xpath=.//a[contains(text(),'Create user')]
${List_of_types}                                xpath=.//li/a[contains(text(),'List of types')]
${Diagnostic}                                   xpath=.//li/a[contains(text(),'Diagnostic')]


${lastPageBtn}                                  xpath=.//div[@id='users_paginate']//a[last()][not(@id)]
${DeleteUserBtn}                                xpath=.//tbody/tr[last()]//a[@class='confirm-delete']
${DeleteTypeBtn}                                xpath=.//tr[td[4][i[not(contains(@class,'check'))]]][last()]/descendant-or-self::a[i[contains(@class,'delete')]]



${PopupDelete}                                  xpath=.//div[contains(@id,'Delete')]/div[@class='modal-body']
${AlertDelete}                                  to delete one
${ConfirmDeleteBtn}                             xpath=.//a[contains(@id,'lnkDelete')]
${Flashbox}                                     xpath=.//*[@id="flashbox"]
${AlertDeleted}                                 delete


#${DeleteBtn}                                    xpath=.//a[@class='confirm-delete' and @data-id='${ID}']
#${ID}                                           147
#${PopupDelete}                                  xpath=.//div[contains(@id,'Delete')]/div[@class='modal-body']
#${AlertDelete}                                  delete
#${ConfirmDeleteBtn}                             xpath=.//a[contains(@href,'delete/${ID}')]
#${Flashbox}                                     xpath=//*[@id="flashbox"]
#${AlertDeleted}                                 deleted

${ExportListBtn}                                xpath=.//a[contains(@href,'export')]
${CreateNewFieldBtn}                            xpath=.//div/a[contains(@href,'create')]

${TypeList}
${UserList}