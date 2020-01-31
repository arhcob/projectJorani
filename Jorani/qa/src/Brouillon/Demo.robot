*** Settings ***
Documentation               Testing Mercury Website
Library                     Selenium2Library
Library                     BuiltIn

Test Teardown               Close All Browsers

*** Variable ***
${SERVER}                   http://newtours.demoaut.com/
${BROWSER}                  chrome
${title}                    Welcome: Mercury Tours
${timeout}                  6s


*** Keywords ***
Open Mercury Website in Chrome and Maximize
    Open browser            ${SERVER}   ${BROWSER}
    maximize browser window
    log to console          Website Navigated successfully
Verify the Home page title
    title should be         ${title}
    Log to console          Home Page Title Verified
Click on Sign-On Link
    Click element           xpath=//*[contains(text(),'SIGN-ON')]
    LOG TO CONSOLE          Clicked on Signon link successfully.


*** Test Cases ***
TestCase1: Navigating Mercury webpage
    [Tags]
    [Setup]
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        sleep               ${timeout}
        Click on Sign-On Link
        sleep               ${timeout}
    [Teardown]              close browser

