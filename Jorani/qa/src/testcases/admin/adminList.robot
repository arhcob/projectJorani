*** Settings ***
Documentation                       Admin Pages List
Library                             Selenium2Library


*** Variables ***
${Admin_List}                       xpath=.//a[contains(text(),'Admin')]
${List_Of_Users}                    xpath=.//a[contains(text(),'List of users')]
${Create_User}                      xpath=.//a[contains(text(),'Create user')]
${List_of_types}                    xpath=.//li/a[contains(text(),'List of types')]
${Diagnostic}                       xpath=.//li/a[contains(text(),'Diagnostic')]


*** Keywords ***
Open Admin List
    click element                   ${Admin_List}
Open List of Users Page
    click element                   ${List_Of_Users}
    capture page screenshot
Open Create User Page
    click element                   ${Admin_List}
    click element                   ${Create_User}
    capture page screenshot
Open List of types Page
    click element                   ${Admin_List}
    click element                   ${List_of_types}
    capture page screenshot
Open Diagnostic Page
    click element                   ${Admin_List}
    click element                   ${Diagnostic}
    capture page screenshot

