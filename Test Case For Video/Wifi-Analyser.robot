*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/RAF.robot
Resource      ../Keywords/Ticket.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Wifi Analyser 
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    RAF.Update Status to Resolved - Test RAF module
    Ticket.Scroll Down A Bit

    RAF.Service Verification
    RAF.Scroll until Submit button
    RAF.Fill in Notes, Attachments, Signature
    RAF.Fill in RAF - Section 1
    RAF.Fill in RAF - Section 2 (Landed House Unifi FTTH Button)
    RAF.Fill in RAF - Section 3 (RESTORATION CHARGES)
    RAF.Fill in RAF - Section 4 (TNC)