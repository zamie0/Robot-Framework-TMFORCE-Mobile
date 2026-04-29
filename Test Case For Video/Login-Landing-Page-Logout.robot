*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Sidebar.robot
Resource      ../Keywords/Task.robot
Resource      ../Keywords/AssignedTask.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Login Landing-Page Logout
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Device Info
    Login.Language RoundTrip
    Login.Login app - negative scenario
    Login.Login app - positive scenario

    Sleep    20

    Sidebar.Open Sidebar
    Sidebar.Open User Profile
    Sleep    10
    Sidebar.Close Sidebar

    Task.Search by keywords
    Task.Click Sort Button

    Sleep    2
    
    AssignedTask.Close Task List dropdown

    Sidebar.Open Sidebar
    Sidebar.Scroll Down A Bit
    Sidebar.Click Log Out Button


