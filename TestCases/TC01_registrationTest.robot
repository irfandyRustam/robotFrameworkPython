*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/login

*** Test Cases ***
RegistrationTest
    # Generate Random Email
    ${EMAIL}=   Generate Random Email
    set global variable    ${EMAIL}

    Open MyBrowser    ${url}    ${browser}
    Click Register Link
    Enter Firstname     Satoru
    Enter Lastname      Gojo
    Enter Email         ${EMAIL}
    Select Gender Male
    Select Day          7
    Select Month        December
    Select Year         1989
    Enter Company       jujutsu kaisen
    Enter Password      password123
    Enter Confirm Password    password123
    Click Register Button
    Verify Successful Registration
    Close MyBrowsers