*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/CurrentTask.robot

*** Keywords ***
Click All Tab
    Click Element    ${Activity_Tab}
    Sleep    5s

    Click Element    ${Customer_Tab}
    Sleep    5s

    Click Element    ${Service_Tab}
    Sleep    5s

    Click Element    ${Network_Tab}
    Sleep    5s

    Click Element    ${NIS_Tab}
    Sleep    5s

    Click Element    ${Granite_Tab}
    Sleep    5s

    Click Element    ${Equipment_Tab}
    Sleep    5s

    Click Element    ${Miscellaneous_Tab}
    Sleep    5s

    Click Element    ${InApp_Tab}
    Sleep    5s

Update Granite Inventory
    Click Element    ${Granite_Tab}
    Sleep    5s

    Wait Until Element Is Visible    ${Update_Granite_Inventory}    30s
    Click Element    ${Update_Granite_Inventory}
    Sleep    5s

    Wait Until Element Is Visible    ${Get_Network_Info}    30s
    Click Element    ${Get_Network_Info}
    Sleep    10s

    #Change FDP

    Change Port

Change FDP
    Wait Until Element Is Visible    ${Change_FDP}    30s
    Click Element    ${Change_FDP}
    Sleep    5s

    Increment Last 4 Digits And Update FDP ID

    Wait Until Element Is Visible    ${Check_Alternate_FDP}    30s
    Click Element    ${Check_Alternate_FDP}

    Sleep    30s

    Wait Until Element Is Visible    ${Check_Alternate_FDP}    30s
    Click Element    ${Check_Alternate_FDP}

Increment Last 4 Digits And Update FDP ID
    ${text}=    Get Text    ${NEW_FDP_ID}

    Log    Current Value: ${text}

    ${prefix}=    Evaluate    "${text}"[:-4]
    ${last4}=     Evaluate    int("${text}"[-4:])

    ${new_last4}=    Evaluate    str(${last4} + 1).zfill(4)
    ${new_value}=    Set Variable    ${prefix}${new_last4}

    Log    Updated Value: ${new_value}

    Click Element    ${NEW_FDP_ID}
    Clear Text       ${NEW_FDP_ID}
    Input Text       ${NEW_FDP_ID}    ${new_value}

Check Alternate FDP


Change Port
    Wait Until Element Is Visible    ${Change_Port}    30s
    Click Element    ${Change_Port}
    Sleep    5s

    Wait Until Element Is Visible    ${Available_Port_Dropdown}    30s
    Click Element    ${Available_Port_Dropdown}
    Sleep    5s

    Click Element    xpath=//android.widget.Button[@content-desc="IN033"]
    Sleep    5s

    Wait Until Element Is Visible    ${Reason_Dropdown}    30s
    Click Element    ${Reason_Dropdown}
    Sleep    5s

    Click Element    xpath=//android.widget.Button[@content-desc="Faulty"]
    Sleep    5s

    Click Element    ${REMARK_FIELD}
    Clear Text       ${REMARK_FIELD}
    Input Text       ${REMARK_FIELD}    Test Remark

    Click Element   xpath=//android.view.View[@content-desc="Change Granite Port"]

    Wait Until Element Is Visible    ${UPDATE_BUTTON}    30s
    Click Element    ${UPDATE_BUTTON}
    Sleep    10s



