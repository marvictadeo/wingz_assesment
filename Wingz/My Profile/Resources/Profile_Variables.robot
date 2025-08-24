*** Settings ***
Documentation     My Profile Page Variables

*** Variables ***
# Locators for My Profile Page
${MY_PROFILE_TAB}    //a[@href='/account/profile' and @ui-sref='profile.my-profile' and normalize-space()='My Profile']
${MY_PROFILE_TITLE}    //h2[text()='My Profile']
${RADIOBTN_FEMALE}    //wz-radio[@value='F']//label
${RADIOBTN_MALE}    //wz-radio[@value='M']//label
${RADIO_MALE_SELECTED}    //wz-radio[@value='M']//label[contains(@class, 'checked')]
${TXT_FIRSTNAME}    //input[@name='firstName']
${TXT_LASTNAME}    //input[@name='lastName']
${TXT_HOME_CITY}    //input[@name='location']
${TXT_BIO}    //textarea[@name='bio']
${BTN_SAVE}    //button[@type='submit' and contains(., 'Save')]
${BTN_SAVED}    //button[@type='submit' and contains(., 'Saved !')]

# Test Data

