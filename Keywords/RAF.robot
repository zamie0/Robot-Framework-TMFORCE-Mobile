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

Update Status to Resolved - Test RAF module
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

Scroll to RAF Button
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${RAF_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${RAF_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

Fill in RAF - Section 1
    Scroll to RAF Button

    Wait Until Element Is Visible     ${RAF_Button}     timeout=30s
    Click Element    ${RAF_Button}
    Sleep    5s
    
    # Section 1
    Wait Until Element Is Visible     ${accessNetwork_Checkbox}     timeout=30s
    Click Element    ${accessNetwork_Checkbox}
    Sleep    5s

    Wait Until Element Is Visible     ${internalFiber_Checkbox}     timeout=30s
    Click Element    ${internalFiber_Checkbox}
    Sleep    5s

    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${section2_Header}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${section2_Header}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

Fill in RAF - Section 2 (Landed House HSBA FTTH Button)
    
    # Section 2 
    Wait Until Element Is Visible     ${Landed_House_HSBA_FTTH_Button}     timeout=30s
    Click Element    ${Landed_House_HSBA_FTTH_Button}
    Sleep    5s

    Ticket.Scroll Down A Bit

    # PON PORT READING
    Wait Until Element Is Visible    ${Optical_Overload_Input}     30s
    Click Element    ${Optical_Overload_Input} 
    Clear Text    ${Optical_Overload_Input} 
    Input Text    ${Optical_Overload_Input}     40
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Optical_Sensitivity_Input}     30s
    Click Element    ${Optical_Sensitivity_Input} 
    Clear Text    ${Optical_Sensitivity_Input} 
    Input Text    ${Optical_Sensitivity_Input}     66
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${OPT_Power_Input}     30s
    Click Element    ${OPT_Power_Input} 
    Clear Text    ${OPT_Power_Input} 
    Input Text    ${OPT_Power_Input}     70
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Ext_Ratio_Input}     30s
    Click Element    ${Ext_Ratio_Input} 
    Clear Text    ${Ext_Ratio_Input} 
    Input Text    ${Ext_Ratio_Input}     80
    Sleep    5
    Hide Keyboard
    Sleep    1

    Ticket.Scroll Down A Bit
    
    # ONU READING
    Wait Until Element Is Visible    ${Optical_Input}     30s
    Click Element    ${Optical_Input} 
    Clear Text    ${Optical_Input} 
    Input Text    ${Optical_Input}     100
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Attainable_Input}     30s
    Click Element    ${Attainable_Input} 
    Clear Text    ${Attainable_Input} 
    Input Text    ${Attainable_Input}     55
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Actual_Rate_Input}     30s
    Click Element    ${Actual_Rate_Input} 
    Clear Text    ${Actual_Rate_Input} 
    Input Text    ${Actual_Rate_Input}     100
    Sleep    5
    Hide Keyboard
    Sleep    1

Fill in RAF - Section 2 (Landed House Unifi FTTH Button)
    
    # Section 2 
    Wait Until Element Is Visible     ${Landed_House_UnifiFTTH_Button}     timeout=30s
    Click Element    ${Landed_House_UnifiFTTH_Button}
    Sleep    5s

    Ticket.Scroll Down A Bit

    # PON PORT READING
    Wait Until Element Is Visible    ${Optical_Overload_Input}     30s
    Click Element    ${Optical_Overload_Input} 
    Clear Text    ${Optical_Overload_Input} 
    Input Text    ${Optical_Overload_Input}     40
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Optical_Sensitivity_Input}     30s
    Click Element    ${Optical_Sensitivity_Input} 
    Clear Text    ${Optical_Sensitivity_Input} 
    Input Text    ${Optical_Sensitivity_Input}     66
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${OPT_Power_Input}     30s
    Click Element    ${OPT_Power_Input} 
    Clear Text    ${OPT_Power_Input} 
    Input Text    ${OPT_Power_Input}     70
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Ext_Ratio_Input}     30s
    Click Element    ${Ext_Ratio_Input} 
    Clear Text    ${Ext_Ratio_Input} 
    Input Text    ${Ext_Ratio_Input}     80
    Sleep    5
    Hide Keyboard
    Sleep    1

    Ticket.Scroll Down A Bit
    
    # ONU READING
    Wait Until Element Is Visible    ${Optical_Input}     30s
    Click Element    ${Optical_Input} 
    Clear Text    ${Optical_Input} 
    Input Text    ${Optical_Input}     100
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Attainable_Input}     30s
    Click Element    ${Attainable_Input} 
    Clear Text    ${Attainable_Input} 
    Input Text    ${Attainable_Input}     55
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Actual_Rate_Input}     30s
    Click Element    ${Actual_Rate_Input} 
    Clear Text    ${Actual_Rate_Input} 
    Input Text    ${Actual_Rate_Input}     100
    Sleep    5
    Hide Keyboard
    Sleep    1

