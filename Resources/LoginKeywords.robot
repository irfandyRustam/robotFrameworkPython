*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open MyBrowser
    [Arguments]    ${siteURL}   ${browser}
    open browser    ${siteURL}      ${browser}
    maximize browser window

Enter Username
    [Arguments]    ${username}
    input text    ${txt_loginusername}      ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_loginPassword}      ${password}

Click Login
    click button    ${btn_login}

Verify Successful Login
    title should be     nopCommerce demo store

Close MyBrowsers
    close all browsers