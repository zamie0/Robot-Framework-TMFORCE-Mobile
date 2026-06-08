*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/CurrentTask.robot
Resource    ../Keywords/Task.robot

*** Keywords ***
Scroll Down A Bit
    Swipe By Percent    50    80    50    30    500
    Sleep    1s

Click All Tab
    Wait Until Element Is Visible    ${Click_PendingAccept}    30s
    Click Element    ${Click_PendingAccept}
    Sleep    5s

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

Trigger Dialler
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    Sleep    5
    Task.Search by Source System UNIFI

    Wait Until Element Is Visible    ${Click_CurrentTask}      30s
    Click Element    ${Click_CurrentTask}
    Sleep    5s

    Wait Until Element Is Visible    ${Customer_Tab}      30s
    Click Element    ${Customer_Tab}
    Sleep    5s

    Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc, "Contact Mobile No")]    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${contactMobile_Field_X}, ${contactMobile_Field_Y}) }}
    Sleep    5s

Update Granite Inventory
    Sleep    5s
    Task.Click Current Task

    WHILE    True
        ${found}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Granite_Tab}    2s
        
        IF    ${found}
            Click Element    ${Granite_Tab}
            BREAK
        END

        Swipe    900    320    200    320    500
    END

    Sleep    5s

    Wait Until Element Is Visible    ${Update_Granite_Inventory}    30s
    Click Element    ${Update_Granite_Inventory}
    Sleep    5s

    Wait Until Element Is Visible    ${Get_Network_Info}    30s
    Click Element    ${Get_Network_Info}
    Sleep    10s

    Change FDP

    Change Port

Change FDP
    Wait Until Element Is Visible    ${Change_FDP}    30s
    Click Element    ${Change_FDP}
    Sleep    5s

    Increment Last 4 Digits And Update FDP ID

    Wait Until Element Is Visible    ${Check_Alternate_FDP}    30s
    Click Element    ${Check_Alternate_FDP}

    Sleep    5s

    Scroll Down A Bit

    Wait Until Element Is Visible    ${Available_Port}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${availablePort_Dropdown_FDP_X}, ${availablePort_Dropdown_FDP_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="07OUT"]    30s
    Click Element    xpath=//android.widget.Button[@content-desc="07OUT"]
    Sleep    5s

    Wait Until Element Is Visible    ${Reason_Dropdown}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${reason_Dropdown_X}, ${reason_Dropdown_Y}) }}
    Sleep    5s
    
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Faulty"]    30s
    Click Element    xpath=//android.widget.Button[@content-desc="Faulty"]
    Sleep    5s

    Wait Until Element Is Visible    ${REMARK_FIELD}    30s
    Click Element    ${REMARK_FIELD}
    Input Text    ${Remark_Field}    Your remark here
    Hide Keyboard
    Sleep    5s

    Wait Until Element Is Visible    ${UPDATE_BUTTON}    30s
    Click Element    ${UPDATE_BUTTON}
    Sleep    5s

    Press Keycode    4

Change Port
    Wait Until Element Is Visible    ${Change_Port}    30s
    Click Element    ${Change_Port}
    Sleep    5s

    Wait Until Element Is Visible    ${Available_Port}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${availablePort_Dropdown_X}, ${availablePort_Dropdown_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="03OUT"]    30s
    Click Element    xpath=//android.widget.Button[@content-desc="03OUT"]
    Sleep    5s

    Wait Until Element Is Visible    ${Reason_Dropdown}    30s
    Click Element    ${Reason_Dropdown}
    Sleep    5s

    Click Element    xpath=//android.widget.Button[@content-desc="Faulty"]
    Sleep    5s

    Wait Until Element Is Visible    ${REMARK_FIELD}    30s
    Click Element    ${REMARK_FIELD}
    Input Text    ${Remark_Field}    Your remark here
    Hide Keyboard
    Sleep    5s

    Wait Until Element Is Visible    ${UPDATE_BUTTON}    30s
    Click Element    ${UPDATE_BUTTON}
    Sleep    10s

    Press Keycode    4

Update NIS Inventory
    Sleep    5s
    Task.Click Current Task

    WHILE    True
        ${found}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${NIS_Tab}    2s
        
        IF    ${found}
            Click Element    ${NIS_Tab}
            BREAK
        END

        Swipe    900    320    200    320    500
    END

    Sleep    5s

    Wait Until Element Is Visible    ${Update_NIS_Inventory}    30s
    Click Element    ${Update_NIS_Inventory}
    Sleep    5s

    Wait Until Element Is Visible    ${Get_Circuit_Details}    30s
    Click Element    ${Get_Circuit_Details}
    Sleep    10s

    Scroll Down A Bit

    Change DP Pair

Change DP Pair
    Wait Until Element Is Visible    ${Change_DP_Pair}    30s
    Click Element    ${Change_DP_Pair}
    Sleep    10s

    Scroll Down A Bit

    Wait Until Element Is Visible    ${availablePair_Dropdown}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${availablePair_Dropdown_X}, ${availablePair_Dropdown_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="0003"]    30s
    Click Element    xpath=//android.widget.Button[@content-desc="0003"]
    Sleep    5s

    Wait Until Element Is Visible    ${Reason_Dropdown_DP_Pair}    30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${reason_Dropdown_DP_Pair_X}, ${reason_Dropdown_DP_Pair_Y}) }}
    Sleep    5s

    Click Element    xpath=//android.widget.Button[@content-desc="Faulty"]
    Sleep    5s

    Wait Until Element Is Visible    ${Remark_Field_DP_Pair}    30s
    Click Element    ${Remark_Field_DP_Pair}
    Input Text    ${Remark_Field_DP_Pair}    Your remark here
    Hide Keyboard
    Sleep    5s

    Wait Until Element Is Visible    ${Change_DP_Pair}    30s
    Click Element    ${Change_DP_Pair}
    Sleep    5s

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






