*** Settings ***
Library        SeleniumLibrary
Library        RequestsLibrary
Library        Collections
   

*** Variables ***
${Base_URI}        https://thetestingworldapi.com/
${browser}        Chrome

*** Test Cases ***
First Test
    &{data}=    Create Dictionary    name=sreenath        job=software
    Log    ${data}
    Dictionary Should Contain Key    ${data}    job
    Dictionary Should Contain Value    ${data}    software
    Log    ${data}[name]
    Log    ${data}[job]
    ${namekey}=    Get From Dictionary        ${data}        name
    Log    ${namekey}
    


    
    
    
        
   

   