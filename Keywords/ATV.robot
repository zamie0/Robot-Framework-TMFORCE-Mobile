*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/Task.robot
Resource    ../Keywords/Ticket.robot

*** Variables ***
# Global variable to store the ID across different keywords
${CAPTURED_ACTIVITY_ID}    NONE

*** Keywords ***
Scroll until Submit button
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Submit_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Submit_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

Capture Activity ID
    [Documentation]    Extracts the ID even if "Activity Id" text comes first
    Wait Until Element Is Visible    ${activity_id_element}    timeout=30s
    ${full_text}=    Get Element Attribute    ${activity_id_element}    content-desc
    
    Log    Raw Text Captured: ${full_text}

    # Use a more robust Regex that finds A- followed by any number of digits
    # This ignores "Activity Id" and the newline character automatically
    ${match}=    Evaluate    re.search(r'A-\d+', """${full_text}""")    re

    IF    ${match} is not None
        ${id}=    Set Variable    ${match.group(0)}
        Set Suite Variable    ${CAPTURED_ACTIVITY_ID}    ${id}
        Log    Successfully Extracted Activity ID: ${CAPTURED_ACTIVITY_ID}    console=True
    ELSE
        # Secondary fallback using split if Regex fails
        ${lines}=    Evaluate    """${full_text}""".split()
        ${id}=       Set Variable    ${lines[-1]}    # Takes the last word in the string
        Set Suite Variable    ${CAPTURED_ACTIVITY_ID}    ${id}
    END
    
    # Optional: double check the result starts with A-
    IF    not '${CAPTURED_ACTIVITY_ID}'.startswith('A-')
        Fail    Failed to extract a valid ID. Result was: ${CAPTURED_ACTIVITY_ID}
    END

    RETURN    ${CAPTURED_ACTIVITY_ID}

Close Task List dropdown
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${AssignedTask_Dropdown_HEADER_X}, ${AssignedTask_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${OnHold_Dropdown_HEADER_X}, ${OnHold_Dropdown_HEADER_Y}) }} 
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${TaskHistory_Dropdown_HEADER_X}, ${TaskHistory_Dropdown_HEADER_Y}) }}
    Sleep    5

Scroll up to the top
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${CurrentTask_Dropdown}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    30    50    80    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${CurrentTask_Dropdown}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Element not found after scrolling up


View Ticket Details
    Wait Until Element Is Visible    ${Click_PendingAccept}      30s
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    Sleep    5

    Wait Until Element Is Visible     ${Click_AssignedTask}     timeout=30s
    Click Element    ${Click_AssignedTask} 
    
    Click All Tab

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

Search by Activity ID
    [Documentation]    Uses the ID captured from the view
    Wait Until Element Is Visible    ${Search_button}    30s
    Click Element    ${Search_button} 
    Clear Text       ${Search_button} 
    
    # Ensure variable is not empty
    Run Keyword If    '${CAPTURED_ACTIVITY_ID}' == 'NONE'    Fail    No ID captured to search!
    
    Input Text       ${Search_button}    ${CAPTURED_ACTIVITY_ID}
    Hide Keyboard
    Sleep    5s

Change Status to On My Way    
    Wait Until Element Is Visible     ${Click_AssignedTask}     timeout=30s
    Click Element    ${Click_AssignedTask} 

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

    Wait Until Element Is Visible     ${OnMyWay_Button}     timeout=30s
    Click Element    ${OnMyWay_Button} 
    Sleep    5s  

    Wait Until Element Is Visible     ${ETTA_Button}     timeout=30s
    Click Element    ${ETTA_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Confirm_Button}     timeout=30s
    Click Element    ${Confirm_Button} 
    Sleep    5s

    Wait Until Element Is Visible     ${Confirm_Button}     timeout=30s
    Click Element    ${Confirm_Button}  
    Sleep    5s

    Wait Until Element Is Visible     ${notes_input}     timeout=30s
    Click Element    ${notes_input}
    Input Text       ${notes_input}      Test  
    Sleep    5s
    Hide Keyboard                     

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Wait Until Element Is Visible     ${Yes_Button}     timeout=30s
    Click Element    ${Yes_Button}  
    Sleep    60s

    Press Keycode    4
    Press Keycode    4

    Wait Until Element Is Visible    ${CurrentTask_Dropdown_Open}      30s
    Click Element    ${CurrentTask_Dropdown_Open}
    Sleep    5s

    Wait Until Element Is Visible    ${PendingAccept_Dropdown_Open}      30s
    Click Element    ${PendingAccept_Dropdown_Open}
    Sleep    5s

    Search by Activity ID

