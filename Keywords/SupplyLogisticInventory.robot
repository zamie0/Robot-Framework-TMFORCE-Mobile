*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Locators/locators.robot
Resource      ../Keywords/Sidebar.robot

*** Keywords ***
CPE List In Hand
    Sidebar.Open Sidebar

    Wait Until Element Is Visible       ${CPE_IN_HAND}    30s
    Click Element                       ${CPE_IN_HAND}
    Sleep    5

    #Wait Until Element Is Visible       ${Calculator_Button}    30s
    #Click Element                       ${Calculator_Button}
    #Sleep    5

    #Tap With Positions    ${TAP_DURATION}    ${{ (714, 714) }}
    #Sleep    5

    #Search CPE Test
    #Click Sort Button

Search CPE Test
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     90300
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
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

Stock Transfer To Team
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Transfer_Button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${Transfer_Button}
    END
    Run Keyword If    '${element[0]}' == 'FAIL'    Fail    Accept button not found after scrolling

    Wait Until Element Is Visible       ${Transfer_Button}    30s
    Click Element                       ${Transfer_Button}
    Sleep    5

    Wait Until Element Is Visible    ${Staff_Number_Field}     30s
    Click Element    ${Staff_Number_Field} 
    Clear Text    ${Staff_Number_Field} 
    Input Text    ${Staff_Number_Field}     B14331
    Sleep    5
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible       ${Confirm_Button}    30s
    Click Element                       ${Confirm_Button}
    Sleep    5

    Wait Until Element Is Visible       ${Yes_Button}    30s
    Click Element                       ${Yes_Button}
    Sleep    5

Accept CPE Stock Transfer
    Wait Until Element Is Visible       ${Accept_Button}    30s
    Click Element                       ${Accept_Button}
    Sleep    5

    Wait Until Element Is Visible       ${No_Button}    30s
    Click Element                       ${No_Button}
    Sleep    5

    Wait Until Element Is Visible       ${Reject_Button}    30s
    Click Element                       ${Reject_Button}
    Sleep    5

    Wait Until Element Is Visible       ${Yes_Button}    30s
    Click Element                       ${Yes_Button}
    Sleep    5

CPE Stock Count
    Sidebar.Open Sidebar

    Wait Until Element Is Visible       ${CPE_STOCK_COUNT}    30s
    Click Element                       ${CPE_STOCK_COUNT}
    Sleep    10

    Wait Until Element Is Visible       ${Scanner_Button}    30s
    Click Element                       ${Scanner_Button}
    Sleep    10

    Wait Until Element Is Visible       ${Add_To_List_Button}    30s
    Click Element                       ${Add_To_List_Button}
    Sleep    5

    Wait Until Element Is Visible       ${X_Button}    30s
    Click Element                       ${X_Button}
    Sleep    5

    Wait Until Element Is Visible       ${No_Button}    30s
    Click Element                       ${No_Button}
    Sleep    5

    Wait Until Element Is Visible       ${Submit_Button}    30s
    Click Element                       ${Submit_Button}
    Sleep    10

    Wait Until Element Is Visible       ${Yes_Button}    30s
    Click Element                       ${Yes_Button}
    Sleep    10

    Wait Until Element Is Visible       ${Zero_Balance_Tab}    30s
    Click Element                       ${Zero_Balance_Tab}
    Sleep    5

    Wait Until Element Is Visible       ${Agree_Zero_Balance_Button}    30s
    Click Element                       ${Agree_Zero_Balance_Button}
    Sleep    5

    Wait Until Element Is Visible       ${Submit_Button}    30s
    Click Element                       ${Submit_Button}
    Sleep    10

CPE Swap
    CPE SWAP MOVEMENT
    CPE SWAP MOVEMENT (BAU)
    CPE STATUS = LOCK STATUS
    CPE STATUS = PROPOSED TRANSFER

CPE SWAP MOVEMENT


CPE SWAP MOVEMENT (BAU)


CPE STATUS = LOCK STATUS


CPE STATUS = PROPOSED TRANSFER


