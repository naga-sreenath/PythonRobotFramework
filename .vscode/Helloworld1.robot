*** Settings ***
Library        SeleniumLibrary

*** Test Cases ***
First Test
    Open Browser    https://www.google.com                chrome
    Input Text    //input[@name="q"]    SeleniumLibrary
    Click Button    (//input[@name="btnK"])[2]
    Sleep    3s
    Close Browser