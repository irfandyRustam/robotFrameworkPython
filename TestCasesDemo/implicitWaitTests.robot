*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window

    ${implicitTime}=    get selenium implicit wait
    log to console    ${implicitTime}
    set selenium implicit wait    10 seconds
    ${implicitTime}=    get selenium implicit wait
    log to console    ${implicitTime}

    select radio button    Gender   M
    input text    name:FirstName1    David
    input text    name:LastName     John
    input text    name:Email    davidJohn123@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword  davidjohn
    close browser

*** Keywords ***