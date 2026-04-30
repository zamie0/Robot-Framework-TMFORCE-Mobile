*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Task.robot
Resource      ../Keywords/CurrentTask.robot

*** Keywords ***
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

Upload Notes 
    #Wait Until Element Is Visible     ${Notes_Button}     10s
    #Click Element    ${Notes_Button}

    Wait Until Element Is Visible     xpath=//android.view.View[@content-desc="Notes"]     10s
    Click Element    xpath=//android.view.View[@content-desc="Notes"]
    Sleep    5

    Wait Until Element Is Visible     ${addNotes_button}     10s
    Click Element    ${addNotes_button}
    Sleep    5

    Wait Until Element Is Visible   ${selectNotes_button}    timeout=10s
    Click Element    ${selectNotes_button}
    
    Wait Until Element Is Visible   ${Serach_selectNotes_button}    timeout=10s
    Click Element    ${Serach_selectNotes_button}
    Input Text    ${Serach_selectNotes_button}    Advise Partner

    Wait Until Element Is Visible    ${Advise_Partner_List}    timeout=10s
    Click Element    ${Advise_Partner_List}

    Wait Until Element Is Visible  ${descNotes_input}    timeout=10s
    Click Element    ${descNotes_input}
    Input Text    ${descNotes_input}    Advise Mr Annuar
    Sleep    5

    Click Element    ${doneNotes_button}
    Sleep    5

    Wait Until Element Is Visible    ${confirmationReminder}    timeout=10s
    Click Element    ${yesNotes_button}
    Sleep    30

    Wait Until Element Is Visible     ${filterNotes_input}     10s
    Click Element    ${filterNotes_input}
    Input Text    ${filterNotes_input}    Advise Mr Annuar
    Sleep    5

View Attachment
    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5

    Task.Search by Source System

    Wait Until Element Is Visible     ${Click_CurrentTask}     timeout=30s
    Click Element    ${Click_CurrentTask} 

    Click Element    ${Activity_Tab}
    Sleep    5s
    
    Capture Activity ID
    Sleep    5s

    Wait Until Element Is Visible    ${Action_button}      30s
    Click Element    ${Action_button}
    Sleep    5s

    Wait Until Element Is Visible    ${Attachments_button}      30s
    Click Element    ${Attachments_button}
    Sleep    20s

