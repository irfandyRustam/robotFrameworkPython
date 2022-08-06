*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/login
${user}     ${EMAIL}  # global variable from TC01_registrationTest.robot
${pwd}      password123

*** Test Cases ***
LoginTest
    Open MyBrowser    ${url}    ${browser}
    Enter Username    ${user}
    Enter Password    ${pwd}
    Click Login
    Verify Successful Login
    Close MyBrowsers