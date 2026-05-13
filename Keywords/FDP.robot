*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/Ticket.robot

*** Keywords ***
Search Ticket by ID
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     T-0000007094
    Sleep    5
    Hide Keyboard
    Sleep    1

Scroll until Submit button
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Submit_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Submit_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

Service Verification
    Wait Until Element Is Visible     ${Service_Verification_Button}     timeout=30s
    Click Element    ${Service_Verification_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Verify_Button}     timeout=30s
    Click Element    ${Verify_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Done_Button}     timeout=30s
    Click Element    ${Done_Button}
    Sleep    5s

Update Status to Resolved - Test FDP module
    Search Ticket by ID

    Wait Until Element Is Visible    ${Click_PendingAccept}      30s
    Sleep    5s
    
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5

    Wait Until Element Is Visible    ${Click_CurrentTask}      30s
    Click Element    ${Click_CurrentTask}
    Sleep    5s

    Click Element    ${Activity_Tab}
    Sleep    5s
    
    Capture Activity ID
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

    Wait Until Element Is Visible     ${LocalAccess_Button}     timeout=30s
    Click Element    ${LocalAccess_Button}   
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}   
    Sleep    5s

    Wait Until Element Is Visible     ${Damaged_by_3rd_Party_Button}     timeout=30s
    Click Element    ${Damaged_by_3rd_Party_Button}   
    Sleep    5s

    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s

    Wait Until Element Is Visible     ${FDP_Port_Changed_Button}     timeout=30s
    Click Element    ${FDP_Port_Changed_Button}
    Sleep    5s

Fill in Notes, Attachments, Signature
    Wait Until Element Is Visible     ${notes_input}     timeout=30s
    Click Element    ${notes_input}
    Input Text       ${notes_input}      Test  
    Sleep    5s
    Hide Keyboard    

    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (975, 1182) }}
    #Sleep    5
    #Wait Until Element Is Visible    ${Add_Attachment_Button}    timeout=30s
    #Click Element    ${Add_Attachment_Button}
    Sleep    5s

    #Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=30s
    Click Element    ${camera_button}
    Sleep    5s

    Wait Until Element Is Visible    ${cameraCapture_button}    timeout=30s
    Click Element    ${cameraCapture_button}
    Sleep    5s

    Wait Until Element Is Visible    ${Yes_cameraCapture_button}    timeout=30s
    Click Element    ${Yes_cameraCapture_button}
    Sleep    10s
    
    Scroll until Submit button

    Wait Until Element Is Visible     ${nameCaptured_input}     timeout=30s
    Click Element    ${nameCaptured_input}
    Clear Text       ${nameCaptured_input}
    Input Text       ${nameCaptured_input}    testName
    Sleep    1
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible     ${remarksCaptured_input}     timeout=30s
    Click Element    ${remarksCaptured_input} 
    Input Text       ${remarksCaptured_input}    Test Remarks
    Sleep    1
    Hide Keyboard
    Sleep    1

    Scroll until Submit button

    Click Element    ${Signature_Button}
    Sleep    2
    
    Swipe    540    1200    540    800    500
    Sleep    1

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Scroll until Submit button
































Fil in RAF - section 2 (Landed_House_DSL)
    #section 2 
    Click Element    ${Landed_House_DSL/DEL_Button}

    #delete 
    Click Element    ${Add_Reading_Button}
    Click Element    ${Site_Dropdown}
    Click Element    ${TM_Option_Button}

    Click Element    ${SNR_Download_Input}
    Input Text       ${SNR_Download_Input}    40
    Click Element    ${Add_Button}
    Sleep    3
    Click Element    ${Delete_Button}

    #broadband
    Click Element    ${Add_Reading_Button}
    Click Element    ${Site_Dropdown}
    Click Element    ${TM_Option_Button}

    Click Element    ${SNR_Download_Input}
    Input Text       ${SNR_Download_Input}    40

    Click Element    ${SNR_Upload_Input}
    Input Text       ${SNR_Upload_Input}    66

    Click Element    ${ATTN_Download_Input}
    Input Text       ${ATTN_Download_Input}    70

    
    #scroll
    Swipe    540    1225    540    408    500
    Sleep    3

    Wait Until Element Is Visible     ${ATTN_Upload_Input}
    Click Element    ${ATTN_Upload_Input}
    Input Text       ${ATTN_Upload_Input}    100

    Click Element    ${AR_Download_Input}
    Input Text       ${AR_Download_Input}    55

    Click Element    ${AR_Upload_Input}
    Input Text       ${AR_Upload_Input}    55

    Click Element    ${Tone_Dropdown}
    Click Element    ${OK_Option_button}

    Click Element    ${Add_Button}

    #scroll
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${ONU_Reading_Dropdown}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${ONU_Reading_Dropdown}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

Fil in RAF - section 3
#scroll
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Renewal_Service_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Renewal_Service_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    
    Click Element    ${Renewal_Service_Button}

Fil in RAF - section 4
    
    #scroll
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${TNC_Detail}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${TNC_Detail}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    
    Click Element    ${TNC_Detail}
    Swipe    540    2103    540    381    1000
    Click Element    ${Close_Button}

    Click Element    ${Check_Box}
    Swipe    540    2103    540    381    1000

    Click Element    ${Name_Input}
    Input Text       ${Name_Input}    Ali bin Abu

    Click Element    ${IC_Input}
    Input Text       ${IC_Input}    961201010044

    Click Element    ${Email_Input}
    Input Text       ${Email_Input}    aliabu@gmail.com

    Hide Keyboard
    # Click Element    ${Ext_Ratio_Input}
    # Input Text       ${Ext_Ratio_Input}    70

    # #scroll
    # ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Comments_Input}
    # FOR    ${i}    IN RANGE    5
    #     Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
    #     Swipe By Percent    50    80    50    30    500
    #     Sleep    1
    #     ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Comments_Input}
    # END
    # Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    Click Element    ${Relationship_Input}
    Input Text       ${Relationship_Input}    family

    Hide Keyboard

    Click Element    ${Comments_Input}
    Input Text       ${Comments_Input}    test

    Hide Keyboard
    
    #tak semua RAF ada yang ni
    Swipe By Percent    50    80    50    30    500

    Click Element    ${Cust_Refuse_Sign}
    Click Element    ${Cust_Disagree_Restoration}

    Click Element    ${Back_Button}

        #scroll
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Restoration_Charges}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe    540    1058    540    313    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Restoration_Charges}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling