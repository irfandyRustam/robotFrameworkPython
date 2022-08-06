*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
MouseActions
    # Right click / open context menu
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html  chrome
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    2

    # Double click action
    go to    https://testautomationpractice.blogspot.com/
    double click element    xpath://button[normalize-space()='Copy Text']
    sleep    2

    # Drag and drop
    go to   http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    drag and drop    id:box6    id:box106
    sleep    2

    close browser

*** Keywords ***