*** Settings ***
Resource    ../Resources/Common/browser_keywords.robot
Resource    ../Resources/Keywords/login_keywords.robot
Resource    ../Resources/Keywords/deposit_keywords.robot
Resource    ../Resources/Keywords/profile_keywords.robot
Test Teardown    Close the Browser

*** Test Cases ***
User Can Navigate To Deposit Module
    Given Open Browser To Lelangmobilku
    When Login With Valid Credential
    And Navigate and verify user sukses login and see the "Profile Saya" Page at Data Diri
    And Navigate To Deposit Page
    Then Verify User Is On Deposit Page
