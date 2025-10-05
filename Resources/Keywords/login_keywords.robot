*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop
Variables  ../Locators/login_locators.yaml

*** Keywords ***
Login With Valid Credential
    Wait Until Element Is Visible    ${Login_header}           15s
    Element Should Be Visible        ${Login_header}
    Wait Until Element Is Visible    ${email_field}            15s
    Input Text                       ${email_field}            ${valid_email}
    Input Text                       ${password_field}         ${valid_password}
    Log To Console                                            ⚠️ Please complete CAPTCHA manually (I’m not a robot)
    Sleep                                                      25s    
    Click Element                    ${syarat_dan_ketentuan}
    Click Element                    ${login_button}
    