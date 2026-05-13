*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Task.robot
Resource      ../Keywords/Ticket.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Ticket Details
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    Ticket.Click All Tab
