*** Settings ***
Library     AppiumLibrary
Library     OperatingSystem

*** Variables ***
${REMOTE_URL}        http://127.0.0.1:4723
${PLATFORM_NAME}     Android
${DEVICE_NAME}       CMF by Nothing Phone 1
${UDID}              00113346F000298
${PACKAGE_NAME}      my.com.tm.tmforce.flutter.enterprise.sit
${ACTIVITY_NAME}     my.com.tm.tmforce.flutter.MainActivity
${WRONG_USERNAME}    USER1
${USERNAME}          F14331
${PASSWORD}          F14331

*** Keywords ***
Wait A Bit
    Sleep    1s

Launch Application
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    appPackage=${PACKAGE_NAME}
    ...    appActivity=${ACTIVITY_NAME}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    noReset=true
    ...    ignoreHiddenApiPolicyError=true

Clear Input Field
    [Arguments]    ${locator}

    Click Element    ${locator}
    Sleep    0.5s

    # Delete text (repeat backspace many times)
    FOR    ${i}    IN RANGE    20
        Press Keycode    67
    END

    Sleep    0.5s

Language RoundTrip
    ${en_present}=    Run Keyword And Return Status    Element Should Be Enabled    //android.widget.Button[@content-desc="EN"]    2s
    ${bm_present}=    Run Keyword And Return Status    Element Should Be Enabled    //android.widget.Button[@content-desc="BM"]    2s

    Run Keyword If    ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="EN"]
    Run Keyword If    ${en_present} and ${bm_present}    Sleep    0.5s
    Run Keyword If    ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="BM"]
    Run Keyword If    ${en_present} and ${bm_present}    Sleep    0.5s
    Run Keyword If    ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="EN"]
    Run Keyword If    ${en_present} and ${bm_present}    Sleep    0.5s

    Run Keyword If    not ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="BM"]
    Run Keyword If    not ${en_present} and ${bm_present}    Sleep    0.5s
    Run Keyword If    not ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="EN"]
    Run Keyword If    not ${en_present} and ${bm_present}    Sleep    0.5s
    Run Keyword If    not ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="BM"]
    Run Keyword If    not ${en_present} and ${bm_present}    Sleep    0.5s
    Run Keyword If    not ${en_present} and ${bm_present}    Click Element    //android.widget.Button[@content-desc="EN"]
    Run Keyword If    not ${en_present} and ${bm_present}    Sleep    0.5s

Input Username
    [Arguments]    ${username}
    ${USERNAME_FIELD}=    Set Variable    //android.widget.EditText[contains(@hint,'Username')]
    Wait Until Element Is Visible    ${USERNAME_FIELD}    10s
    Click Element                    ${USERNAME_FIELD}
    Input Text                       ${USERNAME_FIELD}    ${username}
    Press Keycode                     4
    Sleep                             0.5s

Input Password
    [Arguments]    ${password}
    ${PASSWORD_FIELD}=    Set Variable    //android.widget.EditText[contains(@hint,'Password')]
    Wait Until Element Is Visible    ${PASSWORD_FIELD}    10s
    Click Element                    ${PASSWORD_FIELD}
    Input Text                       ${PASSWORD_FIELD}    ${password}
    Press Keycode                     4
    Sleep                             0.5s

Reveal Password
    ${EYE_BUTTON}=    Set Variable    //android.widget.EditText[2]/android.widget.Button
    Wait Until Element Is Visible    ${EYE_BUTTON}    10s
    Click Element                    ${EYE_BUTTON}
    Sleep    0.5s

Click Sign In Button
    ${SIGNIN_BUTTON}=    Set Variable    //android.widget.Button[@content-desc="Sign In"]
    Wait Until Element Is Visible    ${SIGNIN_BUTTON}    10s
    Click Element                    ${SIGNIN_BUTTON}
    Sleep                             1s

Handle Login Error
    ${cancel_present}=    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    //android.widget.Button[@content-desc="Cancel"]
    ...    3s

    IF    ${cancel_present}
        Click Element    //android.widget.Button[@content-desc="Cancel"]
        Sleep    0.5s

        ${USERNAME_FIELD}=    Set Variable    //android.widget.EditText[contains(@hint,'Username')]

        Clear Input Field    ${USERNAME_FIELD}
    END

*** Test Cases ***
Login With Retry
    Launch Application
    Language RoundTrip

    # First try wrong credentials
    #Input Username    ${WRONG_USERNAME}
    #Input Password    ${PASSWORD}
    #Click Sign In Button

    # Handle Cancel if wrong credentials
    #Handle Login Error

    # Input correct credentials
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Reveal Password
    Click Sign In Button