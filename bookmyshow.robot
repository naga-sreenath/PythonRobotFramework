*** Settings ***

Documentation    To validate the login form
Library        SeleniumLibrary
Test Teardown    SeleniumLibrary.Close Browser
Resource        resource.robot

*** Variables ***
${Error_message_login}        css:alert-danger

*** Test Cases ***
Open the Browser and go to bookmyshow
    Open site
    Search for GSM mall
    Select Date
    Click on Showtime

*** Keywords ***
Open site
    Open Browser      ${url1}        ${browser}       
    Maximize Browser Window
    Set Selenium Speed    2s
Search for GSM mall
    Click Element    xpath://span[@id='3']
    Input Text     //*[@id="4"]        GSM mall
    Click Element    //*[@id="super-container"]/div[2]/div[2]/div[2]/div[1]/div/div[2]/div/div[2]/div/ul/li[1]/div/div[2]/span
Select Date
    Click Button    //*[@id="showDates"]/div/div/li[2]/a
Click on Showtime
    Click Button    //*[@id="showEvents"]/ul/li[2]/div[2]/div[1]/a/div[1]/div



