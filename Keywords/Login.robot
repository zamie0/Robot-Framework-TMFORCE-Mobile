*** Settings ***
Resource    ../Configs/setting.robot
Resource    ../Locators/locators.robot

*** Keywords ***
Login app - negative scenario
    Wait Until Element Is Visible      ${username_input}    10s
    Click Element                      ${username_input}
    Input Text                         ${username_input}    USER1
    Hide Keyboard
    Sleep    10

    Wait Until Element Is Visible      ${password_input}    10s
    Click Element                      ${password_input}
    Input Password                     ${password_input}    test
    Hide Keyboard
    Sleep    10

    Click Element                      ${login_btn}

    Handle Login Error

Handle Login Error
    ${cancel_present}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${BTN_CANCEL}
    ...    5s

    IF    ${cancel_present}
        Sleep    5
        Click Element    ${BTN_CANCEL}
        Wait Until Element Is Visible       ${username_input}    5s
        Click Element                       ${username_input}
        Clear Text                          ${username_input}
        Hide Keyboard

        Click Element                       ${password_input}
        Clear Text                          ${password_input}
        Hide Keyboard
    END

Login app - positive scenario
    Click Element                       ${username_input}
    Wait Until Page Contains Element    ${username_input}    timeout=10
    Input Text                          ${username_input}    D14331
    Sleep    5
    Hide Keyboard

    Click Element                       ${password_input}
    Wait Until Page Contains Element    ${password_input}    timeout=10
    Input Password                      ${password_input}    D14331
    Hide Keyboard
    Reveal Password
    Sleep    5

    Click Element                       ${login_btn}
    Sleep    5

Late Login   
    Click Element                       ${username_input}
    Wait Until Page Contains Element    ${username_input}    timeout=10
    Input Text                          ${username_input}    H14331
    Sleep    5
    Hide Keyboard

    Click Element                       ${password_input}
    Wait Until Page Contains Element    ${password_input}    timeout=10
    Input Password                      ${password_input}    H14331
    Hide Keyboard
    Reveal Password
    Sleep    5

    Click Element                       ${login_btn}
    Sleep    5

    Wait Until Page Contains          ${lateLogin_popup}    timeout=10s
    Wait Until Element Is Visible       ${lateLoginSelect_button}    timeout=30s
    Click Element                       ${lateLoginSelect_button}
    Sleep    5
    
    Tap With Positions    ${TAP_DURATION}    ${{ (${lateLoginSelect_Dropdown_HEADER_X}, ${lateLoginSelect_Dropdown_HEADER_Y}) }}
    
    Wait Until Element Is Visible       ${badWeatherReason}    timeout=30s
    Click Element                       ${badWeatherReason}
    Sleep    5

    Wait Until Element Is Visible       ${submit_button}    timeout=30s
    Click Element                       ${submit_button}
    Sleep    5

Device Info
    Sleep    1
    Click Element                       ${deviceInfo_button}
    Sleep    3
    Click Element                       ${deviceInfo_section}
    Sleep    1
    Click Element                       ${deviceInfo_section}
    Sleep    1
    Click Element                       ${application_section}
    Sleep    1
    Click Element                       ${application_section}
    Sleep    1
    Click Element                       ${troubleshootNetwork_button}
    Sleep    1
    Click Element                       ${network_section}
    Sleep    1
    Click Element                       ${network_section}
    Sleep    1
    Click Element                       ${start_button}

    # Wait until both tmforceAPI content and ping result are visible (within 300s)
    ${tmforce_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${tmforceAPI_content}    timeout=300s
    ${ping_visible}=       Run Keyword And Return Status    Wait Until Element Is Visible    ${ping_content}           timeout=300s

    Run Keyword If    not ${tmforce_visible} or not ${ping_visible}    Fail    Required content not visible in 300s

    # Scroll down to locate retry button
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${retry_button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${retry_button}
    END

    Run Keyword If    '${element[0]}' == 'FAIL'    Fail   Retry button not found after scrolling

    # Click retry button
    Click Element    ${retry_button}
    
    # Wait until both tmforceAPI content and ping result are visible (within 300s)
    ${tmforce_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${tmforceAPI_content}    timeout=300s
    ${ping_visible}=       Run Keyword And Return Status    Wait Until Element Is Visible    ${ping_content}           timeout=300s

    Run Keyword If    not ${tmforce_visible} or not ${ping_visible}    Fail    Required content not visible in 300s

    # Scroll down to locate retry button
    ${element}=    Run Keyword And Ignore Error    Get Webelement    ${retry_button}
    FOR    ${i}    IN RANGE    5
        Run Keyword If    '${element[0]}' != 'FAIL'    Exit For Loop
        Swipe By Percent    50    80    50    30    500
        Sleep    1
        ${element}=    Run Keyword And Ignore Error    Get Webelement    ${retry_button}
    END

    Run Keyword If    '${element[0]}' == 'FAIL'    Fail   Retry button not found after scrolling

    # Navigate back
    Click Element                       ${back_button}
    Sleep    2
    Click Element                       ${back_button}

Device Language
    Sleep    2
    Click Element                       ${BMLanguage_button}    # change to malay
    Sleep    2
    Click Element                       ${ENLanguage_button}    # change to english
    Sleep    2

Language RoundTrip
    ${en_present}=    Run Keyword And Return Status    Element Should Be Enabled    ${BTN_EN}    2s
    ${bm_present}=    Run Keyword And Return Status    Element Should Be Enabled    ${BTN_BM}    2s

    IF    ${en_present} and ${bm_present}
        Toggle Language    ${BTN_EN}    ${BTN_BM}    ${BTN_EN}
    ELSE IF    not ${en_present} and ${bm_present}
        Toggle Language    ${BTN_BM}    ${BTN_EN}    ${BTN_BM}    ${BTN_EN}
    END

Toggle Language
    [Arguments]    @{buttons}
    FOR    ${btn}    IN    @{buttons}
        Click Element    ${btn}
        Sleep    0.5s
    END

Reveal Password
    Wait Until Element Is Visible       ${EYE_BUTTON}    10s
    Click Element                       ${EYE_BUTTON}
    Sleep    5

Forgot Password
    Sleep    2
    Click Element                       ${forgotPassword_button}
    Sleep    2
    Click Element                       ${fpCancel_button}
    Sleep    2
    Click Element                       ${forgotPassword_button}
    Sleep    2
    Click Element                       ${fpUsername_input}
    Input Text                          ${fpUsername_input}    TM34694
    # Sleep    3
    # Hide Keyboard
    # Sleep    3
    Wait Until Element Is Visible       ${submit_button}    timeout=300s
    Click Element                       ${submit_button}
    Sleep    10
    Click Element                       ${fpCancel_button}
    Sleep    2
    Click Element                       ${submit_button}
    Sleep    10
    Click Element                       ${fpOkay_button}
    Sleep    10



