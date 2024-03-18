***Settings***
Library   seleniumlibrary
Library   operatingsystem



***Keywords***
#Login keywords
Open Browser to Login
  [Arguments]
    seleniumlibrary.Open Browser   ${urli}  ${browser}
    maximize Browser window
    sleep   3

Valid Username
    # username
    [Arguments]   ${Username}
    Input text  xpath://*[@id="username"]     ${username}
    #operatingsystem.set environment variable  user    Rakshya
    #${user}= operatingsystem.get environment variable   user


    sleep   2s
Valid Pssword
    [Arguments]   ${PasswordL}
    Input text  xpath://*[@id="password"]     ${passwordL}
    sleep   2s

Submit Login Form
  [Arguments]
    Click element   xpath://*[@id="submit"]
    sleep   5s



