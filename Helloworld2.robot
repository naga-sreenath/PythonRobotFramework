*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
First Test
    Open Browser        https://www.amazon.in/        Chrome
    Maximize Browser Window
    Sleep    3s
    Input Text    //input[@id='twotabsearchtextbox']    laptops

    Click Button    //input[@id='nav-search-submit-button']

    Sleep    3s
    Close Browser