*** Settings ***
Resource      ../Configs/setting.robot
Resource      ../Locators/locators.robot

*** Keywords ***
Scroll Down A Bit
    Swipe    500    1500    500    500
    Sleep    1s

Open Sidebar
    Wait Until Element Is Visible       ${BTN_SIDEBAR}    5s
    Click Element                       ${BTN_SIDEBAR}
    Sleep    2

Open User Profile
    Wait Until Element Is Visible       ${USER_PROFILE}    5s
    Click Element                       ${USER_PROFILE}
    Sleep    5

    Press Keycode    4

Open Partner Info
    Wait Until Element Is Visible       ${Partner_Info_Button}    5s
    Click Element                       ${Partner_Info_Button}
    Sleep    5

Open Help
    Sleep    5

    Scroll Down A Bit

    Wait Until Element Is Visible       ${Setting_Support}    5s
    Click Element                       ${Setting_Support}
    Sleep    5

    Scroll Down A Bit

    Wait Until Element Is Visible       ${HELP_BUTTON}    5s
    Click Element                       ${HELP_BUTTON}
    Sleep    10

    Scroll Down A Bit

Click Log Out Button
    Wait Until Element Is Visible       ${LOGOUT_BUTTON}    5s
    Click Element                       ${LOGOUT_BUTTON}
    Sleep    5

Close Sidebar
    Element Should Be Visible           ${CLOSE_SIDEBAR}    5s
    Click Element                       ${CLOSE_SIDEBAR}

Explore User Profile
    Wait Until Element Is Visible       ${USER_PROFILE}    5s
    Click Element                       ${USER_PROFILE}
    Sleep    5s

    #Wait Until Element Is Visible    ${personalInformation_Section}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${personalInformation_Section_X}, ${personalInformation_Section_Y}) }}
    Sleep    5

    #Wait Until Element Is Visible    ${assignedBuildings_Section}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${assignedBuildings_Section_X}, ${assignedBuildings_Section_Y}) }}
    Sleep    5

    #Wait Until Element Is Visible    ${primaryCabinets_Section}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${primaryCabinets_Section_X}, ${primaryCabinets_Section_Y}) }}
    Sleep    5

    #Wait Until Element Is Visible    xpath=//android.view.View[contains(@content-desc, "Secondary Cabinet(s)")]    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${secondaryCabinets_Section_X}, ${secondaryCabinets_Section_Y}) }}
    Sleep    5

    #Wait Until Element Is Visible    ${skillsets_Section}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${skillsets_Section_X}, ${skillsets_Section_Y}) }}
    Sleep    5

Change Picture Profile
    Wait Until Element Is Visible    ${editPictureProfileButton}    timeout=30s
    Tap With Positions    ${TAP_DURATION}    ${{ (${editPictureProfileButton_X}, ${editPictureProfileButton_Y}) }}
    Sleep    5

    Wait Until Element Is Visible    ${uploadProfilePicture}    timeout=30s
    #Click Element    ${camera_button}
    #Sleep    5s

    #Wait Until Element Is Visible    ${cameraCapture_button}    timeout=30s
    #Click Element    ${cameraCapture_button}
    #Sleep    5s

    #Wait Until Element Is Visible    ${Yes_cameraCapture_button}    timeout=30s
    #Click Element    ${Yes_cameraCapture_button}
    #Sleep    10s

    Wait Until Element Is Visible    ${photoGallery_button}    timeout=30s
    Click Element    ${photoGallery_button}
    Sleep    5s

    Tap With Positions    ${TAP_DURATION}    ${{ (${photoPickerFirstItem_X}, ${photoPickerFirstItem_Y}) }}
    Sleep    5s

    Wait Until Element Is Visible    ${photoPickerAdd_Button_Done}    timeout=30s
    Click Element    ${photoPickerAdd_Button_Done}
    Sleep    5s

    Wait Until Element Is Visible     ${namePicture_input}     timeout=30s
    Click Element    ${namePicture_input}
    Clear Text       ${namePicture_input}
    Input Text       ${namePicture_input}    My Profile Picture
    Sleep    1
    Hide Keyboard
    Sleep    1

    Wait Until Element Is Visible    ${upload_button}    timeout=30s
    Click Element    ${upload_button}
    Sleep    10s

Attach Resource Partners
    Wait Until Element Is Visible    ${Add_New_Partner_Button}    timeout=30s
    Click Element    ${Add_New_Partner_Button}
    Sleep    5

    Tap With Positions    ${TAP_DURATION}    ${{ (${Add_Partner_Button_X}, ${Add_Partner_Button_Y}) }}
    Sleep    5

    FOR    ${i}    IN RANGE    2
        ${is_visible}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${Yes_Button}    timeout=5s

        IF    ${is_visible}
            Click Element    ${Yes_Button}
            Sleep    5
        END
    END

    Press Keycode    4
    Sleep    5

Detach Resource Partners
    Tap With Positions    ${TAP_DURATION}    ${{ (${X_Partner_Button_X}, ${X_Partner_Button_Y}) }}
    Sleep    5s

    FOR    ${i}    IN RANGE    2
        ${is_visible}=    Run Keyword And Return Status
        ...    Wait Until Element Is Visible    ${Yes_Button}    timeout=5s

        IF    ${is_visible}
            Click Element    ${Yes_Button}
            Sleep    5
        END
    END

    Press Keycode    4
    Sleep    5

