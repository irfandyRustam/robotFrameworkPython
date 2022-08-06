*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}  ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link    xpath://a[normalize-space()='Log in']
    input text    id:Email  abc12345@gmail.com
    input password    id:Password   Test@12345
    click element    xpath://button[normalize-space()='Log in']
