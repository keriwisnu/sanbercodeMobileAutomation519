*** Settings ***
Resource        ../pageObject/homePageObject/homePage.robot
Resource        ../pageObject/bookPageObject/bookPage.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application

*** Test Cases ***
User Booking Round Trip Flight From New York To London
    Click Book Button On Home Page
    Click Round Trip Button On Book Page
    Click From City Dropdown On Book Page
    Choose New York City on Book Page
    Click To City Dropdown On Book Page
    Choose London City on Book Page
    Click Class Dropdown On Book Page
    Choose Economy Class on Book Page
    Click Start Date On Book Page
    Choose Start Date 12 Agutus 2019
    Click OK on Date
    Click End Date On Book Page
    Choose End Date 17 Agutus 2019
    Click OK on Date
    Click Flight Radio Button On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking Round Trip Flight From Chicago To Paris
    Click Book Button On Home Page
    Click Round Trip Button On Book Page
    Click From City Dropdown On Book Page
    Choose Chicago City on Book Page
    Click To City Dropdown On Book Page
    Choose Paris City on Book Page
    Click Class Dropdown On Book Page
    Choose First Class on Book Page
    Click Start Date On Book Page
    Choose Start Date 12 Agutus 2019
    Click OK on Date
    Click End Date On Book Page
    Choose End Date 17 Agutus 2019
    Click OK on Date
    Click Flight-Hotel Radio Button On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking Round Trip Flight From Toronto To Ottawa
    Click Book Button On Home Page
    Click Round Trip Button On Book Page
    Click From City Dropdown On Book Page
    Choose Toronto City on Book Page
    Click To City Dropdown On Book Page
    Choose Ottawa City on Book Page
    Click Class Dropdown On Book Page
    Choose Business Class on Book Page
    Click Start Date On Book Page
    Choose Start Date 12 Agutus 2019
    Click OK on Date
    Click End Date On Book Page
    Choose End Date 17 Agutus 2019
    Click OK on Date
    Click Flight-Hotel Radio Button On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking One Way Flight From New York To London
    Click Book Button On Home Page
    Click One Way Button On Book Page
    Click From City Dropdown On Book Page
    Choose New York City on Book Page
    Click To City Dropdown On Book Page
    Choose London City on Book Page
    Click Class Dropdown On Book Page
    Choose Economy Class on Book Page
    Click Start Date On Book Page
    Choose Start Date 12 Agutus 2019
    Click OK on Date
    Click End Date On Book Page
    Choose End Date 17 Agutus 2019
    Click OK on Date
    Click Checkbox Day On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking One Way Flight From Chicago To Paris
    Click Book Button On Home Page
    Click One Way Button On Book Page
    Click From City Dropdown On Book Page
    Choose Chicago City on Book Page
    Click To City Dropdown On Book Page
    Choose Paris City on Book Page
    Click Class Dropdown On Book Page
    Choose First Class on Book Page
    Click Start Date On Book Page
    Choose Start Date 12 Agutus 2019
    Click OK on Date
    Click End Date On Book Page
    Choose End Date 17 Agutus 2019
    Click OK on Date
    Click Checkbox Day On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking One Way Flight From Toronto To Ottawa
    Click Book Button On Home Page
    Click One Way Button On Book Page
    Click From City Dropdown On Book Page
    Choose Toronto City on Book Page
    Click To City Dropdown On Book Page
    Choose Ottawa City on Book Page
    Click Class Dropdown On Book Page
    Choose Business Class on Book Page
    Click Start Date On Book Page
    Choose Start Date 12 Agutus 2019
    Click OK on Date
    Click End Date On Book Page
    Choose End Date 17 Agutus 2019
    Click OK on Date
    Click Checkbox Day On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking One Way Flight Without Input Anything 
    Click Book Button On Home Page
    Click One Way Button On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page

User Booking Round Trip Flight Without Input Anything 
    Click Book Button On Home Page
    Click Round Trip Button On Book Page
    Click Button Book on Book Page
    Click Price on Book Page
    Click Confirm Button On Book Page


