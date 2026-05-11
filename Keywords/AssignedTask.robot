*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot

*** Variables ***
# Global variable to store the ID across different keywords
${CAPTURED_ACTIVITY_ID}    NONE

*** Keywords ***
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

Change Status to On My Way    
    Wait Until Element Is Visible    ${Click_PendingAccept}      30s
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${PendingAccept_Dropdown_HEADER_X}, ${PendingAccept_Dropdown_HEADER_Y}) }}
    Sleep    5
    Tap With Positions    ${TAP_DURATION}    ${{ (${CurrentTask_Dropdown_HEADER_X}, ${CurrentTask_Dropdown_HEADER_Y}) }}
    Sleep    5

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

Scroll up to the top
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${CurrentTask_Dropdown}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    30    50    80    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${CurrentTask_Dropdown}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Element not found after scrolling up
