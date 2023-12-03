*** Settings ***
Resource    ../pageObject/homePage/homePage.robot
Resource    ../pageObject/loginPageObject/loginPage.robot
Resource    ../base/base.robot


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123
${INVALID_USERNAME}     asdasdasdasd@asd.com
${INVALID_PASSWORD}     111abc123
${ERROR_LOGIN}          Invalid username/password


*** Test Cases ***
Login Valid Credentials
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "NGen")]
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Out")]
    Close Flight Application

Login Invalid Username
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${INVALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Invalid username/password")]
    Close Flight Application

Login Invalid Password
    Open Flight Application
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${INVALID_PASSWORD}
    Click Login Button On Login Page
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Invalid username/password")]
    Close Flight Application
