*** Settings ***

Documentation    To validate the login form
Library        SeleniumLibrary
Test Teardown    SeleniumLibrary.Close Browser
Resource        resource.robot
Test Template    Login with invalid credentials


*** Variables ***
${Error_Message_login}                //*[@id="login-form"]/div[1]

***Test Cases***        username        password
Invalid username        asded        sreenath
Invalid password        rahulshettyacademy        password
Special Character        #$#$            learning    

***Keywords***
Login with invalid credentials
    [Arguments]        ${username}        ${password}
    Go to loginpagePractises
    Enter invalid credentials

Go to loginpagePractises
    Open Browser      ${url3}        ${browser}       
    Maximize Browser Window
Enter invalid credentials
    [Arguments]        ${username}        ${password}

    Input Text     id:username       ${username}
    Input Text     id:password       ${password}
    Click Button    id:signInBtn
    Wait Until Element Is Visible    ${Error_Message_login} 
    ${result}=         Get Text    ${Error_Message_login} 
    Should Be Equal As Strings    ${result}   Incorrect username/password.




