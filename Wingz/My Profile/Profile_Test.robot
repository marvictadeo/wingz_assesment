*** Settings ***
Documentation    This Test Suite Contains Validation of Catalog Page
Resource         ../Global Resources/Global_Keyword.robot
Resource         Resources/Profile_Keyword.robot
Library          Browser
Test Setup       Navigate To Site    ${BASE_URL}    chromium
Test Teardown    Quit Browser


*** Test Cases ***
Verify Data Persistence After Successful Save
    [Documentation]    Validate Successful Save and Data Persistence in My Profile Page
    Given The User Is In My Profile Page
    When The User Update All Fields And Click Save
    Then The User Data Should Be Persist Even After Reload