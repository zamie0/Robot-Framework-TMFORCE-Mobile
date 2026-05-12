*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/Ticket.robot

*** Keywords ***
Search Ticket by ID
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     T-0000009510
    Sleep    5
    Hide Keyboard
    Sleep    1

Update Status to Resolved - Test CCP module
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

Submit CCP
    Ticket.Scroll Down A Bit

    Wait Until Element Is Visible     ${notes_input}     timeout=30s
    Click Element    ${notes_input}
    Input Text       ${notes_input}      Test  
    Sleep    5s
    Hide Keyboard    

    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${Add_Attachment_Button_X}, ${Add_Attachment_Button_Y}) }}
    Sleep    5s

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

    Wait Until Element Is Visible     ${Submit_Button}     timeout=30s
    Click Element    ${Submit_Button}  
    Sleep    5s

    Wait Until Element Is Visible     ${Yes_Button}     timeout=30s
    Click Element    ${Yes_Button}  
    Sleep    60s

    Press Keycode    4



























Verify Swap CPE Action - Old CPE (Phone)

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

    #scrol until service point //only for ticket 3677 for testing
    # ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Service_Point}
    # FOR    ${i}    IN RANGE    5
    #     Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
    #     Swipe By Percent    50    80    50    30    500
    #     Sleep    1
    #     ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Service_Point}
    # END
    # Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    #Wait Until Element Is Visible    ${Flag_Button}
    #Click Element    ${Flag_Button}
    # Click Element    ${Dismiss_Button}
    #Click A Point    526    823
    
    Wait Until Element Is Visible     ${Update_Button}     timeout=30s
    Click Element    ${Update_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Generate_SN_Button}     timeout=30s
    Click Element    ${Generate_SN_Button}
    Sleep    5s

    Wait Until Element Is Visible     ${Material_Desc_Button}     timeout=30s
    Click Element    ${Material_Desc_Button}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="MODEM VDSL SINGLE BOX"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="MODEM VDSL SINGLE BOX"]
    Sleep    5s

    Wait Until Element Is Visible     ${Faulty_Reason_Button}     timeout=30s
    Click Element    ${Faulty_Reason_Button}
    Sleep    5s

    Wait Until Element Is Visible     xpath=//android.widget.Button[@content-desc="SBVM Config Issue"]     timeout=30s
    Click Element    xpath=//android.widget.Button[@content-desc="SBVM Config Issue"]
    Sleep    5s

    Wait Until Element Is Visible     ${Remarks_Input}     timeout=30s
    Click Element    ${Remarks_Input}
    Input Text    ${Remarks_Input}    Test
    Hide Keyboard

Verify Swap CPE Action- New CPE

    Ticket.Scroll Down A Bit

    Wait Until Element Is Visible     ${Scan_Barcode_Button}     timeout=30s
    Click Element    ${Scan_Barcode_Button}
    Sleep    5s

    Click Element    ${Scan_Barcode_Button}
    Click Element    ${Cancel_Scan_Button}
    Sleep    3
    Click Element    ${Scan_Barcode_Button}
    Click Element    ${Cancel_Scan_Button}
    Sleep    3
    Click Element    ${Scan_Barcode_Button}
    Click Element    ${Cancel_Scan_Button}
    Sleep    3

    # Wait Until Element Is Visible    ${List_Button}
    # Click Element    ${List_Button}
    Click A Point    913    1408

    Click Element    ${Serial_Number_List1}
    Hide Keyboard 


    Click Element    ${Verify_SN_Button}
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Save_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Save_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Wait Until Element Is Visible    ${MAC_Address_Input}
    Input Text    ${MAC_Address_Input}    A1:B1:C1:DD:EE:FF
    Sleep    1
    Hide Keyboard
    Sleep    1
    
    Click Element    ${Save_Button}
    Sleep    3
    Click Element    ${Back_Button}
    # Click Element    ${Back_Button}




verify Swap CPE Action- New CPE (boleh scan barcode & equipment cant support service package)

    Swipe    540    2103    540    381    1000

    Click Element    ${Scan_Barcode_Button}
    
    Wait Until Element Is Visible    ${Verify_SN_Button}    timeout=60s    #masa untuk scan barcode
    Click Element    ${Verify_SN_Button}
    Sleep    2

    #CPE SN doesnt Exist
    Click A Point    545    848  #popup sn tak exist

    Click Element    ${Scan_Barcode_Button}
    # Click Element    ${Cancel_Scan_Button}
    Click A Point    933    2215    #cancel button
    Sleep    3

    Click Element    ${Scan_Barcode_Button}
    #Click Element    ${Cancel_Scan_Button}
    Click A Point    933    2215    #cancel button
    Sleep    3

    # Wait Until Element Is Visible    ${List_Button}
    # Click Element    ${List_Button}
    Click A Point    913    1408

    Click Element    ${Serial_Number_List1}    #PILIH FIRST LIST
    Hide Keyboard 
    Sleep    2

    Click Element    ${Verify_SN_Button}
    Sleep    3

    Click A Point    545    848  #CLOSE POPUP EQUIPMENT CANT SUPPORT
    
    Click A Point    913    1408    #click list buuton
    Click Element    ${Serial_Number_List3}        #PILIH LIST YANG LAIN
    Hide Keyboard 

    Click Element    ${Verify_SN_Button}
    Sleep    3

    Click A Point    545    848  #CLOSE POPUP EQUIPMENT CANT SUPPORT
    Sleep    3

    Click Element    ${Back_Button}
    Sleep    3
    Click Element    ${Back_Button}
    sleep    2

Verify Action Add Loose Equipment
    
    Wait Until Element Is Visible    ${Add_Loose_Equip_Button}
    Click Element    ${Add_Loose_Equip_Button}
    Sleep    3

    # Wait Until Element Is Visible    ${Equipment_Name_Button}
 
    Click A Point    460    631     
    # Click Element    ${Equipment_Name_Button}
    Wait Until Element Is Visible    ${TVOS_Button}
    Click Element    ${TVOS_Button}
    Wait Until Element Is Visible    ${Save_Button}
    Click Element    ${Save_Button}
    Sleep    2
    Wait Until Element Is Visible    ${New_CPE}
    Sleep    3
    Click Element    ${Equipment_Back_Button}

Verify Action Add Equipment
    
    Click Element    ${Add_New_Equip_Button}

    Click Element    ${Scan_Barcode_Button}
    Click Element    ${Cancel_Scan_Button}
    Sleep    2
    Click Element    ${Scan_Barcode_Button}
    Click Element    ${Cancel_Scan_Button}
    sleep    2
    Click Element    ${Scan_Barcode_Button}
    Click Element    ${Cancel_Scan_Button}
    
    #Wait Until Element Is Visible    ${List_Button}
    #Click Element    ${List_Button}
    Click A Point    966    684

    Click Element    ${Serial_Number_List1}
    Click Element    ${Verify_SN_Button}

    Wait Until Element Is Visible    ${Save_Button}
    Click Element    ${Save_Button}
    Sleep    2
    Click Element    ${Back_Button}