Tap Add Attachment Button
    ${newAttachments_button}=    Get WebElement   xpath=(//android.widget.Button)[last()]
    Wait Until Element Is Visible    ${newAttachments_button}    timeout=120s
    Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Sleep    2s

Upload Attachment - Camera Photo
    Tap Add Attachment Button

    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=30s
    Click Element    ${camera_button}
    Sleep    5s

    Wait Until Element Is Visible    ${Capture_button}    timeout=30s
    Click Element    ${Capture_button}
    Sleep    5s

    Wait Until Element Is Visible    ${cameraCapture_button}    timeout=30s
    Click Element    ${cameraCapture_button}
    Sleep    5s

    Wait Until Element Is Visible    ${Yes_cameraCapture_button}    timeout=30s
    Click Element    ${Yes_cameraCapture_button}
    Sleep    10s

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible     ${nameCaptured_input}     timeout=30s
    Click Element    ${nameCaptured_input}
    Clear Text       ${nameCaptured_input}
    Input Text       ${nameCaptured_input}    Test Camera Photo
    Sleep    1
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible     ${remarksCaptured_input}     timeout=30s
    Click Element    ${remarksCaptured_input} 
    Input Text       ${remarksCaptured_input}    Test Remarks
    Sleep    1
    Hide Keyboard
    Sleep    1

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible    ${upload_button}    timeout=30s
    Click Element    ${upload_button}
    Sleep    10s

Upload Attachment - Gallery Photo
    Tap Add Attachment Button

    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=30s
    Click Element    ${gallery_button}
    Sleep    5s

    Wait Until Element Is Visible    ${photoGallery_button}    timeout=30s
    Click Element    ${photoGallery_button}
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${photoPickerFirstItem_X}, ${photoPickerFirstItem_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible    ${photoPickerAdd_Button_Done}    timeout=30s
    Click Element    ${photoPickerAdd_Button_Done}
    Sleep    5s

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible     ${nameCaptured_input}     timeout=30s
    Click Element    ${nameCaptured_input}
    Clear Text       ${nameCaptured_input}
    Input Text       ${nameCaptured_input}    Test Gallery Photo
    Sleep    1
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible     ${remarksCaptured_input}     timeout=30s
    Click Element    ${remarksCaptured_input} 
    Input Text       ${remarksCaptured_input}    Test Remarks
    Sleep    1
    Hide Keyboard
    Sleep    1

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible    ${upload_button}    timeout=30s
    Click Element    ${upload_button}
    Sleep    10s

Upload Attachment - File Document
    Tap Add Attachment Button

    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=30s
    Click Element    ${files_button}
    Sleep    5s

    Wait Until Element Is Visible    ${documentFiles_button}    timeout=30s
    Click Element    ${documentFiles_button}
    Sleep    5s

    Wait Until Element Is Visible    xpath=//android.widget.LinearLayout[@package="com.google.android.documentsui"]    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${documentsUI_FileItem_X}, ${documentsUI_FileItem_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible    ${documentsUI_Select_Button}    timeout=30s
    Click Element    ${documentsUI_Select_Button}
    Sleep    5s

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible     ${nameCaptured_input}     timeout=30s
    Click Element    ${nameCaptured_input}
    Clear Text       ${nameCaptured_input}
    Input Text       ${nameCaptured_input}    Test File Document
    Sleep    1
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible     ${remarksCaptured_input}     timeout=30s
    Click Element    ${remarksCaptured_input} 
    Input Text       ${remarksCaptured_input}    Test Remarks
    Sleep    1
    Hide Keyboard
    Sleep    1

    Swipe By Percent    50    80    50    30    500

    Wait Until Element Is Visible    ${upload_button}    timeout=30s
    Click Element    ${upload_button}
    Sleep    10s
































View Task - Notes List
    Wait Until Element Is Visible     ${assignedTaskContent}     timeout=60s
    Sleep    20
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${notes_button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${notes_button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Update button not found after scrolling
    Click Element    ${notes_button}
    Sleep    5

    # Click Element    ${backNotes_button}

View Ticket Details
    Sleep    10
    Wait Until Element Is Visible    ${searchFilter_button}    timeout=10s
    Click Element    ${searchFilter_button}
    Clear Text    ${searchFilter_button}
    Input Text    ${searchFilter_button}    3746
    Sleep    2
    Hide Keyboard
    Sleep    2    

Upload Attachment - Camera Video
    Sleep    10
    # Wait Until Element Is Visible    ${newAttachments_button}    timeout=60s
    # Click Element    ${newAttachments_button}
    # Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${camera_button}
    Wait Until Element Is Visible    ${recordCapture_button}    timeout=60s
    Click Element    ${recordCapture_button}
    Click Element    xpath=//android.widget.ImageView[@content-desc="Rear Camera"]
    Click Element    xpath=//android.widget.ImageView[@content-desc="Video Recording Button"]    #start record
    Set Appium Timeout    0s
    Click A Point    530    2030    # Stop button
    Click A Point    530    2030    # Stop button #kena double tap kat phone dibah
    Sleep    1
    Click Element    xpath=//android.widget.ImageView[@resource-id="com.oppo.camera:id/done_button"]    #okay button
    # Click A Point    890    2035     # Flip camera
    # Click A Point    530    2030     # Shutter button
    # # Click Element    ${shutter_button}S
    # Set Appium Timeout    0s
    # Click A Point    530    2030    # Stop button
    # Click A Point    530    2030    # Stop button #kena double tap kat phone dibah
    # Sleep    1
    # #Set Appium Timeout    5s    # Reset to default
    # Sleep    1
    # Click A Point    885    2020    # Tap OK
    Sleep    2
    Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=180s
    Click Element    ${nameCaptured_input}
    Sleep    1
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNameVideo27
    Sleep    1
    Hide Keyboard
    Click Element    ${remarksCaptured_input} 
    Input Text    ${remarksCaptured_input}    testRemarksVideo
    Sleep    1
    Hide Keyboard
    Click Element    ${uploadCaptured_button}
    Sleep    5

Upload Attachment - Gallery Video
    Sleep    10
    # Wait Until Element Is Visible    ${newAttachments_button}    timeout=60s
    # Click Element    ${newAttachments_button}
    # Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${gallery_button}
    Sleep    2
    Wait Until Element Is Visible    ${videoGallery_button}        timeout=60s
    Click Element    ${videoGallery_button}
    Sleep    2
    Click A Point    190    955 
    Sleep    2
    Click A Point    530    2190 
    Sleep    2
    Wait Until Element Is Visible    ${sizeCaptured_text}        timeout=180s
    Click Element    ${nameCaptured_input}
    Sleep    1
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNameGalleryVideo13
    Hide Keyboard
    Sleep    1
    Click Element    ${remarksCaptured_input} 
    Input Text    ${remarksCaptured_input}    testRemarksGalleryVideo
    Sleep    1
    Hide Keyboard
    Click Element    ${uploadCaptured_button}

    # retry cancel file name
    Sleep    5
    Click Element    ${retryFileName}
    Sleep    4
    Click Element    ${cancelFileName}
    Sleep    2
    Click Element    ${nameCaptured_input}
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNameGalleryVideo27
    Sleep    1
    Hide Keyboard
    Click Element    ${uploadCaptured_button}

Upload Attachment - Text Document
    Sleep    20
    # Wait Until Element Is Visible    ${newAttachments_button}    timeout=60s
    # Click Element    ${newAttachments_button}
    # Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${files_button}
    Wait Until Element Is Visible    ${textFiles_button}    timeout=60s
    Click Element    ${textFiles_button}
    Sleep    2
    Click Element    xpath=//android.widget.Button[@content-desc="Search"]    #search doc
    Input Text    xpath=//android.widget.EditText[@resource-id="com.google.android.documentsui:id/search_src_text"]    .txt
    Sleep    1

    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="txtDummy.txt"]    #text dummy
    Sleep    1
    Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=180s
    Click Element    ${nameCaptured_input}
    Sleep    1
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNameTxt
    Sleep    1
    Hide Keyboard
    Click Element    ${remarksCaptured_input} 
    Input Text    ${remarksCaptured_input}    testRemarksTxt
    Sleep    1
    Hide Keyboard
    Click Element    ${uploadCaptured_button}
    Sleep    5

View Attachment Lists
    Sleep    60s
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${attachment_button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${attachment_button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Update button not found after scrolling
    Click Element    ${attachment_button}    
    Wait Until Element Is Visible    ${image_attachments}    timeout=60s
    Sleep    20
    Click Element    ${image_attachments}
    Sleep    10
    Click Element    ${video_attachments}
    Sleep    10
    Click Element    ${document_attachments}
    Sleep    10
    Click Element    ${text_attachments}
    Sleep    10
    Click Element    ${all_attachments}
    Sleep    10

View Recent Attachment 
    Sleep    10   
    Click Element    ${image_attachments}
    Sleep    10
    Click Element    ${video_attachments}
    Sleep    10
    Click Element    ${document_attachments}
    Sleep    10
    Click Element    ${text_attachments}
    Sleep    10
    Click Element    ${all_attachments}
    Sleep    10