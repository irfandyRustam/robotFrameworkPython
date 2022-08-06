*** Settings ***
Library    SeleniumLibrary
Library  String
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open MyBrowser
    [Arguments]    ${siteURL}   ${browser}
    open browser    ${siteURL}      ${browser}
    maximize browser window

Click Register Link
    click link    ${link_register}

Enter Firstname
    [Arguments]    ${firstName}
    input text    ${txt_firstName}      ${firstName}

Enter Lastname
    [Arguments]    ${lastName}
    input text    ${txt_lastName}      ${lastName}

Enter Email
    [Arguments]    ${email}
    input text    ${txt_email}      ${email}

Enter Company
    [Arguments]    ${company}
    input text    ${txt_company}      ${company}

Enter Password
    [Arguments]    ${password}
    input text    ${txt_password}      ${password}

Enter Confirm Password
    [Arguments]    ${confirmPassword}
    input text    ${txt_confirmPassword}      ${confirmPassword}

Select Gender Male
    click element    ${rdBtn_male}

Select Gender Female
    click element    ${rdBtn_female}

Select Day
    [Arguments]    ${day}
    select from list by label    ${drp_dobday}  ${day}

Select Month
    [Arguments]    ${month}
    select from list by label    ${drp_dobMonth}  ${month}

Select Year
    [Arguments]    ${year}
    select from list by label    ${drp_dobYear}  ${year}

Click Register Button
    click button    ${btn_register}

Verify Successful Registration
    page should contain     Your registration completed

Close MyBrowsers
    close all browsers

Generate Random Email
    ${random}   Generate Random String  8  [LETTERS]
    ${domain}   set variable    @abcmail.com
    ${email}    set variable    ${random}${domain}
    log to console    ${email}
    [Return]    ${email}