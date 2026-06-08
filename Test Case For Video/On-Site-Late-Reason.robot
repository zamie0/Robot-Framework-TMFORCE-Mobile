*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Keywords/CurrentTask.robot
Resource      ../Locators/locators.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test On Site Late Reason 
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    CurrentTask.Search Ticket by ID
    CurrentTask.Change Status to On Site - On Site Late Reason
