*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot
Resource    ../Keywords/CurrentTask.robot

*** Keywords ***
Search by keywords
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     A-000000181
    Sleep    5
    Hide Keyboard
    Sleep    1
    
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Sleep    5
    Hide Keyboard
    Sleep    1

Clear Search
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Sleep    5
    Hide Keyboard
    Sleep    1

Search by Source System
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     UNIFI
    Sleep    5
    Hide Keyboard
    Sleep    1

Click Sort Button
    Wait Until Element Is Visible    ${filter_button}      30s
    Click Element    ${filter_button}  

    Wait Until Element Is Visible    ${applyFilter_button}      10s
    Sleep    5

    Click Element    ${applyFilter_button}
    Sleep    3

Click Current Task Ticket to Add Activity
    Wait Until Element Is Visible    ${Click_CurrentTask}      30s
    Click Element    ${Click_CurrentTask}

    Wait Until Element Is Visible    ${Activity_Tab}      30s
    Click Element    ${Activity_Tab}

    Wait Until Element Is Visible    ${Action_button}      30s
    Click Element    ${Action_button}

    Wait Until Element Is Visible    ${Create_Activity_button}      30s
    Click Element    ${Create_Activity_button}

    Create Activity

Create Activity
    Wait Until Element Is Visible    ${Activity_Type_Category}      30s
    Click Element    ${Activity_Type_Category}
    Sleep    2
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="MANUAL TASK NIC"]      30s
    Click Element    xpath=//android.widget.Button[@content-desc="MANUAL TASK NIC"]
    Sleep    2

    Wait Until Element Is Visible    ${Activity_Type}      30s
    Click Element    ${Activity_Type}
    Sleep    2
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="MT - CORRECTIVE MAINTENANCE - NIC"]      30s
    Click Element    xpath=//android.widget.Button[@content-desc="MT - CORRECTIVE MAINTENANCE - NIC"]
    Sleep    2

    Wait Until Element Is Visible    ${Description_Field}    10s
    Click Element                   ${Description_Field}
    Input Text                      ${Description_Field}    Manual Task NIC
    Sleep    2
    Click Element            xpath=//android.view.View[@content-desc="Create Activity"]
    Sleep    2

    Wait Until Element Is Visible    ${Appt_Start_Date_Time}      30s
    Click Element    ${Appt_Start_Date_Time}
    Sleep    2
    Click Element    ${Confirm_button}
    Sleep    2
    Click Element    ${Confirm_button}
    Sleep    2

    Wait Until Element Is Visible    ${Appt_End_Date_Time}      30s
    Click Element    ${Appt_End_Date_Time}
    Sleep    2
    Click Element    ${Confirm_button}
    Sleep    2
    Click Element    ${Confirm_button}
    Sleep    2

    Wait Until Element Is Visible    ${Submit_button}      30s
    Click Element    ${Submit_button}





















Search by keywords - New Ticket

    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     3787
    Sleep    5
    Hide Keyboard
    Sleep    1

Search by keywords - New Ticket 1

    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     3669
    Sleep    5
    Hide Keyboard
    Sleep    1

View Task List
    #Task.Scroll To The top
    Wait Until Page Contains Element    ${CurrentTask_Dropdown}     timeout=90

    Click A Point    527    803     #close curent task dropdown
    Sleep    3
    Click A Point    520    1028    #close assigned task dropdown
    Sleep    3
    Click A Point    506    1202    #close task history dropdown
    Sleep    3
    Click A Point    520    1028    #open assigned task dropdown

    #aini's phone
    # Click A Point    504   724     #close curent task dropdown
    # Sleep    3
    # Click A Point    520    900    #close assigned task dropdown
    # Sleep    3
    # Click A Point    520   1060    #close task history dropdown
    # Sleep    3
    # Click A Point    520    900    #open assigned task dropdown
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Details_Button}
    FOR    ${i}    IN RANGE    30
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    100
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Details_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    # scroll to bottom
    # FOR    ${i}    IN RANGE    5
    #     Swipe By Percent    50    90    50    10    300
    #     Sleep    2
    # END


  

