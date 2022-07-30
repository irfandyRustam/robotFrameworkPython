*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
MultipleBrowsersTest
    open browser    https://www.google.com/  chrome
    maximize browser window
    sleep   2

    open browser    https://www.bing.com/   chrome
    maximize browser window
    sleep   2

    switch browser    1
    ${title1}=   get title
    log to console    ${title1}
    sleep   1

    switch browser    2
    ${title2}=   get title
    log to console    ${title2}
    sleep   1

    close all browsers

*** Keywords ***