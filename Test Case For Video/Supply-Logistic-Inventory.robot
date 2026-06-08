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

    Sleep    30

    #SupplyLogisticInventory.CPE List In Hand
    #SupplyLogisticInventory.Stock Transfer To Team
    #SupplyLogisticInventory.Accept CPE Stock Transfer
    #SupplyLogisticInventory.CPE Stock Count
    SupplyLogisticInventory.CPE Swap