Swipe to View details

    Click Element    ${Details_Button}

    #Wait Until Element Is Visible    ${Details_Tab}    timeout=90s
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Flag_Information}
    FOR    ${i}    IN RANGE    30
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    100
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Flag_Information}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Click Element    ${Activity_Tab}
    Click Element    ${Customer_Tab}
    Click Element    ${Service_Tab}
    Click Element    ${Network_Tab}
    Click Element    ${NIS_Tab}
    Click Element    ${Granite_Tab}
    Click Element    ${Equipment_Tab}
    Click Element    ${Miscellaneous_Tab}
    Click Element     ${InApp_Tab}
    
    Click Element    ${Back_Button}


Scroll To The top
    
    Swipe    540    800    540    2000    500
    Sleep    1

Edit ETTA
    Click Element    ${Edit_ETTA_Button}
    Sleep    1
    Click Element    ${ETTA_Button2}
    Sleep    1
    Click A Point    700    761

    Wait Until Element Is Visible    ${Calendar_Button}
    Click Element    ${Calendar_Button}

    #choose date
    Click Element    ${ETTA_DATE}
    Click Element    ${Confirm_Button}

    #choose time
    Click A Point    626    1499    #JAM 17
    sleep    1

    #Click A Point    794    1350    #MINIT 15

    Click Element    ${OK_Button}
    Click Element    ${Submit_Button}
    Click Element    ${Yes_Button}
    Sleep    10s
    
    Wait Until Element Is Visible    ${ETTA_Popup}    timeout=90s
    Click A Point    700    761
    Sleep    3

Verify Action Add Notes, Attachment & Signature
    
    #CurrentTask.Scroll until Submit button

    Click Element    ${notes_input}
    Input Text       ${notes_input}      test  
    Sleep    1
    Hide Keyboard 

    #add attachment (from camera)
    Click A Point    973    1600

    #Click Element    ${newAttachments_button}
    # Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    # Click Element    ${camera_button}
    # # Wait Until Element Is Visible    ${cameraCapture_button}    timeout=60s
    # # Click Element    ${cameraCapture_button}
    # Click A Point    883    2020     # Flip camera
    # Click A Point    540    2026    # Shutter button
    # Sleep    2
    # Click A Point    205    2007    # Tap Retry
    # Sleep    2
    # Click A Point    540    2060    # Shutter button
    # Sleep    2
    # Click A Point    882    2018    # Tap OK
    # Sleep    6
    
    # #NANTI BUKAK BALIK MASA DEMO 
    # Wait Until Element Is Visible    android=new UiSelector().className("android.widget.Button").instance(2)      timeout=60s
    # Click Element     android=new UiSelector().className("android.widget.Button").instance(2)     #${Cancel_Attachment_button}
    
    #add attachment (from photos)
    Click A Point    973    1600

    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${Photo_button}

    Wait Until Element Is Visible    ${Photo_From_Gallery_button}    timeout=60s
    Click Element    ${Photo_From_Gallery_button}
    Sleep    2
    
    # CurrentTask.Scroll until Submit button

    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${remarksCaptured_input}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${remarksCaptured_input}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    
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
    Click Element    ${Signature_Button}
    Sleep    2
    
    
    #Draw signature
    Swipe    540    1200    540    800    500
    Sleep    1
    
    Click Element    ${Clear_Button}                       
    #Click Element    ${Cancel_Button}
    Swipe    540    1200    540    800    500
    Sleep    1

    Swipe    560    800    560    1200    500
    Sleep    1
    
    Swipe    60    1105    1020    1105    500
    Sleep    1

    Click Element    ${Submit_Button}  #submit signature

Verify Submit Ticket
    
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Additional_Information}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Additional_Information}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Additional Information not found after scrolling
    Click Element    ${Additional_Information}
    Sleep    0.2s

    CurrentTask.Scroll until Submit button
   

    Click Element    ${Submit_Button}
    Sleep    2

    Click Element    ${Yes_Button}  
    Sleep    1

Verify Status Ticket Resolved
    
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Verify_Status_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Verify_Status_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Additional Information not found after scrolling
    Click Element    ${Verify_Status_Button}
    Sleep    0.2s

    Click Element    ${Yes_Button}  
    Sleep    1