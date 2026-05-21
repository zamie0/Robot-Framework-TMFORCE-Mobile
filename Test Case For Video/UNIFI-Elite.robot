*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/AssignedTask.robot
Resource      ../Keywords/CurrentTask.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test UNIFI ELite
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    AssignedTask.Search by keywords - Ticket UNIFI ELite
    #AssignedTask.Close Task List dropdown for UNIFI ELite
    #AssignedTask.Change Status to On My Way    
    #CurrentTask.Change Status to On Site
    CurrentTask.Change Status to Resolved - UNIFI Elite


