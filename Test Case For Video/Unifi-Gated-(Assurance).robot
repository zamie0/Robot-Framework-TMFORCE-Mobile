*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/ServiceVerify.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Attachment
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    ServiceVerify.Ungated Area
    ServiceVerify.Gated Area
    #ServiceVerify.Gated HSI - Passed
    #ServiceVerify.Gated HSI - Failed
    #ServiceVerify.Gated HSI, IPTV, IVR - Passed

