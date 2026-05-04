*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Sidebar.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Resource Partner Page
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    Sidebar.Open Sidebar
    Sidebar.Open Partner Info
    Sidebar.Attach Resource Partners
    Sidebar.Detach Resource Partners


