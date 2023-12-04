*** Settings ***
Resource        ../../base/base.robot
Variables       bookLocator.yaml
Library         Dialogs
Library         XML


*** Keywords ***
Open Book
    Click Element    ${book-button}

Book One-way flight only
    Click Element    ${one-way-button}

Book Round-way flight only
    Click Element    ${round-way-button}

Choose From City New York
    Click Element    ${from-city-button}
    Wait Until Element Is Visible    ${newyork}
    Click Element    ${newyork}

Choose From City Chicago
    Click Element    ${from-city-button}
    Wait Until Element Is Visible    ${chicago}
    Click Element    ${chicago}

Choose From City Toronto
    Click Element    ${from-city-button}
    Wait Until Element Is Visible    ${toronto}
    Click Element    ${toronto}

Choose To City London
    Click Element    ${to-city-button}
    Wait Until Element Is Visible    ${london}
    Click Element    ${london}

Choose To City Paris
    Click Element    ${to-city-button}
    Wait Until Element Is Visible    ${paris}
    Click Element    ${paris}

Choose To City Ottawa
    Click Element    ${to-city-button}
    Wait Until Element Is Visible    ${ottawa}
    Click Element    ${ottawa}

Choose Class Economy
    Click Element    ${class-button}
    Wait Until Element Is Visible    ${economy}
    Click Element    ${economy}

Choose Class First
    Click Element    ${class-button}
    Wait Until Element Is Visible    ${first}
    Click Element    ${first}

Choose Class Bussiness
    Click Element    ${class-button}
    Wait Until Element Is Visible    ${bussines}
    Click Element    ${bussines}

Choose Start Date
    Click Element    ${start-date}
    Wait Until Element Is Visible    ${01-aug}
    Click Element    ${01-aug}
    Click Element    ${date-ok-button}

Choose End Date
    Click Element    ${end-date}
    Wait Until Element Is Visible    ${31-aug}
    Click Element    ${31-aug}
    Click Element    ${date-ok-button}

Choose flight only
    Wait Until Element Is Visible    ${flight-button}
    Click Element    ${flight-button}

Choose hotel and flight
    Wait Until Element Is Visible    ${flighthotel-button}
    Click Element    ${flighthotel-button}

Choose tentative
    Wait Until Element Is Visible    ${tentative-button}
    Click Element    ${tentative-button}

Submit booking
    Click Element    ${submit-book-button}

Choose and confirm price
    Wait Until Element Is Visible    ${choose-price-button}
    Click Element    ${choose-price-button}
    Click Element    ${confirm-button}
