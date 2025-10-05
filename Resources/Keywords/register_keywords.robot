*** Settings ***
Library    SeleniumLibrary
Variables  ../Locators/register_data_diri_locators.yaml
Variables  ../Locators/register_data_pembayaran_locators.yaml
Variables  ../Locators/common_locators.yaml
Variables  ../Locators/login_locators.yaml
Resource   ../Common/utils_keywords.robot
Resource   ../Keywords/upload_keywords.robot

*** Keywords ***
Go to Register Page
    Wait Until Page Contains Element    ${daftar_akun_button}                    10s
    Element Should Be Visible           ${daftar_akun_button}
    Click Element                       ${daftar_akun_button}

Verify user is on Register Page
    Wait Until Page Contains Element    ${title_page_register}               10s
    Element Should Be Visible           ${title_page_register}

Fill Register Form in Data Diri with valid data
    ${email}=    Generate Unique Email
    Input Text                ${first_name_field}                            Jenar
    Input Text                ${last_name_field}                             Kuswidiardi
    Input Text                ${birth_place_field}                           Pati
    Click Element             ${birth_date_field}    
    Click Element             ${birth_date_select_date}
    Click Element             ${birth_date_select_button}
    Input Text                ${nomor_ktp_field}                            3276012304980009
    Upload KTP File           Resources/TestFiles/ktp.jpg
    Click Element             ${massa_berlaku_ktp_seumur_hidup_checkbox}
    Click Element             ${provinsi_field}
    Sleep    2s
    Input Text                ${provinsi_field}                              DI Yogyakarta
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Click Element             ${kota_field} 
    Sleep    5s                                 
    Input Text                ${kota_field}                                  Yogyakarta
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Input Text                ${alamat_domisili_field}                       Jl. Raya No. 123
    Input Text                ${nomor_telepon_field}                         081223456709
    Click Element             ${pekerjaan_field}
    Sleep    2s                             
    Input Text                ${pekerjaan_field}                             Pegawai Swasta
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Click Element             ${jenis_kendaraan_field} 
    Sleep    2s                      
    Input Text                ${jenis_kendaraan_field}                       Mobil
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Click Element             ${kendaraan_dicari_field}
    Sleep    2s                      
    Input Text                ${kendaraan_dicari_field}                      Kendaraan Penumpang
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Click Element             ${tujuan_beli_field}
    Sleep    2s                           
    Input Text                ${tujuan_beli_field}                           Pribadi
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Input Text                ${email_field}                                 ${email}
    Input Text                ${password_field}                              Password123
    Input Text                ${confirm_password_field}                      Password123
    Click Element             ${selanjutnya_button}
    Sleep    2s
    Capture Page Screenshot
    [Return]                  ${email}


Validasi user berada di halaman Data Pembayaran
    Wait Until Page Contains Element    ${data_pembayaran_information}               10s
    Element Should Be Visible           ${data_pembayaran_information}
    Capture Page Screenshot

Fill Register Form in Data Pembayaran with valid data
    Input Text                ${nomor_rekening_field}                        8312319529
    Click Element             ${sumber_dana_option}
    Sleep    2s                      
    Input Text                ${sumber_dana_option}                          Gaji
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Click Element             ${bank_option}
    Sleep    2s                      
    Input Text                ${bank_option}                                 BCA
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Click Element             ${metode_pembayaran_option}
    Sleep    2s                      
    Input Text                ${metode_pembayaran_option}                    Debit
    Press Keys                NONE                                           ENTER
    Sleep    2s
    Input Text                ${nama_pemilik_field}                          Jenar K
    Sleep    2s
    Capture Page Screenshot
    Click Element             ${daftar_button}

Muncul toast sukses data berhasil ditambahkan
    Wait Until Page Contains Element    ${toast_sukses}                       10s
    Wait Until Element Is Visible       ${toast_sukses}                       10s
    Element Should Be Visible           ${toast_sukses}
    Capture Page Screenshot
