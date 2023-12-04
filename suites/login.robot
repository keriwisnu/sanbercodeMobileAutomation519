*** Settings ***
Resource        ../pageObject/HomePage/homePage.robot
Resource        ../pageObject/loginPage/loginPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application


*** Variables ***
${VALID_USERNAME}      support@ngendigital.com
${VALID_PASSWORD}      abc123
${INVALID_USERNAME}    sistem@ngendigital.com
${INVALID_PASSWORD}    sis123


*** Test Cases ***
Login Valid
    Open Flight Application
    Click Sign In Button On Homepage 
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Homepage
    Close All Applications


Login Invalid
    Open Flight Application
    Click Sign In Button On Homepage
    Input Username On Login Page    ${INVALID_USERNAME}
    Input Password On Login Page    ${INVALID_PASSWORD}
    Click Sign In Button On Homepage
    Close All Applications