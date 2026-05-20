*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Keywords/SupplyLogisticInventory.robot
Resource      ../Locators/locators.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Supply Logistic Inventory
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    SupplyLogisticInventory.CPE List In Hand
    SupplyLogisticInventory.Stock Transfer
    SupplyLogisticInventory.CPE Stock Count
    SupplyLogisticInventory.CPE Swap


