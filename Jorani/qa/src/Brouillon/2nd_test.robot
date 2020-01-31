*** Settings ***
Documentation                       HR Pages List
Library                             Selenium2Library
Resource                            JORANI-0001.robot

*** Variables ***
${SERVER}                           https://demo.jorani.org/session/login
${BROWSER}                          chrome
${varname}                          HR
${DELAY}                            2
${DELAY2}                           4
${DELAY3}                           8
${Login}                            xpath=.//button[@id="send"]
${HR_List}                          xpath=.//a[contains(text(),'${varname}')]
${List_of_Employees}                xpath=.//a[contains(text(),'List of employees')]
${Organization}                     xpath=.//a[contains(text(),'Organization')]
${List_Of_Contracts}                xpath=.//a[contains(text(),'List of contracts')]
${List_Of_Positions}                xpath=.//a[contains(text(),'List of positions')]
${Leave_Balance}                    xpath=.//a[contains(text(),'Leave balance')]
${Leave_Requests}                   xpath=.//a[contains(text(),'Leave requests')]
${Reports}                          xpath=.//a[contains(text(),'Reports')]


*** Keywords ***
Call robot

Open Browser To Login Page
    Open browser                    ${SERVER}                        ${BROWSER}
    maximize browser window
Click on Login Button
    click button                    ${Login}
    set selenium speed              ${DELAY}
Open HR List
    click element                   ${HR_List}
    set selenium speed              ${DELAY}
Open List of Employees Page
    click element                   ${List_of_Employees}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Organization Page
    click element                   ${HR_List}
    click element                   ${Organization}
    capture page screenshot
    set selenium speed              ${DELAY}
Open List of Contracts Page
    click element                   ${HR_List}
    click element                   ${List_Of_Contracts}
    capture page screenshot
    set selenium speed              ${DELAY}
Open List of Positions Page
    click element                   ${HR_List}
    click element                   ${List_Of_Positions}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Leave Balance Page
    click element                   ${HR_List}
    click element                   ${Leave_Balance}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Leave Requests Page
    click element                   ${HR_List}
    click element                   ${Leave_Requests}
    capture page screenshot
    set selenium speed              ${DELAY}
Open Reports Page
    click element                   ${HR_List}
    click element                   ${Reports}
    capture page screenshot
    set selenium speed              ${DELAY}


*** Test Cases ***
HR Pages
    Open Browser To Login Page
    Click on Login Button
    Open Admin List
    Open HR List
    Open List of Employees Page
    Open Organization Page
    Open List of Contracts Page
    Open List of Positions Page
    Open Leave Balance Page
    Open Leave Requests Page
    Open Reports Page
    [Teardown]                       close browser

