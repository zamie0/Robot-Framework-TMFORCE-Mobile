*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/AssignedTask.robot
Resource      ../Keywords/CurrentTask.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Unifi Assurance Update Status
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    # 7.1 ON MY WAY
    #AssignedTask.Change Status to On My Way

    # 7.2 ON SITE
    #CurrentTask.Change Status to On Site

    # 7.3 IN PROGRESS
    #CurrentTask.Change Status to In Progress

    # 7.4 RESOLVED
    CurrentTask.Change Status to Resolved   #Belum

    # 7.5 RESCHEDULED
    #CurrentTask.Change Status to Reschedule (No Date)
    #CurrentTask.Change Status to Reschedule (With Date)  #Belum
    







