*** Settings ***
Library                                         Selenium2Library
Resource                                        src/main/python/demo/Jorani/repository/admin/Admin.robot

*** Keywords ***
Click on Export this list button
    click element                               ${ExportListBtn}
    capture page screenshot

