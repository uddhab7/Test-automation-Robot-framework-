***Settings***

Library   seleniumlibrary

Resource    ../..Variables2/VAR_Login/ARG_variables.robot


****Test Cases***
ARG Login with valid credentials
    [Arguments]    ${url}    ${username}    ${password}    ${username_field_xpath}    ${password_field_xpath}    ${submit_button_xpath}
    Open Browser    ${url}    Chrome
    Input Text      ${username_field_xpath}    ${username}
    Input Password  ${password_field_xpath}    ${password}
    Click Element   ${submit_button_xpath}