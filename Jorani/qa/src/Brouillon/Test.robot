*** Settings ***

Documentation                       Suite description
Library                             Selenium2Library
Library                             lib.py


*** Variables ***

${SERVER}                           https://demo.jorani.org/session/login
${BROWSER}                          chrome

*** Keywords ***
Provided precondition
    open browser                    ${SERVER}                        ${BROWSER}
    open_admin_page

*** Test Cases ***
Test title
    Provided precondition


