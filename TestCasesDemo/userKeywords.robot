*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
TC1
    ${pageTitle}=   launchBrowser   ${url}  ${browser}
    log to console    ${pageTitle}
    log    ${pageTitle}
    input text    id:txtUsername    Admin
    input text    id:txtPassword    admin123

    close browser