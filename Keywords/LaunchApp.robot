*** Settings ***
Resource    ../Configs/setting.robot
Library     AppiumLibrary

*** Variables ***
${REMOTE_URL}        http://127.0.0.1:4723
${PLATFORM_NAME}     Android
${DEVICE_NAME}       CMF by Nothing Phone 1
${UDID}              00113346F000298
${PACKAGE_NAME}      my.com.tm.tmforce.flutter.enterprise.sit
${ACTIVITY_NAME}     my.com.tm.tmforce.flutter.MainActivity

*** Keywords ***
Launch Application
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${Activity_NAME}
    ...    appPackage=${PACKAGE_NAME}
    ...    noReset=true
    ...    ignoreHiddenApiPolicyError=true

