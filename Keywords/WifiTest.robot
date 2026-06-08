*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot

*** Keywords ***
Search Ticket by ID
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     T-0000010324
    Sleep    5
    Hide Keyboard
    Sleep    1

Update Status to Resolved - Test Wifi
    Search Ticket by ID
    
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5

    Wait Until Element Is Visible    ${Click_CurrentTask}      30s
    Click Element    ${Click_CurrentTask}
    Sleep    5s

    Click Element    ${Activity_Tab}
    Sleep    5s

    Wait Until Element Is Visible    ${Action_button}      30s
    Click Element    ${Action_button}
    Sleep    5s

    Wait Until Element Is Visible    ${Update_button}      30s
    Click Element    ${Update_button}
    Sleep    5s

    Wait Until Element Is Visible     ${New_Status}     timeout=30s
    Click Element    ${New_Status}  
    Sleep    5s
    
    Wait Until Element Is Visible     ${Resolved_Button}     timeout=30s
    Click Element    ${Resolved_Button}   
    Sleep    5s
    
    Wait Until Element Is Visible     ${Cause_Category}     timeout=30s
    Click Element    ${Cause_Category}
    Sleep    5s

    Wait Until Element Is Visible     ${BTU_Button}     timeout=30s
    Click Element    ${BTU_Button}   
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}   
    Sleep    5s

    Wait Until Element Is Visible     ${BTU_Faulty_Button}     timeout=30s
    Click Element    ${BTU_Faulty_Button}   
    Sleep    5s

    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s

    Wait Until Element Is Visible     ${TMCPE_Replaced_Button}     timeout=30s
    Click Element    ${TMCPE_Replaced_Button}
    Sleep    5s

Wi-Fi Signal Test
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Wifi_Signal_Test_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Wifi_Signal_Test_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Wait Until Element Is Visible     ${Wifi_Signal_Test_Button}     timeout=30s
    Click Element    ${Wifi_Signal_Test_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${AP_Name_Refresh_Button}     timeout=30s
    Click Element    ${AP_Name_Refresh_Button}
    Sleep    5s

    # 1
    Tap With Positions    ${TAP_DURATION}    ${{ (${Test_Type_HEADER_X}, ${Test_Type_HEADER_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Business"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="Business"]
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${RG_Location_HEADER_X}, ${RG_Location_HEADER_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Meeting Room 1"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="Meeting Room 1"]
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${Test_Area_HEADER_X}, ${Test_Area_HEADER_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Meeting Room 1"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="Meeting Room 1"]
    Sleep    5s

    Wait Until Element Is Visible     ${Wifi_Test_Button}     timeout=30s
    Click Element    ${Wifi_Test_Button}
    Sleep    30s

    Wait Until Element Is Visible     ${Add_Results_Button}     timeout=30s
    Click Element    ${Add_Results_Button}
    Sleep    5s

    # 2
    Tap With Positions    ${TAP_DURATION}    ${{ (${Test_Area_HEADER_X}, ${Test_Area_HEADER_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Meeting Room 2"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="Meeting Room 2"]
    Sleep    5s

    Wait Until Element Is Visible     ${Wifi_Test_Button}     timeout=30s
    Click Element    ${Wifi_Test_Button}
    Sleep    30s

    Wait Until Element Is Visible     ${Add_Results_Button}     timeout=30s
    Click Element    ${Add_Results_Button}
    Sleep    5s

    # 3
    Tap With Positions    ${TAP_DURATION}    ${{ (${Test_Area_HEADER_X}, ${Test_Area_HEADER_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="Meeting Room 3"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="Meeting Room 3"]
    Sleep    5s

    Wait Until Element Is Visible     ${Wifi_Test_Button}     timeout=30s
    Click Element    ${Wifi_Test_Button}
    Sleep    30s

    Wait Until Element Is Visible     ${Add_Results_Button}     timeout=30s
    Click Element    ${Add_Results_Button}
    Sleep    5s

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible     ${submit_button}     timeout=30s
    Click Element    ${submit_button}
    Sleep    5s