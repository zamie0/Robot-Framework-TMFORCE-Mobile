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

Change Status to In Progress
    Wait Until Element Is Visible    ${Click_PendingAccept}      30s
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    Sleep    5

    Task.Search by Source System UNIFI

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

    Wait Until Element Is Visible     ${InProgress_Button}     timeout=30s
    Click Element    ${InProgress_Button}   
    Sleep    5s  

    Wait Until Element Is Visible     ${ETTR_Button}     timeout=90s
    Click Element    ${ETTR_Button}
    Sleep    5s
    Click Element    ${Confirm_Button} 
    Sleep    5s
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
    #Press Keycode    4

    Wait Until Element Is Visible    ${CurrentTask_Dropdown_Open}      30s
    Click Element    ${CurrentTask_Dropdown_Open}
    Sleep    5s

    Wait Until Element Is Visible    ${PendingAccept_Dropdown_Open}      30s
    Click Element    ${PendingAccept_Dropdown_Open}
    Sleep    5s

    Search by Activity ID

Change Status to Resolved
    Wait Until Element Is Visible    ${Click_PendingAccept}      30s
    Sleep    5s
    
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5

    Task.Search by Source System UNIFI

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

    Scroll until Submit button

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

    # Wait Until Element Is Visible    ${cameraCapture_button}    timeout=60s
    # Click Element    ${cameraCapture_button}
    #Click A Point    883    2020     # Flip camera
    #Click A Point    540    2026    # Shutter button
    #Sleep    2
    #Click A Point    205    2007    # Tap Retry
    #Sleep    2
    #Click A Point    540    2060    # Shutter button
    #Sleep    2
    #Click A Point    882    2018    # Tap OK
    #Sleep    6
    
    #Wait Until Element Is Visible    android=new UiSelector().className("android.widget.Button").instance(1)      timeout=60s
    #Click Element     android=new UiSelector().className("android.widget.Button").instance(1)     #${Cancel_Attachment_button}

    #add attachment (from photos)
    #Click A Point    950    1254
    # Click Element    ${Add_Attachment_Button}  

    #Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    #Click Element    ${Photo_button}

    #Wait Until Element Is Visible    ${Photo_From_Gallery_button}    timeout=60s
    #Click Element    ${Photo_From_Gallery_button}
    #Sleep    2
    
    Scroll until Submit button

    # ${element}=    Run Keyword And Ignore Error    Get Webelement    ${remarksCaptured_input}
    # FOR    ${i}    IN RANGE    5
    #     Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
    #     Swipe By Percent    50    80    50    30    500
    #     Sleep    1
    #     ${element}=    Run Keyword And Ignore Error    Get Webelement    ${remarksCaptured_input}
    # END
    # Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

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

    Scroll until Submit button

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Scroll until Submit button

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Wait Until Element Is Visible     ${Yes_Button}     timeout=30s
    Click Element    ${Yes_Button}  
    Sleep    60s

    Press Keycode    4

Change Status to Reschedule (No Date)
    #Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    #Sleep    5
    #Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    #Sleep    5
    #Task.Search by Source System UNIFI

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

    Wait Until Element Is Visible     ${Rescheduled_Button}     timeout=30s
    Click Element    ${Rescheduled_Button}
    Sleep    5s   

    Wait Until Element Is Visible     ${NoDate_Button}     timeout=30s
    Click Element    ${NoDate_Button}
    Sleep    5s   

    Wait Until Element Is Visible     ${Cause_Category}     timeout=30s
    Click Element    ${Cause_Category}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Customer"]
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Customer_Cancel TT"]
    Sleep    5s
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Advise UCC"]
    Sleep    5s

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

Change Status to Reschedule (No Date) Other Than Customer
    #Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    #Sleep    5
    #Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    #Sleep    5
    #Task.Search by Source System UNIFI

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

    Wait Until Element Is Visible     ${Rescheduled_Button}     timeout=30s
    Click Element    ${Rescheduled_Button}
    Sleep    5s   

    Wait Until Element Is Visible     ${NoDate_Button}     timeout=30s
    Click Element    ${NoDate_Button}
    Sleep    5s   

    Wait Until Element Is Visible     ${Cause_Category}     timeout=30s
    Click Element    ${Cause_Category}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Customer CPE"]
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="BTU Faulty"]
    Sleep    5s
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="CCP_CPE Replaced"]
    Sleep    5s

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

Change Status to Reschedule (With Date) 
    #Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    #Sleep    5
    #Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    #Sleep    5
    #Task.Search by Source System UNIFI

    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     A-0000009612
    Sleep    5
    Hide Keyboard
    Sleep    5

    Wait Until Element Is Visible    ${Click_CurrentTask}      30s
    Click Element    ${Click_CurrentTask}
    Sleep    5s

    #${ticket_no}=    Set Variable    ${Search_button}

    #${Current_Ticket}    Set Variable    xpath=//android.view.View[contains(@content-desc, "${ticket_no}")]

    #Wait Until Element Is Visible    ${Current_Ticket}    30s
    #Click Element    ${Current_Ticket}
    #Sleep    5s

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

    Wait Until Element Is Visible     ${Rescheduled_Button}     timeout=30s
    Click Element    ${Rescheduled_Button}
    Sleep    5s   

    Wait Until Element Is Visible      ${WithDate_Button}     timeout=30s
    Click Element     ${WithDate_Button}
    Sleep    5s

    Ticket.Scroll Down A Bit

    Wait Until Element Is Visible      ${Appointment_DateTime}     timeout=30s
    Click Element     ${Appointment_DateTime}
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${calendar_Today_May11_X}, ${calendar_Today_May11_Y}) }}
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${radioButton_Option_Time_X}, ${radioButton_Option_Time_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible      ${Confirm_Button}     timeout=30s
    Click Element     ${Confirm_Button}
    Sleep    5s

    #Click Element    ${First_Preferred_DateTime}
    #Wait Until Element Is Visible     ${Date_Appointmnet2}     timeout=90s
    #Click Element    ${Date_Appointmnet2}
    #Click Element    ${Timeslot_Appointment2}
    #Click Element    ${Confirm_Button} 

    #Click Element    ${Second_Preferred_DateTime}
    #Wait Until Element Is Visible     ${Date_Appointmnet2}     timeout=90s
    #Click Element    ${Date_Appointmnet2}
    #Click Element    ${Timeslot_Appointment2}
    #Click Element    ${Confirm_Button}    
    
    Wait Until Element Is Visible     ${Cause_Category}     timeout=30s
    Click Element    ${Cause_Category}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Customer"]
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Customer_Cancel TT"]
    Sleep    5s
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Advise UCC"]
    Sleep    5s

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





















    
Change Status to Returned

    Wait Until Element Is Visible     ${New_Status}     timeout=90s
    Click Element    ${New_Status}  
    Wait Until Element Is Visible     ${Returned_Button}     timeout=90s
    Click Element    ${Returned_Button} 

    Click Element    ${Return_Reason_Button} 
    Click Element    ${Escalate_Option} 

    Wait Until Element Is Visible    ${New_Activity_Type_Button}
    Click Element    ${New_Activity_Type_Button} 
    Click Element    ${FS_Troubleshooting_Button} 
    
    Wait Until Element Is Visible     ${Cause_Category}     timeout=90s
    Click Element    ${Cause_Category}
    Click Element    ${Customer_Button}
    
    Scroll until Submit button

    Wait Until Element Is Visible     ${Cause_Code}     timeout=90s
    Click Element    ${Cause_Code}
    Click Element    ${Building_Internal_Button}
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=90s
    Click Element    ${Resolution_Code}
    Click Element    ${Normalise_Cable_Button}

    Click Element    ${notes_input}
    Input Text       ${notes_input}      test  
    Sleep    1
    Hide Keyboard 

    #add attachment
    Click A Point    945    1765

    #Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${camera_button}
    # Wait Until Element Is Visible    ${cameraCapture_button}    timeout=60s
    # Click Element    ${cameraCapture_button}
    Click A Point    883    2020     # Flip camera
    Click A Point    540    2026    # Shutter button
    Sleep    2
    Click A Point    205    2007    # Tap Retry
    Sleep    2
    Click A Point    540    2060    # Shutter button
    Sleep    2
    Click A Point    882    2018    # Tap OK
    Sleep    2

    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Attachment_type}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Attachment_type}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Scroll until Submit button

    #Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=20s
    Click Element    ${nameCaptured_input}
    Clear Text       ${nameCaptured_input}
    Input Text       ${nameCaptured_input}    testName
    Sleep    1
    Hide Keyboard
    Sleep    1
    Click Element    ${remarksCaptured_input} 
    Input Text       ${remarksCaptured_input}    testRemarks
    Sleep    1
    Hide Keyboard

    Click Element    ${Submit_Button}  
    Click Element    ${Yes_Button}  
    Sleep    2

Change Status to Returned (Cabinet Locked)
    Click Element    ${New_Status}  
    Wait Until Element Is Visible     ${Returned_Button}     timeout=90s
    Click Element    ${Returned_Button} 

    Click Element    ${Return_Reason_Button} 
    Click Element    ${Cabinet_Locked_Option} 
    
    Scroll until Submit button

    Click Element    ${notes_input}
    Input Text       ${notes_input}      test  
    Sleep    1
    Hide Keyboard 

    #add attachment
    Click A Point    945    1765

    #Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${camera_button}
    # Wait Until Element Is Visible    ${cameraCapture_button}    timeout=60s
    # Click Element    ${cameraCapture_button}
    Click A Point    883    2020     # Flip camera
    Click A Point    540    2026    # Shutter button
    Sleep    2
    Click A Point    205    2007    # Tap Retry
    Sleep    2
    Click A Point    540    2060    # Shutter button
    Sleep    2
    Click A Point    882    2018    # Tap OK
    Sleep    2

    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Attachment_type}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Attachment_type}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Scroll until Submit button

    #Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=20s
    Click Element    ${nameCaptured_input}
    Clear Text       ${nameCaptured_input}
    Input Text       ${nameCaptured_input}    testName
    Sleep    1
    Hide Keyboard
    Sleep    1
    Click Element    ${remarksCaptured_input} 
    Input Text       ${remarksCaptured_input}    testRemarks
    Sleep    1
    Hide Keyboard

    # Click Element    ${Submit_Button}  
    # Click Element    ${Yes_Button}  
    # Sleep    1

Scroll until update button

    Wait Until Element Is Visible     ${Task_View}     timeout=90s
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${AssignedTask_Update_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${AssignedTask_Update_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling
    Click Element    ${AssignedTask_Update_Button}