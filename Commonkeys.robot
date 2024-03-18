***Settings***
Library     SeleniumLibrary
#Resource        ../Variable2/VAR_Registration/VAR2.robot






***Keywords***

Navigate to URL  
    SeleniumLibrary.Open Browser        ${URL}    ${BROWSER}
    Maximize Browser Window
    sleep   3

Verify Registration Page Elements
#First name 
    Page Should Contain Element    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input


#Last name
    Page Should Contain Element    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input

#Address
    page should contain Element     xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea

#Phone number
    page should contain Element     xpath://*[@id="basicBootstrapForm"]/div[4]/div/input


#Email address
    Page Should Contain Element    xpath://*[@id="eid"]/input


#Password
    Page Should Contain Element    xpath://*[@id="firstpassword"]


#Confirm password
    Page Should Contain Element    xpath://*[@id="secondpassword"]


#Submit button
    Page Should Contain Element    xpath://*[@id="submitbtn"]

Fill Registration Form
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[1]/input    ${FIRST_NAME}
    sleep   2s
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[1]/div[2]/input     ${LAST_NAME}
    sleep   2s
    Input Text     xpath://*[@id="basicBootstrapForm"]/div[2]/div/textarea      ${Address}
    sleep   2s
    Input Text    xpath://*[@id="basicBootstrapForm"]/div[4]/div/input       ${Phone}
    sleep   2s
    Input Text    xpath://*[@id="eid"]/input         ${EMAIL}
    sleep   2s

    #Gender
    SeleniumLibrary.Select radio button   radiooptions  Male

    #selecting Hobbies
    SeleniumLibrary.Select checkbox   Cricket 
    sleep   2s

    #Language Selecting
    Click Element       xpath://*[@id="msdd"]
    Click Element       xpath://*[@id="basicBootstrapForm"]/div[7]/div/multi-select/div[2]/ul/li[3]/a
    sleep   2s
    #Selectiing Skills
    SeleniumLibrary.Select From List By Label     Skills   APIs

    sleep   2s

    #country selectng
    Execute JavaScript    document.getElementById('countries').options.add(new Option('${Manually_entered_country}'));
    Select From list by label      countries      ${Manually_entered_country}

    #Selecting country
    SeleniumLibrary.Select From List By value  id:country    Australia
    sleep       2

    #Datetime Selecting
    Select From List By Value    ${Year_dropdown}    ${selected_year}
     sleep  2

    Select From List By Value     ${Monts_dropdown}    ${selected_month}
    sleep   2

    Select From List By Value       ${Day_dropdrwn}     ${selected_day}
    sleep   2

    Input Text    xpath://*[@id="firstpassword"]      ${PASSWORD}
    sleep   2s
    Input Text    xpath://*[@id="secondpassword"]    ${PASSWORD}

    sleep   5s
   
Scroll Page
    #[Arguments]  ${-1000}  ${1000}
    #Execute JavaScript  window.scrollTo(${x_offset}, ${y_offset})

    execute javascript  window.scrollTo(0,1500)
    Execute JavaScript    window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
    sleep       7s

Choose image    
     seleniumlibrary.Choose File     ${File Input Locator}      ${File_path}
  

Click on Submit button
    Click Element    xpath://*[@id="submitbtn"] 
    sleep       5s 
Close browser
    close All browser




