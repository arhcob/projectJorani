*** Settings ***
Documentation                       Suite description
Library                             Selenium2Library


*** Variables ***
${SERVER}                           https://demo.jorani.org/session/login
${BROWSER}                          chrome
${DELAY}                            2
${DELAY2}                           4
${DELAY3}                           8
${Login}                            xpath=.//button[@id="send"]
${Admin_list}                       xpath=.//a[contains(text(),'Admin')]


${Create_User}                      xpath=.//a[contains(text(),'Create user')]
${Firstname}                        xpath=.//input[@id='firstname']
${Lastname}                         xpath=.//input[@id='lastname']
${Login}                            xpath=.//input[@id='login']
${E-mail}                           xpath=.//input[@id='email']
${Manager_Self}                     xpath=.//input/a[@id='cmdSelfManager']
${Manager_Select}                   xpath=.//input/a[@id='cmdSelectManager']
${Role}                             xpath=.//select[@name='role[]']/option[contains(text(),'%s')]
${Password}                         xpath=.//input[@id='password']
${Gnerate password}                 xpath=.//input[@id='password']
${Contract}                         xpath=.//span[@id='select2-contract-container']
${Entity_Select}                    xpath=.//a[@id='cmdSelectEntity']
${Position_Select}                  xpath=.//a[@id='cmdSelectPosition']
${Date hired/started}               xpath=.//input[@id='viz_datehired']
${Internal/Company Identifier}      xpath=.//input[@name='identifier']
${Language}                         xpath=.//select[@name='language']
${Timezone}                         xpath=.//span[@id='select2-timezone-container']
${Create user}                      xpath=.//a[@id='send']
${Cancel}                           xpath=.//a[@href='https://demo.jorani.org/users']


*** Keywords ***
Open Browser To Login Page
    Open browser                    ${SERVER}               ${BROWSER}
    maximize browser window
    set selenium speed              ${DELAY}
Click on Login Button
    click button                    ${Login}
    set selenium speed              ${DELAY2}
Open Admin List
    click element                   ${Admin_list}
    set selenium speed              ${DELAY2}
Open Create User Page
    click element                   ${Create_User}
    set selenium speed              ${DELAY3}
#Create a New User


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Click on Login Button
    Open Admin List
    Open Create User Page



    [Teardown]                      close browser

