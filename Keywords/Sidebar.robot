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

Click Log Out Button
    Wait Until Element Is Visible       ${LOGOUT_BUTTON}    5s
    Click Element                       ${LOGOUT_BUTTON}
    Sleep    5

Close Sidebar
    Element Should Be Visible           ${CLOSE_SIDEBAR}    5s
    Click Element                       ${CLOSE_SIDEBAR}
