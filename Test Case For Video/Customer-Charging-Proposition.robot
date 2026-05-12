*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/CCP.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Customer Charging Proposition (CCP)
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    CCP.Update Status to Resolved- Test CCP module
    CCP.Verify Swap CPE Action - Old CPE (Service Point)
    CCP.Verify Swap CPE Action - New CPE (Scan Barcode)







