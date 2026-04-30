*** Settings ***

Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/CurrentTask.robot

*** Keywords ***
Ungated Area  
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    Sleep    5
    Task.Search by Source System

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
    Click Element    xpath=//android.widget.Button[@content-desc="LocalAccess"]
    Sleep    5s

    Wait Until Element Is Visible     ${Cause_Code}     timeout=30s
    Click Element    ${Cause_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="DP_Pair Faulty"]
    Sleep    5s
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=30s
    Click Element    ${Resolution_Code}
    Sleep    5s
    Click Element    xpath=//android.widget.Button[@content-desc="Changed Jumper"]
    Sleep    5s

    Scroll until Submit button

    Wait Until Element Is Visible     ${Service_Verification_Button}     timeout=30s
    Click Element    ${Service_Verification_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Verify_Button}     timeout=30s
    Click Element    ${Verify_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Done_Button}     timeout=30s
    Click Element    ${Done_Button}
    Sleep    5s

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

Gated Area
Gated HSI - Passed
Gated HSI - Failed
Gated HSI, IPTV, IVR - Passed


















Verify Service Testing HSI
    Click Element    ${Service_Verification_Button}
    Wait Until Element Is Visible    ${Verify_Button}
    Click Element    ${Verify_Button}
    Click Element    ${Done_Button}


Verify Gated Unifi
    Wait Until Element Is Visible     ${New_Status}     timeout=90s
    Click Element    ${New_Status}  
    Wait Until Element Is Visible     ${Resolved_Button}     timeout=90s
    Click Element    ${Resolved_Button}   
    
    Wait Until Element Is Visible     ${Cause_Category}     timeout=90s
    Click Element    ${Cause_Category}
    Click Element    ${Customer_Button}

    Wait Until Element Is Visible     ${Cause_Code}     timeout=90s
    Click Element    ${Cause_Code}
    Click Element    ${Building_Internal_Button}
    
    # Scroll until Submit button
    
    Wait Until Element Is Visible     ${Resolution_Code}     timeout=90s
    Click Element    ${Resolution_Code}
    Click Element    ${Advice_Customer_Button}

    #scroll
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Service_Verification_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Service_Verification_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Click Element    ${Service_Verification_Button}
    Wait Until Element Is Visible    ${IVR_Pin_Code_Button}
    Click Element    ${IVR_Pin_Code_Button}
    Input Text    ${IVR_Pin_Code_Button}    0123456789   
    Hide Keyboard
     
    
    Click Element    ${Verify_Button}
    Sleep    5

    
    # Click A Point   553    1543

    # Wait Until Element Is Visible    ${Update_SPANMS_Button}
    # Click Element    ${Update_SPANMS_Button}

    # Wait Until Element Is Visible    ${Update_Manually_Button}
    # Click Element    ${Update_Manually_Button}

    # Wait Until Element Is Visible    ${Reverify_Inventory_Button}
    # Click Element    ${Reverify_Inventory_Button}

    #scroll
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Close_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Close_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    
    Wait Until Element Is Visible    ${Close_Button}
    Click Element    ${Close_Button}


