*** Settings ***
Resource    ../Resources/Common/browser_keywords.robot
Resource    ../Resources/Keywords/login_keywords.robot
Resource    ../Resources/Keywords/profile_keywords.robot
Test Teardown    Close the Browser

*** Test Cases ***
User Can Login With Valid Credential
    Given Open Browser To Lelangmobilku
    When Login With Valid Credential
    Then Navigate and verify user sukses login and see the "Profile Saya" Page at Data Diri
