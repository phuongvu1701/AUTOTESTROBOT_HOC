*** Settings ***
Documentation       This is my first test case

Library             OperatingSystem

*** Keywords ***
Log My Username
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

Log My Password
    [Arguments]    ${PASSWORD}
    Log    ${PASSWORD}

Log Username And Password 1
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log    ${USERNAME}
    Log    ${PASSWORD}

Log Username And Password 2
    #Log My Username
   # Log My Password

Log My Specific Username
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

Log My Specific Username And Password
    [Arguments]    ${USERNAME2}    ${PASSWORD}   
    Log    ${USERNAME2}
    Log    ${PASSWORD}

*** Variables ***
${MY-VARIABLE}              my test variable
${MY-VARIABLE2}             my second test variable

${GOOGLE-SEARCH-FIELD}      //input[@title="Search2"]

#danh sach
@{LIST}                     test1    test2    test3    test4

&{DICTIONNARY}              username=testuser    password=demo
&{DICTIONNARY2}             username=testuser2    password=demo2


*** Test Cases ***
TEST
    [Tags]    demo    demo2
    #Log    ${MY-VARIABLE}
    #Log    ${MY-VARIABLE2}
    #log    ${GOOGLE-SEARCH-FIELD}
    #Log    ${LIST}[2]
    #Log    ${LISt}[0]
    #log    ${LIST}[1]
    #    Log    ${DICTIONNARY}[username]
    #    Log    ${DICTIONNARY}[password]
    #Log My Username
    #Log My Password
    #Log Username And Password 1
    #Log Username And Password 2
    #Log My Specific Username    ${DICTIONNARY}[username]
    #Log My Specific Username    ${DICTIONNARY2}[username]
    Log My Specific Username And Password    ${DICTIONNARY}[username]    ${DICTIONNARY}[password]
    Log My Specific Username And Password    ${DICTIONNARY2}[username]    ${DICTIONNARY2}[password]
    



