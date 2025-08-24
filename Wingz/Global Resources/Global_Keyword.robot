*** Settings ***
Documentation    Global Keywords for Test Cases.
Library          Browser
Resource         Global_Variable.robot

*** Keywords ***
Navigate To Site
    [Documentation]    Navigate to specified URL using Browser Library
    [Arguments]    ${url}    ${browser}
    New Browser    ${browser}    headless=False
    New Page       ${url}
    Set Viewport Size    1920    1080

Quit Browser
    [Documentation]    Closes browser after delay
    Sleep    0.5s
    Close Browser

Login To Wingz
    [Documentation]    Logs into Wingz application using provided credentials
    [Arguments]    ${username}    ${password}
    Fill Text    ${INPUT_USERNAME}    ${username}
    Fill Text    ${INPUT_PASSWORD}    ${password}
    Click    ${BTN_LOGIN}
    Wait For Elements State    ${SIGNOUT}     visible    timeout=10s