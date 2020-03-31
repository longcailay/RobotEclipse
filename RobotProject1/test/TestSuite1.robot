*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test suite setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test SetUp     Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown

Default Tags    sanity

*** Test Cases ***
MyFirstTest

    [Tags]    smoke
    Log    Hello world...
    
MySecondTest
    Log    I am inside 2nd test
    Set Tags    regression1
    Remove Tags     regression1
 
MyThirdTest
    Log    I am inside 3rd test

MyFourthTest
    Log    I am inside 4th test
    
MyMaster
    Log    I am Master

MyBranch1
    Log    I am inside branch1
    Log    Edit a little on Github, :))
    Log    add keke
    
FirstSeleniumTest2
    Open Browser    https://www.google.com    Chrome
    
    Input Text    name=q    Coronavirus
    Press Keys    name=q    ENTER
    Sleep    2
    Close Browser
    Log     Test Completed

SampleLoginTest3
    [Documentation]    This is a sample login test
    Open Browser    ${URL}    Chrome
    Set Browser Implicit Wait    5
    LoginKW
    Click Element     id=welcome
    Click Element     link=Logout
    Close Browser
    Log     Test completed
    Log     This test was executed by %{os}
    
 
*** Variables ***
${URL}        https://opensource-demo.orangehrmlive.com/     #scalar
@{CREDENTIALS}    Admin    admin123       #list
&{LOGINDATA}    username=Admin    password=admin123    #dictionary

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button    id=btnLogin



   
    
    
    
    
