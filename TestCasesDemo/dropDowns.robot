*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
Handling DropDowns and Lists
    open browser    ${url}  ${browser}
    maximize browser window

    # dropdown
    select from list by label    xpath://select[@class='custom-select']     Denmark
    sleep   2
    select from list by index    xpath://select[@class='custom-select']     6
    sleep   2
    select from list by value    xpath://select[@class='custom-select']     3

    # listbox
#    select from list by label   selenium_commands   Switch Commands
#    select from list by label   selenium_commands   WebElement  Commands
#    sleep   2
#    unselect from list by label    selenium_commands   Switch Commands

*** Keywords ***