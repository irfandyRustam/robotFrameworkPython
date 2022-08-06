*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html

*** Test Cases ***
Testing Frames
    open browser    ${url}  ${browser}
    maximize browser window

    click element   xpath://div[@id='Tabbed']//button
    switch window    title:Selenium
    click element   xpath://a[@class='nav-link']//span[contains(text(),'Blog')]
    sleep   2
    close all browsers

*** Keywords ***