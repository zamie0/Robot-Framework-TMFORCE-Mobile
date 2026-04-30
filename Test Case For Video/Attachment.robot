*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Keywords/LaunchApp.robot
Resource      ../Keywords/Login.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Attachment_Note.robot

*** Test Cases ***
Execute Task List
    [Documentation]  To Test Attachment
    [Tags]  Regression Mobile App

    LaunchApp.Launch Application
    Login.Login app - positive scenario

    Sleep    20

    Attachment_Note.View Attachment
    Attachment_Note.Upload Attachment - Camera Photo
    Attachment_Note.Upload Attachment - Gallery Photo
    Attachment_Note.Upload Attachment - File Document

