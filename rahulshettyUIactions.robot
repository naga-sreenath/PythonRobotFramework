*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url}        https://rahulshettyacademy.com/AutomationPractice/
${browser}        Chrome

*** Test Cases ***
First Test
    [Tags]        SMOKE
    Open Browser      ${url}        ${browser}       
    Maximize Browser Window
    Set Selenium Speed    2s

    #Selecting the radio buttons
    Wait Until Element Is Visible    //label[@for='radio1']       timeout=10s
    Select Radio Button    radioButton    radio1

    #Selecting the Check box
    Select Checkbox    option1
    Select Checkbox    option2
    Unselect Checkbox    option1

    #Selecting dropdowns

    Select From List By Index    dropdown-class-example         2
    Select From List By Value    dropdown-class-example         option3 

    #Selecting switch to window   
    Click Button    //button[@id='openwindow'] 

    Switch Window        QA Click Academy | Selenium,Jmeter,SoapUI,Appium,Database testing,QA Training Academy
    ${url1}=    Get Location
    Log To Console    ${url1}
    Switch Window    Practice Page
    ${url2}=    Get Location
    Log To Console    ${url2}

    # Selecting Switch Tab

    Click Link        xpath://a[@id='opentab']
    Switch Window    Rahul Shetty Academy
    ${url3}=    Get Location
    Log To Console    ${url3}
    Switch Window    Practice Page
    ${url4}=    Get Location
    Log To Console    ${url4}

    #Handling alerts
    Input Text    enter-name    sreenath
    Click Button    xpath://input[@id='confirmbtn']  
    Handle Alert        ACCEPT                    


      #Mouse hover actions
    Mouse Over    xpath://button[@id='mousehover']
    Click Element    xpath:(//div[@class='mouse-hover-content']/a)[1]
    ${url5}=    Get Location
    Log To Console    {url5}
    
Second Test
        [Tags]        REGRESSION
    Open Browser      ${url}        ${browser}       
    Maximize Browser Window
    Set Selenium Speed    2s

    Close Browser