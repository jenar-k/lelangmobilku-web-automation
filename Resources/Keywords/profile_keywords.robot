*** Settings ***
Library    SeleniumLibrary
Variables  ../Locators/profile_locators.yaml

*** Keywords ***
Navigate and verify user sukses login and see the "Profile Saya" Page at Data Diri
    Wait Until Element Is Visible    ${profile_saya}    15s
    Wait Until Element Is Visible    ${data_pribadi}    15s
    Element Should Contain           ${data_pribadi}    Data Pribadi
    Capture Page Screenshot