*** Settings ***
Resource        ../base/base.robot
Variables       search-locators.yaml


*** Keywords ***
Input Flight Code On Search Page
    [Arguments]       ${search}
    Wait Until Element Is Visible    ${search-input}
    Input Text        ${search-input}    ${search}

Click Search Button On Search Page
    Click Element    ${search-button}
