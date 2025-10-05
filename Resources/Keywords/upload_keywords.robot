*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   ../Common/utils_keywords.robot

*** Keywords ***
Upload KTP File
    [Arguments]    ${file_relative_path}=Resources/TestFiles/ktp.jpg
    ${abs}=    Get File Absolute Path    ${file_relative_path}

    ${locator}=    Set Variable    xpath=//input[@type='file' and (@name='uploadKtp' or contains(@placeholder,'Upload KTP'))]

    # Pastikan file ada
    File Should Exist    ${abs}

    # Jika input hidden, ubah sementara agar terlihat
    Execute JavaScript    var el=document.querySelector('input[name="uploadKtp"]');if(el){el.classList.remove('hidden');el.style.display='block';el.style.visibility='visible';}

    Choose File    ${locator}    ${abs}

    # Tunggu file berhasil di-upload (biasanya muncul preview/teks)
    Wait Until Page Contains Element    xpath=//button[contains(.,'Upload File')]    10s
    Log To Console    ✅ File ${abs} uploaded successfully.
