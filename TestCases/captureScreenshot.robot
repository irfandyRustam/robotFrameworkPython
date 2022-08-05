*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    capture element screenshot    xpath://div[@id='divLogo']//img   logo.png
    capture page screenshot    loginTC.png

    close browser

*** Keywords ***