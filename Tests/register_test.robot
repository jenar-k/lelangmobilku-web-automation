*** Settings ***
Resource    ../Resources/Common/browser_keywords.robot
Resource    ../Resources/Keywords/register_keywords.robot
Test Teardown    Close Browser

*** Test Cases ***
User Can Register Successfully
    Given Open Browser To Lelangmobilku
    When Go to Register Page
    And Verify user is on Register Page
    And Fill Register Form in Data Diri with valid data
    And Validasi user berada di halaman Data Pembayaran
    And Fill Register Form in Data Pembayaran with valid data
    Then Muncul toast sukses data berhasil ditambahkan