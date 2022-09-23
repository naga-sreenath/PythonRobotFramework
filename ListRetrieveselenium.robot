*** Settings ***

Documentation    To validate the login form
Library        SeleniumLibrary
Test Teardown    SeleniumLibrary.Close Browser
Resource        resource.robot

*** Variables ***
${Error_message_login}        css:alert-danger

*** Test Cases ***
Open the Browser and search for potato
    Open site
    Search with keyword Potato
    Add to cart
    Go to cart and check value

*** Keywords ***
Open site
    Open Browser      ${url}        ${browser}       
    Maximize Browser Window
    Set Selenium Speed    2s
Search with keyword Potato
    Input Text     class:search-keyword        Potato
Add to cart
    Click Button    xpath:(//button[@type='button'])[2]
Go to cart and check value
    Element Text Should Be    //*[@id="root"]/div/header/div/div[3]/div[1]/table/tbody/tr[1]/td[3]/strong    1



