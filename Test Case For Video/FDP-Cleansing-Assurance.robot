*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/FDP.robot
Resource      ../Keywords/Ticket.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test FDP Cleansing Assurance
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    FDP.Update Status to Resolved - Test FDP module
    Ticket.Scroll Down A Bit

    FDP.Service Verification
    RAF.Scroll until Submit button