Fill in RAF - Section 3 (CAUSE CODE)
    #${element}=    Run Keyword And Ignore Error    Get Webelement    ${causeCode_Header}
    #FOR    ${i}    IN RANGE    5
    #    Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
    #    Swipe By Percent    50    80    50    30    500
    #    Sleep    1
    #    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${causeCode_Header}
    #END
    #Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    Ticket.Scroll Down A Bit

Fill in RAF - Section 3 (RESTORATION CHARGES)
    #${element}=    Run Keyword And Ignore Error    Get Webelement    ${Restoration_Charges}
    #FOR    ${i}    IN RANGE    5
    #    Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
    #    Swipe By Percent    50    80    50    30    500
    #    Sleep    1
    #    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${causeCode_Header}
    #END
    #Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    Ticket.Scroll Down A Bit

Fill in RAF - Section 4 (ONE TIME CHARGES)
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${oneTimeCharges_Header}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${oneTimeCharges_Header}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

Fill in RAF - Section 4 (TNC)
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Terms_Condition}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Terms_Condition}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible     ${Terms_Condition}     timeout=30s
    Click Element    ${Terms_Condition}
    Sleep    5s

    Wait Until Element Is Visible     ${close_Button}     timeout=30s
    Click Element    ${close_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Terms_Condition_CheckBox}     timeout=30s
    Click Element    ${Terms_Condition_CheckBox}
    Sleep    5s

    Wait Until Element Is Visible    ${Name_Field}     30s
    Click Element    ${Name_Field} 
    Clear Text    ${Name_Field} 
    Input Text    ${Name_Field}     Ali bin Abu
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${IC_No_Field}     30s
    Click Element    ${IC_No_Field} 
    Clear Text    ${IC_No_Field} 
    Input Text    ${IC_No_Field}     961201010044
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Email_Field}     30s
    Click Element    ${Email_Field} 
    Clear Text    ${Email_Field} 
    Input Text    ${Email_Field}     tm@gmail.com
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Relationship_Field}     30s
    Click Element    ${Relationship_Field} 
    Clear Text    ${Relationship_Field} 
    Input Text    ${Relationship_Field}     XXXXXX
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Comments_Field}     30s
    Click Element    ${Comments_Field} 
    Clear Text    ${Comments_Field} 
    Input Text    ${Comments_Field}     Test
    Sleep    5
    Hide Keyboard
    Sleep    1

    Press Keycode    4

Fill in RAF - Section 5 (TNC)
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Terms_Condition}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Terms_Condition}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    
    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible     ${Terms_Condition}     timeout=30s
    Click Element    ${Terms_Condition}
    Sleep    5s

    Wait Until Element Is Visible     ${close_Button}     timeout=30s
    Click Element    ${close_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Terms_Condition_CheckBox}     timeout=30s
    Click Element    ${Terms_Condition_CheckBox}
    Sleep    5s

    Wait Until Element Is Visible    ${VASP_Field_Engineer_Name}     30s
    Click Element    ${VASP_Field_Engineer_Name} 
    Clear Text    ${VASP_Field_Engineer_Name} 
    Input Text    ${VASP_Field_Engineer_Name}     Ali bin Abu
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${IC_No_Field}     30s
    Click Element    ${IC_No_Field} 
    Clear Text    ${IC_No_Field} 
    Input Text    ${IC_No_Field}     961201010044
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Comments_Field}     30s
    Click Element    ${Comments_Field} 
    Clear Text    ${Comments_Field} 
    Input Text    ${Comments_Field}     Test
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible     ${TnC_Form_Checkbox}     timeout=30s
    Click Element    ${TnC_Form_Checkbox}
    Sleep    10s

    Press Keycode    4

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