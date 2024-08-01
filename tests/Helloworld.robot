*** Settings ***
Library           SeleniumLibrary
Library           shop

*** Variables ***
@{numbers}        2    3

*** Test Cases ***
First Test
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Input Text    //input[@name="q"]    SeleniumLibrary
    Sleep    3s
    Close Browser
    Hey Mama
    Sum Of Integers    @{numbers}

Create WebDriver With Chrome Options
    Create WebDriver    Chrome    executable_path=C:/Users/Dell/Documents/chromedriver
    Go To    https://www.google.com
    Maximize Browser Window
    Sleep    3s
    ${current_url}    Get Location
    Log    ${current_url}
    ${substring}    Get Substring    ${current_url}    0    10
    Log    ${substring}
    Close Browser

*** Keywords ***
Get Substring
    [Arguments]    ${string}    ${start}    ${end}
    [Documentation]    Get a substring of a string
    ${substring}    Set Variable    ${string}[${start}:${end}]
    [Return]    ${substring}
