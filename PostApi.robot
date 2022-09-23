*** Settings ***
Library        SeleniumLibrary
Library        RequestsLibrary
Library        Collections
   

*** Variables ***
${Base_URL}        https://automationexercise.com/
${browser}        Chrome
&{body}            

*** Test Cases ***

First Test

    &{body}=    Create Dictionary        name=sreenath        email=sreenth@gmail.com        title=Mr        birth_date=12312        birth_year=1983        firstname=injeti        lastname=srenath        company=firstname    city=hyderabad
    Log    ${body}

    ${response}=    GET        ${Base_URL}/api/productsList        expected_status=200   
    Log    ${response}
    Log    ${response.json()}
    Set Global Variable    ${response}
    Dictionary Should Contain Key     ${response.json()}    products
    Dictionary Should Contain Key     ${response.json()}    responseCode
    @{products}=    Get From Dictionary    ${response.json()}    products
    Log    ${products}
    Status Should Be        200        ${response}
    Should Be Equal As Strings    ${response.json()}[products][0][price]   Rs. 500
    Should Be Equal As Strings    ${response.json()}[products][1][brand]   H&M

    




    
    
    
        
   

   