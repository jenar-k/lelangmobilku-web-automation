*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    String
Library    OperatingSystem

*** Keywords ***
Generate Unique Email
    ${rand}=    Generate Random String    6    [LETTERS]
    ${email}=   Catenate    SEPARATOR=    jenar.test    ${rand}    @example.com
    [Return]    ${email}

*** Keywords ***
Get File Absolute Path
    [Arguments]    ${relative_path}
    ${abs}=    Normalize Path    ${EXECDIR}/${relative_path}
    [Return]    ${abs}

