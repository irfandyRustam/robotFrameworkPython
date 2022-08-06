*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/login
${user}     johndoe12345@nopCommerce.com
${pwd}      customer12345

*** Test Cases ***
LoginTest
    Open MyBrowser    ${url}    ${browser}
    Enter Username    ${user}
    Enter Password    ${pwd}
    Click Login
    Verify Successful Login
    Close MyBrowsers