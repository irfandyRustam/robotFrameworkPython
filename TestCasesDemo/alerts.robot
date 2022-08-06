*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
HandlingAlerts
    open browser    https://testautomationpractice.blogspot.com/  chrome
    click element    xpath://button[normalize-space()='Click Me']   # opens alert
    sleep   2
#    handle alert    accept
#    handle alert    dismiss
#    handle alert    leave
    alert should be present    Press a button!


*** Keywords ***