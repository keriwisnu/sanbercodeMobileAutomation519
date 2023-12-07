*** Settings ***
Resource        ../base/base.robot
Variables       book-locators.yaml


*** Keywords ***
Click One Way Button On Book Page
    Wait Until Element Is Visible    ${oneway-button}
    Click Element    ${oneway-button}

Click Round Trip Button On Book Page
    Wait Until Element Is Visible    ${roundtrip-button}
    Click Element    ${roundtrip-button}

Click From City Dropdown On Book Page
    Wait Until Element Is Visible    ${fromcity-dropdown}
    Click Element    ${fromcity-dropdown}
Choose New York City on Book Page
    Wait Until Element Is Visible    ${newyork}
    Click Element    ${newyork}
Choose Chicago City on Book Page
    Wait Until Element Is Visible    ${chicago}
    Click Element    ${chicago}
Choose Toronto City on Book Page
    Wait Until Element Is Visible    ${toronto}
    Click Element    ${toronto}
Click To City Dropdown On Book Page
    Wait Until Element Is Visible    ${tocity-dropdown}
    Click Element    ${tocity-dropdown}
Choose London City on Book Page
    Wait Until Element Is Visible    ${london}
    Click Element    ${london}
Choose Paris City on Book Page
    Wait Until Element Is Visible    ${paris}
    Click Element    ${paris}
Choose Ottawa City on Book Page
    Wait Until Element Is Visible    ${ottawa}
    Click Element    ${ottawa}
Click Class Dropdown On Book Page
    Wait Until Element Is Visible    ${class-dropdown}
    Click Element    ${class-dropdown}
Choose Economy Class on Book Page
    Wait Until Element Is Visible    ${economy}
    Click Element    ${economy}
Choose First Class on Book Page
    Wait Until Element Is Visible    ${first}
    Click Element    ${first}
Choose Business Class on Book Page
    Wait Until Element Is Visible    ${business}
    Click Element    ${business}
Click Start Date On Book Page
    Wait Until Element Is Visible    ${startdate}
    Click Element    ${startdate}
Choose Start Date 12 Agutus 2019
    Wait Until Element Is Visible    ${button-12august}
    Click Element    ${button-12august}
Click OK on Date
    Wait Until Element Is Visible    ${buttonok-date}
    Click Element    ${buttonok-date}
Click End Date On Book Page
    Wait Until Element Is Visible    ${enddate}
    Click Element    ${enddate}
Choose End Date 17 Agutus 2019
    Wait Until Element Is Visible    ${button-17august}
    Click Element    ${button-17august}
Click Flight Radio Button On Book Page
    Wait Until Element Is Visible    ${flight-radioButton}
    Click Element    ${flight-radioButton}
Click Flight-Hotel Radio Button On Book Page
    Wait Until Element Is Visible    ${flight-hotel-radiobutton}
    Click Element    ${flight-hotel-radiobutton}
Click Checkbox Day On Book Page
    Wait Until Element Is Visible    ${checkbox-day}
    Click Element    ${checkbox-day}
Click Button Book on Book Page
    Wait Until Element Is Visible    ${book-button}
    Click Element    ${book-button}
Click Price on Book Page
    Wait Until Element Is Visible    ${price-button}
    Click Element    ${price-button}
Click Confirm Button On Book Page
    Wait Until Element Is Visible    ${confirm-button}
    Click Element    ${confirm-button}