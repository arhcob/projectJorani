*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
#Resource          resource.robot
Resource  plone/app/robotframework/keywords.robot
Library  Selenium2Library



*** Variables ***
${Browser}  chrome  executable_path="C:\Program Files (x86)\Python\Scripts\chromedriver.exe"
${URL}  https://demo.jorani.org/session/login




*** Test Cases ***

valid_login
open browser ${URL} ${Browser}

Test case1
Test case2
Test case3 ...

*** Keywords ***
close browser