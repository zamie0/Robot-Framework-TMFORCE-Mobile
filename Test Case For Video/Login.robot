*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot

*** Test Cases ***
Execute Login
    [Documentation]  To Test Login
    [Tags]  Regression Mobile App
    
    LaunchApp.Launch Application
    Login.Device Info
    Login.Language RoundTrip
    Login.Login app - negative scenario
    Login.Login app - positive scenario