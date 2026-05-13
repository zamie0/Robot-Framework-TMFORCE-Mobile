*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/AssignedTask.robot
Resource      ../Keywords/CurrentTask.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Unifi Assurance Update Status
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    CurrentTask.Change Status to Returned (Cabinet Locked)
    







