*** Settings ***
Resource        ../pageObject/homePageObject/homePage.robot
Resource        ../pageObject/searchPageObject/searchPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application

*** Variables ***
${SEARCH_VALUE}            DA935
${SEARCH_INVALID_VALUE}    DA917


*** Test Cases ***
User Search Flight Code That Has Been Booked
    Click Search Button On Home Page
    Input Flight Code On Search Page    ${SEARCH_VALUE}
    Click Search Button On Search Page

User Search Flight Code Without Input Code
    Click Search Button On Home Page
    Click Search Button On Search Page

User Search Flight Code That Has Not Booked
    Click Search Button On Home Page
    Input Flight Code On Search Page    ${SEARCH_INVALID_VALUE}
    Click Search Button On Search Page