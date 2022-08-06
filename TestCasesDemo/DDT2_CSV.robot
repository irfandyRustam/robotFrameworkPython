*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver   ../TestData/LoginData.csv

Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Cases ***
LoginTestWithCSV using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Pwd    ${password}
    Click Login Button
    Error Message Should Be Visible