*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${LOGIN URL}    https://admin-demo.nopcommerce.com/

*** Keywords ***
Open My Browser
    open browser    ${LOGIN URL}  ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to    ${LOGIN URL}

Input Username
    [Arguments]    ${username}
    input text    id:Email      ${username}

Input Pwd
    [Arguments]    ${password}
    input text    id:Password      ${password}

Click Login Button
    click element   xpath://button[normalize-space()='Log in']

Click Logout Link
    click link    Logout

Error Message Should Be Visible
    page should contain    Login was unsuccessful

Dashboard Page Should Be Visible
    page should contain    Dashboard