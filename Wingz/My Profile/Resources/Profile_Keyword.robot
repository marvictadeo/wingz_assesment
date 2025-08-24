*** Settings ***
Documentation    Global Keywords for Test Cases.
Library          Browser
Resource         Profile_Variables.robot
Resource         ../../Global Resources/Global_Keyword.robot
Resource         ../../Global Resources/Global_Variable.robot

*** Keywords ***
The User Is In My Profile Page
    [Documentation]    Navigate to My Profile Page
    Login To Wingz    ${USERNAME}    ${PASSWORD}
    Click    ${ACCOUNT}
    Wait For Elements State    ${MY_PROFILE_TAB}    visible    timeout=10s
    Click    ${MY_PROFILE_TAB}
    Wait For Elements State    ${MY_PROFILE_TITLE}    visible    timeout=10s

Set Random Value In Variables
    [Documentation]    Set random values
    ${RANDOM}    Evaluate    ''.join(random.choices(string.ascii_lowercase, k=random.randint(3,10))).capitalize()    modules=random,string
    RETURN    ${RANDOM}

The User Update All Fields And Click Save
    [Documentation]    Update all fields in My Profile Page and click Save
    ${RANDOM_FNAME}    Set Random Value In Variables
    ${RANDOM_LNAME}    Set Random Value In Variables
    ${RANDOM_HOME}    Set Random Value In Variables
    ${RANDOM_BIO}    Set Random Value In Variables
    
    ${is_male_selected}=    Run Keyword And Return Status    Wait For Elements State    ${RADIO_MALE_SELECTED}   visible    timeout=5s
    
    Run Keyword If    ${is_male_selected}    Click    ${RADIOBTN_FEMALE}
    ...    ELSE    Click    ${RADIOBTN_MALE}
    Set Test Variable    ${IS_MALE_SELECTED}     ${is_male_selected}   

    Fill Text    ${TXT_FIRSTNAME}    ${RANDOM_FNAME}
    Fill Text    ${TXT_LASTNAME}    ${RANDOM_LNAME}
    Fill Text    ${TXT_HOME_CITY}    ${RANDOM_HOME}
    Fill Text    ${TXT_BIO}    ${RANDOM_BIO}
    
    Click    ${BTN_SAVE}

    Wait For Elements State    ${BTN_SAVED}    visible    timeout=10s
    
    Set Global Variable    ${RANDOM_FNAME}
    Set Global Variable    ${RANDOM_LNAME}
    Set Global Variable    ${RANDOM_HOME}
    Set Global Variable    ${RANDOM_BIO}


The User Data Should Be Persist Even After Reload
    [Documentation]    Verify that the updated data persists after reloading the page
    Reload
    Wait For Elements State    ${TXT_BIO}    visible    timeout=10s
    ${is_male_selected_now}=    Run Keyword And Return Status    Wait For Elements State    ${RADIO_MALE_SELECTED}   visible    timeout=5s
    ${first_name}=    Get Text    ${TXT_FIRSTNAME}
    ${last_name}=    Get Text      ${TXT_LASTNAME}
    ${home_city}=    Get Text      ${TXT_HOME_CITY}
    ${bio}=    Get Text     ${TXT_BIO}
    
    Should Not Be Equal    ${is_male_selected_now}    ${IS_MALE_SELECTED}
    Should Be Equal    ${first_name}    ${RANDOM_FNAME}
    Should Be Equal    ${last_name}     ${RANDOM_LNAME}
    Should Be Equal    ${home_city}     ${RANDOM_HOME}
    Should Be Equal    ${bio}           ${RANDOM_BIO}