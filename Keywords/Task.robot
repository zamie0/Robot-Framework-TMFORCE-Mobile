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

Click Current Task
    Wait Until Element Is Visible    ${Click_CurrentTask}    30s
    Click Element    ${Click_CurrentTask}
    Sleep    5s

Search by Source System UNIFI
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     UNIFI
    Sleep    5
    Hide Keyboard
    Sleep    1

Search by Source System BAU
    Wait Until Element Is Visible    ${Search_button}     30s
    Click Element    ${Search_button} 
    Clear Text    ${Search_button} 
    Input Text    ${Search_button}     BAU
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