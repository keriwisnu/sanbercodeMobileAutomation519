*** Settings ***
Resource    ../pageObject/homePage/homePage.robot
Resource    ../pageObject/loginPageObject/loginPage.robot
Resource    ../base/base.robot
Resource    ../pageObject/search/searchPage.robot


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123
${SEARCH}               DA935
${INVALID_SEARCH}       A7NB0M


*** Test Cases ***
Search with Logged in
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "NGen")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Out")]
    Open Search
    Wait Until Element Is Visible    ${search-input}
    Input Search    ${SEARCH}
    Click Search Button
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Toronto")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Paris")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "935")]
    Close Flight Application

Search with Logged in using invalid Flight Number
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "NGen")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Out")]
    Open Search
    Wait Until Element Is Visible    ${search-input}
    Input Search    ${INVALID_SEARCH}
    Click Search Button
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Please enter valid Flight Number")]
    Close Flight Application

Search without Logged in
    Open Flight Application
    Page Should Not Contain Element    ${search-input}
    Close Flight Application
