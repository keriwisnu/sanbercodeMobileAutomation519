*** Settings ***
Resource    ../base/base.robot
Resource    ../pageObject/homePage/homePage.robot
Resource    ../pageObject/loginPage/loginPage.robot
Resource    ../pageObject/searchPage/searchPage.robot
Resource    ../pageObject/bookPage/bookPage.robot


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123


*** Test Cases ***
Book: One way - Toronto - Paris - Economy - Flight only - Tentative
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Book One-way flight only
    Choose From City Toronto
    Choose To City Paris
    Choose Class Economy
    Choose Start Date
    Choose End Date
    Choose flight only
    Choose tentative
    Submit booking
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]
    Close Flight Application

Book: Round way - New York - Ottawa - First - Flight and Hotel - Tentative
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Book One-way flight only
    Choose From City New York
    Choose To City Ottawa
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose hotel and flight
    Choose tentative
    Submit booking
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]
    Close Flight Application

Book: Round way - Chicago - London - Bussiness - Flight and Hotel - Non Tentative
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Sign Out")]
    Open Book
    Wait Until Element Is Visible    ${one-way-button}
    Book One-way flight only
    Choose From City Chicago
    Choose To City London
    Choose Class Bussiness
    Choose Start Date
    Choose End Date
    Choose hotel and flight
    Submit booking
    Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked")]
    Close Flight Application
