*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    1 second

    # Select Radio Buttons
    select radio button    optionsRadios    female
    click element    xpath://input[@id='3years']/following-sibling::label   # non visible radio button

    # Select Check Boxes
    select checkbox    id:monday
    select checkbox    id:tuesday
    unselect checkbox    id:monday

     close browser

*** Keywords ***