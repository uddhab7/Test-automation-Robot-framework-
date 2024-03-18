*** Settings ***
Library    SeleniumLibrary 

Resource    ../../Keywords2/Commonkeys.robot
Resource    ../../Variables2/VAR_Registration/VAR2.robot


#Suite Setup     Open browser    
#Suite Teardown     Close browser 




***Test Cases***
Registration page validation with valid credentials 
    Navigate to URL   
    Verify Registration Page Elements
    Scroll Page
    Fill Registration Form
    Choose image
    Click on Submit button
    

    