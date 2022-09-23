*** Settings ***
Documentation    A resource file with reusable Keywords and Variables

Library    SeleniumLibrary



*** Variables ***
${user_name}        rahulshettyacademy
${password}         12345
${url}             https://rahulshettyacademy.com/seleniumPractise/#/  
${url1}            https://in.bookmyshow.com/explore/home/hyderabad
${url3}            https://www.rahulshettyacademy.com/loginpagePractise/
${browser}         Chrome


*** Keywords ***
Open the Browser 

Create webdriver        chrome        executable_path=C:/Users/Dell/Downloads/chromedriver
Go To        ${url}  

Close Browser Session
close Browser
