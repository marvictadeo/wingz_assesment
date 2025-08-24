*** Settings ***
Documentation     Global Variables

*** Variables ***
# Credentials
${USERNAME}                 tadeomarvic7@gmail.com
${PASSWORD}                 pass1234

# Application URL
${BASE_URL}                 https://auth.wingz.me/auth/signin

# Locators
${INPUT_USERNAME}    //input[@id="username"]
${INPUT_PASSWORD}    //input[@id="password"]
${BTN_LOGIN}          //button[@type="submit" and contains(text(), "Sign In")]
${SIGNOUT}            (//*[contains(text(), "Sign Out")])[1]
${ACCOUNT}        //a[@href='/account' and @ui-sref='profile.edit-profile' and text()='Account']


