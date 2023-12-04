*** Settings ***
Resource        ../base/base.robot
Variables       home-locator.yaml

*** Keywords ***
Click Sign In Button On Homepage
    [Arguments]    ${log-in}
    Wait Until Element Is Visible         ${sign-in-button}
    Click Element    ${sign-in-button}
