*** Settings ***
Library    SeleniumLibrary
Variables    ../Resources/Pshop_locators.yaml

*** Variables ***
${base_url}    http://automationpractice.com
${firefox}    ff

*** Keywords ***
Open Browser With Firefox
    Open Browser    url=${base_url}    browser=${firefox}

Click Button Sign In
    Click Element   ${SignInBtn}
    Sleep    3

Click Button Create
    Click Element    ${CreateBtn}
    Sleep    3

Verify Invalid Email Address
    Wait Until Element Is Visible    ${InvalidEmail}

Input Email Address
    Input Text    ${InputEmailAddress}    text=sipakargigi@gmail.com

Click Button Register
    Click Element    ${RegisterBtn}
    Sleep    3

Verify Invalid Create
    Wait Until Element Is Visible    ${InvalidCreate}
Click Title
    Click Element    ${TitleMr}
Input First Name
    Input Text    ${CustomerFirstname}    text=Si Pakar
Input Last Name
    Input Text    ${CustomerLastName}    text=Gigi
Input Password
    Input Text    ${InputPass}    text=asusG550JK+
Select Day
    Select From List By Value    ${SelectDay}    14
Select Month
    Select From List By Value    ${SelectMonth}    5
Select Year
    Select From List By Value    ${SelectYear}    1997
Input FN Address
    Input Text    ${InputFNAddress}    text=Si Pakar 
Input LN Address
    Input Text    ${InputLNAddress}    text=Gigi
Input Company
    Input Text    ${InputCompany}    text=PT. Joyoboyo
Input Address
    Input Text    ${Address}    text=DIY
Input City
    Input Text    ${City}    text=Sleman
Select State
    Select From List By Value    ${State}    Arizona
Input Postal
    Input Text    ${Postal}    text=55555
Select Country
    Select From List By Value    ${Country}    United States
Input Additional Information
    Input Text    ${Other}    text=None
Input Phone Mobile
    Input Text    ${PhoneMobile}    text=0895380719756
Input Address Alias
    Input Text    ${AddressAlias}    text=SiPakarGigi
Verify Account
    Wait Until Element Is Visible    ${Account}
Click SignOut
    Click Element    ${SignOut}
    Sleep    3
Verify Login Form
    Wait Until Element Is Visible    ${Auth}
Input Invalid Email Sign In
    Input Text    ${InputEmail}    text=sipakar@gmail.com
Input Valid Email Sign In
    Input Text    ${InputEmail}    text=sipakargigi@gmail.com
Input Valid Password Sign In
    Input Text    ${InputPassword}    text=asusG550JK+
Input Invalid Password Sign In
    Input Text    ${InputPassword}    text=asusG550JK
Click Login Button
    Click Element    ${LoginBtn}
    Sleep    3
Verify Sign In Auth Failed
    Wait Until Element Is Visible    ${InvalidLogin}
Close Edge Browser
    Close Browser