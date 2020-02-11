*** Variables ***

${DeleteBtn}                                    xpath=.//a[@class='confirm-delete' and @data-id='${ID}']
${ID}                                           147
${PopupDelete}                                  xpath=.//div[contains(@id,'Delete')]/div[@class='modal-body']
${AlertDelete}                                  delete
${ConfirmDeleteBtn}                             xpath=.//a[contains(@href,'delete/${ID}')]
${Flashbox}                                     xpath=//*[@id="flashbox"]
${AlertDeleted}                                 deleted

${ExportListBtn}                                xpath=.//a[contains(@href,'export')]
${CreateNewFieldBtn}                            xpath=.//div/a[contains(@href,'create')]