*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Locators/locators.robot

*** Keywords ***
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


































    
Action Attachment
    # Wait Until Element Is Visible     ${assignedTaskContent}     timeout=60s
    Sleep    10
    
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${attachment_button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${attachment_button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Update button not found after scrolling
    Click Element    ${attachment_button}
    ${newAttachments_button}=    Get WebElement   xpath=(//android.widget.Button)[last()]
    Wait Until Element Is Visible    ${newAttachments_button}    timeout=120s
    Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s

Tap Add Attachment Button
    Sleep    50
    
    ${newAttachments_button}=    Get WebElement   xpath=(//android.widget.Button)[last()]
    Wait Until Element Is Visible    ${newAttachments_button}    timeout=120s
    Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Sleep    2
    # [Arguments]    ${x}    ${y}
    # Sleep    20
    # ${x_in}=    Evaluate    ${x} > 890 and ${x} < 1040
    # ${y_in}=    Evaluate    ${y} > 2080 and ${y} < 2190
    # Run Keyword If    '${x_in}' == 'True' and '${y_in}' == 'True'    Click A Point   ${x}    ${y}
    # Click A Point    966    2162
    # Sleep    10

View Ticket Details
    Sleep    10
    Wait Until Element Is Visible    ${searchFilter_button}    timeout=10s
    Click Element    ${searchFilter_button}
    Clear Text    ${searchFilter_button}
    Input Text    ${searchFilter_button}    3746
    Sleep    2
    Hide Keyboard
    Sleep    2    

Upload Attachment - Camera Photo
    # Click Element    ${newAttachments_button}
    # Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Sleep    5s
    Click Element    ${camera_button}
    Wait Until Element Is Visible    ${cameraCapture_button}    timeout=60s
    Click Element    ${cameraCapture_button}
    
    #AINI'S PHONE
    Click A Point    883    2020     # Flip camera
    Click A Point    540    2026    # Shutter button
    # Click Element    ${shutter_button}
    Sleep    5
    Click A Point    205    2007    # Tap Retry (x)
    Sleep    5
    Click A Point    540    2026    # Shutter button
    # Click Element    ${shutter_button}
    Sleep    2
    Click A Point    882    2018    # Tap OK
    Sleep    2
    Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=180s
    Click Element    ${nameCaptured_input}
    Sleep    1
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNamePhoto
    Sleep    1
    Hide Keyboard
    Click Element    ${remarksCaptured_input} 
    Input Text    ${remarksCaptured_input}    testRemarksPhoto
    Sleep    1
    Hide Keyboard
    Click Element    ${uploadCaptured_button}
    Sleep    5

    #ADIBAH'S PHONE
    # Click A Point    540    2015    # Shutter button
    # Click A Point    875    2015    # Yes button
    # Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=20s
    # Click Element    ${nameCaptured_input_Adibah}
    # Sleep    1
    # ${nameCaptured_input_Adibah}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    # Clear Text    ${nameCaptured_input_Adibah}
    # Input Text    ${nameCaptured_input_Adibah}    testNamePhoto
    # Sleep    1
    # Hide Keyboard
    # Click Element    ${remarksCaptured_input} 
    # Input Text    ${remarksCaptured_input}    testRemarksPhoto
    # Sleep    1
    # Hide Keyboard
    # Click Element    ${uploadCaptured_button}
    # Sleep    5

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

Upload Attachment - Gallery Photo
    Sleep    10
    # Wait Until Element Is Visible    ${newAttachments_button}    timeout=60s
    # Click Element    ${newAttachments_button}
    # Wait Until Element Is Visible    ${uploadAttachment_list}    timeout=60s
    Click Element    ${gallery_button}
    Wait Until Element Is Visible    ${photoGallery_button}    timeout=60s
    Click Element    ${photoGallery_button}
    Sleep    3
    Wait Until Element Is Visible    ${Photo_From_Gallery_button}    timeout=60s
    Click Element    ${Photo_From_Gallery_button}
    Sleep    2
    Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=180s
    Click Element    ${nameCaptured_input}
    Sleep    1
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNameGalleryPhoto
    Sleep    1
    Hide Keyboard
    Click Element    ${remarksCaptured_input} 
    Input Text    ${remarksCaptured_input}    testRemarksGalleryPhoto
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

Upload Attachment - Files Document
    Sleep    20
    # Wait Until Element Is Visible    ${newAttachments_button}    timeout=60s
    # Click Element    ${newAttachments_button}
    Wait Until Element Is Visible    ${files_button}    timeout=60s
    Click Element    ${files_button}
    Wait Until Element Is Visible    ${documentFiles_button}    timeout=60s
    Click Element    ${documentFiles_button}
    Sleep    2
    Click Element    xpath=//android.widget.Button[@content-desc="Search"]    #search doc
    
    Input Text    xpath=//android.widget.EditText[@resource-id="com.google.android.documentsui:id/search_src_text"]    1152
    Sleep    1
   
    Click Element    xpath=//android.widget.TextView[@resource-id="android:id/title" and @text="PageSpeed Insights - 1152.pdf"]    #DOCUMENT PAGE INSIGHT 1152
    Sleep    1
    Wait Until Element Is Visible    ${sizeCaptured_text}    timeout=180s
    Click Element    ${nameCaptured_input}
    Sleep    1
    ${nameCaptured_input}=    Get WebElement    xpath=//android.widget.EditText[@class='android.widget.EditText']
    Clear Text    ${nameCaptured_input}
    Input Text    ${nameCaptured_input}    testNameFiles
    Sleep    1
    Hide Keyboard
    Click Element    ${remarksCaptured_input} 
    Input Text    ${remarksCaptured_input}    testRemarksFiles
    Sleep    1
    Hide Keyboard
    Click Element    ${uploadCaptured_button}
    Sleep    5

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