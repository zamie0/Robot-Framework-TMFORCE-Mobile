*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Keywords/WifiTest.robot
Resource      ../Locators/locators.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Display Unit (MBPS)
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    WifiTest.Update Status to Resolved - Test Wifi
    WifiTest.Wi-Fi Signal Test









