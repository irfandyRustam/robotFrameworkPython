*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console    ${speed}
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed    2 seconds

    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email    davidJohn123@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword  davidjohn
    close browser

    ${speed}=   get selenium speed
    log to console    ${speed}

*** Keywords ***