*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Pshop_keywords.robot
Test Setup    Open Browser With Firefox
Test Teardown    Close Browser

*** Test Case ***
Register By Not Filling In All The Forms Negative
    Click Button Sign In
    Click Button Create
    Verify Invalid Email Address

Register By Filling Out All The Forms Provided Negative
    Click Button Sign In
    Input Email Address
    Click Button Create
    Click Button Register
    Verify Invalid Create

Register By Filling Out All The Forms Provided Positive
    Click Button Sign In
    Clear Input Email Address
    Input Email Address
    Click Button Create
    Click Title
    Input First Name
    Input Last Name
    Input Password
    Select Day
    Select Month
    Select Year
    Input FN Address
    Input LN Address
    Input Company
    Input Address
    Input City
    Select State
    Input Postal
    Select Country
    Input Additional Information
    Input Phone Mobile
    Clear Input Address Alias
    Input Address Alias
    Click Button Register
    Verify Account
    Click SignOut
    Verify Login Form

Login With An Unregistered Email
    Click Button Sign In
    Clear Input Invalid Email Sign In
    Input Invalid Email Sign In
    Clear Input Valid Password Sign In
    Input Valid Password Sign In
    Click Login Button
    Verify Sign In Auth Failed

Login With Wrong Email And Password.
    Click Button Sign In
    Clear Input Invalid Email Sign In
    Input Invalid Email Sign In
    Clear Input Valid Password Sign In
    Input Invalid Password Sign In
    Click Login Button
    Verify Sign In Auth Failed

Login With True Email And Password.
    Click Button Sign In
    Clear Input Email Sign In
    Input Valid Email Sign In
    Clear Input Valid Password Sign In
    Input Valid Password Sign In
    Click Login Button
    Verify Account
    Click SignOut
    Verify Login Form