*** Settings ***
Library    SeleniumLibrary
Variables  ../Locators/deposit_locators.yaml

*** Keywords ***
Navigate To Deposit Page
    Wait Until Element Is Visible    ${menu_deposit}          15s
    Click Element                    ${menu_deposit}
    Capture Page Screenshot

Verify User Is On Deposit Page
    Wait Until Element Is Visible    ${deposit_page_title}    15s
    Element Should Contain           ${deposit_page_title}    Deposit
    Capture Page Screenshot
