*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store
    click link    xpath://a[normalize-space()='Log in']
    ${"email_txt"}  set variable    id:Email
#    element should not be visible    ${"email_txt"}
    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}
    input text    ${"email_txt"}    leviAckerman@gmail.com
    sleep    2
    clear element text    ${"email_txt"}
    sleep    2
    close browser

*** Keywords ***