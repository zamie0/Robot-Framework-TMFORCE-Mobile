*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/RAF.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Restoration Acceptance Form (RAF)
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    RAF.Update Status to Resolved - Test RAF module
    RAF.Fill in RAF - Section 1
    RAF.Fill in RAF - Section 2 (Landed House HSBA FTTH Button)
    RAF.Fill in RAF - Section 3 (CAUSE CODE)
    RAF.Fill in RAF - Section 4 (ONE TIME CHARGES)
    RAF.Fill in RAF - Section 5 (TNC)