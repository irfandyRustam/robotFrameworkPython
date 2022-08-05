*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
GetAllLinksTest
    open browser    https://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    ${allLinksCount}=   get element count    xpath://a
    log to console    ${allLinksCount}

    ${linkItems}    create list

    FOR   ${i}    IN RANGE    1     ${allLinksCount}+1
        ${linkText}=   get text    xpath:(//a)[${i}]
        log to console    ${linkText}
        END

    close browser

*** Keywords ***