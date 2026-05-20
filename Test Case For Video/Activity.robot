*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Task.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test View Activity
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    
    Task.Click Current Task Ticket to Add Activity


