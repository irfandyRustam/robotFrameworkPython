*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console    ${time}

    set selenium timeout    10 seconds
    wait until page contains    Registration   # default timeout 5 secs

    select radio button    Gender   M
    input text    name:FirstName    David
    input text    name:LastName     John
    input text    name:Email    davidJohn123@gmail.com
    input text    name:Password     davidjohn
    input text    name:ConfirmPassword  davidjohn
    close browser

*** Keywords ***