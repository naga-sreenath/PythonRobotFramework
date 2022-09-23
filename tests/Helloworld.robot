*** Settings ***
Library        SeleniumLibrary
Library        shop

***Variables***
@{numbers}        2        3

*** Test Cases ***
First Test
    Open Browser    https://www.google.com                chrome
    Maximize Browser Window
    Input Text    //input[@name="q"]    SeleniumLibrary
    Sleep    3s
    Close Browser     
    Hey Mama
    Sum Of Integers    @{numbers}
    