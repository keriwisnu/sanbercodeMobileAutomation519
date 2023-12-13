*** Settings ***
Resource        ../base/base.robot
Variables       home-locators.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element    ${login_button}

Click Search Button On Home Page
    Click Element    ${search-home-button}

Click Book Button On Home Page
    Click Element    ${book-home-button}

