*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Lelangmobilku
    Open Browser                https://jkt:RsonSmW7UgLUKm9@auction.lelangmobilku.co.id            chrome
    Maximize Browser Window

Close the Browser
    Close All Browsers
