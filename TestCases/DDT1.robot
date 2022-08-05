*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Cases ***          username                password
Right User Empty Password   admin@yourstore.com     ${EMPTY}
Right User Wrong Password   admin@yourstore.com     xyz
Wrong User Right Password   adm@yourstore.com       admin
Wrong User Empty Password   adm@yourstore.com       ${EMPTY}
Wrong User Wrong Password   adm@yourstore.com       xyz

*** Keywords ***
Invalid Login
    [Arguments]    ${username}      ${password}
    Input Username    ${username}
    Input Pwd    ${password}
    Click Login Button
    Error Message Should Be Visible