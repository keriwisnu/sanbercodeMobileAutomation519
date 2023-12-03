*** Settings ***
Resource        ../base/base.robot
Variables        home_locaters.yaml
*** Keywords ***
Click Sign In Button On Home Page
    Click Element    ${login}