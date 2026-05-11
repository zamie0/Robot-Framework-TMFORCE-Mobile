*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Sidebar.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Login Landing-Page Logout
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    #Login.Device Info
    #Login.Language RoundTrip
    #Login.Login app - negative scenario
    Login.Login app - positive scenario

    Sleep    20

    Sidebar.Explore Sidebar


