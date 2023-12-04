*** Settings ***
Resource    ../base/base.robot
Resource    ../HomePage/homePage.robot
Variables   loginLocator.yaml

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123


*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible       ${username-input}
    Input Text     ${username-input}    ${username}

Input Password On Login Page
    [Arguments]    ${password}
    Wait Until Element Is Visible       ${password-input}
    Input Text     ${password-input}    ${password}

Click Sign In Button On Login Page
    Click Element    ${sign-in-button}

Verify Login
    Element Should Contain Text    ${verify-login}    NGen Digital

Success Login with Valid Credential
    Open Flight Application
    Click Sign In Button On Homepage    
    Input Username On Login Page        ${VALID_USERNAME}
    Input Password On Login Page        ${VALID_PASSWORD}
    Click Sign In Button On Login Page  