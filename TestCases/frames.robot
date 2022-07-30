*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Testing Frames
    open browser    ${url}  ${browser}
    maximize browser window

    select frame    packageListFrame
    click link    org.openqa.selenium
    unselect frame
    sleep   2

    select frame    packageFrame
    click link    WebDriver
    unselect frame
    sleep   2

    select frame    classFrame
    click link    Index
    unselect frame
    sleep   2

    close browser

*** Keywords ***