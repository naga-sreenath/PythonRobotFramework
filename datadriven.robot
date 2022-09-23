*** Settings ***

Documentation    To validate the login form
Library        SeleniumLibrary
Library        DataDriver        file=testdata.csv        encoding=utf_8        dialect=unix
Test Teardown    SeleniumLibrary.Close Browser
Resource        resource.robot
Test Template    Login with invalid credentials


*** Variables ***
${Error_Message_login}                //*[@id="login-form"]/div[1]

***Test Cases***        

Login with user ${username} and password ${password}                xyz                12345

***Keywords***
      
Login with invalid credentials
    SeleniumLibrary.Go To        ${url3}  
    [Arguments]        ${username}        ${password}
    
    Input Text                id:username                ${username}
    Input Text                id:password                ${password}
    Click Button                id:signInBtn
    Wait Until Element Is Visible    ${Error_Message_login} 
    ${result}=         Get Text    ${Error_Message_login} 
    Should Be Equal As Strings    ${result}   Incorrect username/password.




