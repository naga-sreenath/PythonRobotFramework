*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
First Test
    Open Browser        https://www.linkedin.com/feed/       Chrome
    Maximize Browser Window
    Sleep    3s
    Wait Until Element Is Visible    //a[@class='main__sign-in-link']        timeout=10s
    Wait Until Element Is Enabled    //a[@class='main__sign-in-link']        timeout=10s
    Click Link    //a[@class='main__sign-in-link']


    Sleep    3s
    Close Browser