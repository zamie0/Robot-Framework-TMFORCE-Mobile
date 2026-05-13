*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Team Tracker
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Late Login