Change Status to On Site
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

    Wait Until Element Is Visible     ${OnSite_Button}     timeout=30s
    Click Element    ${OnSite_Button}   
    
    Scroll until Submit button
    
    Wait Until Element Is Visible     ${notes_input}     timeout=30s
    Click Element    ${notes_input}
    Input Text       ${notes_input}      Test  
    Sleep    5s
    Hide Keyboard                      

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Wait Until Element Is Visible     ${Yes_Button}     timeout=30s
    Click Element    ${Yes_Button}  
    Sleep    60s

    Press Keycode    4
    Press Keycode    4

    Task.Clear Search

Change Status to Resolved
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
    Click Element    xpath=//android.widget.Button[@content-desc="UE Consultancy"]
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Customer_Not Reachable"]
    Sleep    5s
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Need Reappointment"]
    Sleep    5s

    Ticket.Scroll Down A Bit

    Verify Swap CPE Action - Old CPE (Service Point)
    Verify Swap CPE Action - New CPE (Scan Barcode)

    Press Keycode    4
    Press Keycode    4

    Wait Until Element Is Visible     ${notes_input}     timeout=30s
    Click Element    ${notes_input}
    Input Text       ${notes_input}      Test  
    Sleep    5s
    Hide Keyboard    

    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${Add_Attachment_Button_X}, ${Add_Attachment_Button_Y}) }}
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

    Scroll to RAF Button
    Fill in RAF - Section 1
    Fill in RAF - Section 2 (Landed House Unifi FTTH Button)
    Fill in RAF - Section 3 (RESTORATION CHARGES)
    Fill in RAF - Section 4 (TNC)

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Wait Until Element Is Visible     ${Yes_Button}     timeout=30s
    Click Element    ${Yes_Button}  
    Sleep    60s

    Press Keycode    4

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

Verify Swap CPE Action - Old CPE (Service Point)

    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Swap_CPE_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Swap_CPE_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Wait Until Element Is Visible     ${OneOff_Payment_Button}     timeout=30s
    Click Element    ${OneOff_Payment_Button}   
    Sleep    5s

    Wait Until Element Is Visible     ${Swap_CPE_Button}     timeout=30s
    Click Element    ${Swap_CPE_Button}
    Sleep    5s

    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Service_Point}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Service_Point}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    #Wait Until Element Is Visible    ${Flag_Button}
    #Click Element    ${Flag_Button}
    #Click Element    ${Dismiss_Button}
    #Click A Point    526    823

    Wait Until Element Is Visible     ${Service_Point_Update_Button}     timeout=30s
    Click Element    ${Service_Point_Update_Button}
    Sleep    5s

    #Wait Until Element Is Visible     ${Generate_SN_Button}     timeout=30s
    #Click Element    ${Generate_SN_Button}
    #Sleep    5senerate_SN_Button}

    Wait Until Element Is Visible     ${Scan_Barcode_Button}     timeout=30s
    Click Element    ${Scan_Barcode_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Material_Desc_Button}     timeout=30s
    Click Element    ${Material_Desc_Button}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="MODEM VDSL ZTE"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="MODEM VDSL ZTE"]
    Sleep    5s
    
    Wait Until Element Is Visible     ${Faulty_Reason_Button}     timeout=30s
    Click Element    ${Faulty_Reason_Button}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="ONU Faulty"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="ONU Faulty"]
    Sleep    5s

    Wait Until Element Is Visible     ${Remarks_Input}     timeout=30s
    Click Element    ${Remarks_Input}
    Input Text    ${Remarks_Input}    Test
    Hide Keyboard

Verify Swap CPE Action - New CPE (Scan Barcode)

    Ticket.Scroll Down A Bit

    Wait Until Element Is Visible     ${Scan_Barcode_Button}     timeout=30s
    Click Element    ${Scan_Barcode_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Verify_SN_Button}     timeout=30s
    Click Element    ${Verify_SN_Button}
    Sleep    5s
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Save_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Save_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Wait Until Element Is Visible     ${MAC_Address_Input}     timeout=30s
    Click Element    ${MAC_Address_Input}
    Input Text    ${MAC_Address_Input}    EB-48-A3-48-04-11
    Sleep    5s
    Hide Keyboard
    Sleep    5s

    Wait Until Element Is Visible     ${Save_Button}     timeout=30s
    Click Element    ${Save_Button}
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