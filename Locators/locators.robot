** Settings ***
Library     OperatingSystem

*** Variables ***
#-----------------------------------LOGIN PAGE----------------------------------------------------

${username_input}                   xpath=    //android.widget.EditText[@password='false']
${password_input}                   xpath=    //android.widget.EditText[@password='true']
${login_btn}                        xpath=    //android.widget.Button[@content-desc="Sign In"]
${EYE_BUTTON}                       xpath=    //android.widget.EditText[2]/android.widget.Button

#-----------------------------------LOGIN ERROR---------------------------------------------------

${BTN_CANCEL}                       xpath=    //android.widget.Button[@content-desc="Cancel"]
${BTN_RETRY}                        xpath=    //android.widget.Button[@content-desc="Retry"]

#-----------------------------------FORGOT PASSWORD-----------------------------------------------

${forgotPassword_button}            xpath=    //android.widget.Button[@content-desc="Forgot Password?"]
${fpUsername_input}                 xpath=    //android.widget.EditText
${fpCancel_button}                  xpath=    //android.widget.Button[@content-desc="Cancel"]
${fpRetry_button}                   xpath=    //android.widget.Button[@content-desc="Retry"]
${submit_button}                    xpath=    //android.widget.Button[contains(@content-desc, "Submit")]
${Yes_Button}                       xpath=    //android.widget.Button[@content-desc="Yes"]
${fpOkay_button}                    xpath=    //android.widget.Button[@content-desc="Okay"]   

#-----------------------------------LATE LOGIN----------------------------------------------------

${lateLogin_popup}                  xpath=    ///android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View
${lateLoginSelect_button}           xpath=    //android.view.View[@content-desc="Select"]
${lateLoginReasonOption}            xpath=    //android.widget.ScrollView
${badWeatherReason}                 xpath=    //android.widget.Button[@content-desc="Bad weather"]
${selectBadWeather}                 xpath=    //android.view.View[@content-desc="Bad weather"]
${oversleepingReason}               xpath=    //android.widget.Button[@content-desc="Oversleeping"]
${backReason_button}                xpath=    //*[@id="sourceContainer"]/div/div/div/div[3]/div/div/div/div[11]/span[3]
${clearSearchReason_button}         xpath=    //*[@id="sourceContainer"]/div/div/div/div[3]/div/div/div/div[13]/span[3]/span/span/b      
${searchReason_button}              xpath=    //android.widget.EditText
${LATE_LOGIN_TIME}                  08:30
${select_input}                     xpath=    //android.view.View[@content-desc="We noticed your login is a bit later than usual. Please justify.\nReason\nSelect"]

#-----------------------------------DEVICE INFO---------------------------------------------------

${deviceInfo_button}                xpath=    //android.widget.Button[@content-desc="Device Info"]
${deviceInfo_section}               xpath=    (//android.view.View[@content-desc="Device Info"])[2]
${application_section}              xpath=    //android.view.View[@content-desc="Application"]
${troubleshootNetwork_button}       xpath=    //android.widget.Button[@content-desc="Troubleshoot Network"]
${network_section}                  xpath=    //android.view.View[@content-desc="Network"]
${tmforceAPI_section}               xpath=    //android.view.View[@content-desc="TMForce API Click Start button to troubleshoot network"]
${ping_section}                     xpath=    //android.view.View[@content-desc="Ping"]
${start_button}                     xpath=    //android.widget.Button[@content-desc="Start"]
${retry_button}                     xpath=    //android.widget.Button[@content-desc="Retry"]
${back_button}                      xpath=    //android.widget.Button[@content-desc="Back"]
${tmforceAPI_content}               xpath=    //android.widget.ScrollView/android.view.View[2]
${ping_content}                     xpath=    //android.widget.ScrollView/android.view.View[3]

#-----------------------------------DISCLAIMER---------------------------------------------------

${disclaimer_button}                xpath=    //android.widget.Button[@content-desc="Disclaimer"]

#-----------------------------------DEVICE LANGUAGE----------------------------------------------

${BMLanguage_button}                xpath=    //android.widget.Button[@content-desc="BM"]
${ENLanguage_button}                xpath=    //android.widget.Button[@content-desc="EN"]
${BTN_EN}                           xpath=    //android.widget.Button[@content-desc="EN"]
${BTN_BM}                           xpath=    //android.widget.Button[@content-desc="BM"]

#-----------------------------------SIDEBAR-----------------------------------------------------

${BTN_SIDEBAR}                      xpath=    //android.widget.Button[@bounds='[0,106][147,253]']
${USER_PROFILE}                     xpath=    //android.view.View[@bounds='[0,245][788,418]']
#${ASSIGNED_BUILDINGS}               xpath=    //android.view.View[@content-desc="Assigned Building(s)"]
${LOGOUT_BUTTON}                    xpath=    //android.widget.Button[@content-desc="Log Out"]
${CLOSE_SIDEBAR}                    xpath=    //android.view.View[@bounds='[804,240][1080,442]']

#---------------------------------- TASK PAGE---------------------------------------------------

${Search_button}                    xpath=    //android.widget.EditText
${Task_View}                        xpath=    //android.widget.ScrollView

${PendingAccept_Dropdown_HEADER_X}            540
${PendingAccept_Dropdown_HEADER_Y}            710
${PendingAccept_Dropdown_Open}      xpath=    //android.view.View[@bounds="[21,628][1059,802]"]

${CurrentTask_Dropdown_HEADER_X}              540
${CurrentTask_Dropdown_HEADER_Y}              882
${CurrentTask_Dropdown_Open}        xpath=    //android.view.View[@bounds="[21,802][1059,975]"]

${AssignedTask_Dropdown_HEADER_X}             540
${AssignedTask_Dropdown_HEADER_Y}             1061
${AssignedTask_Dropdown_Open}       xpath=    //android.view.View[@bounds="[21,975][1059,1148]"]

${OnHold_Dropdown_HEADER_X}                   540
${OnHold_Dropdown_HEADER_Y}                   1234
${OnHold_Dropdown_Open}             xpath=    //android.view.View[@bounds="[21,1148][1059,1321]"]

${TaskHistory_Dropdown_HEADER_X}              540
${TaskHistory_Dropdown_HEADER_Y}              1407
${TaskHistory_Dropdown_Open}        xpath=    //android.view.View[@bounds="[21,1321][1059,1495]"]

${TAP_DURATION}                               500

${Click_PendingAccept}              xpath=    //android.view.View[@content-desc="Pending Accept"]
${Click_CurrentTask}                android=new UiSelector().descriptionContains("Current Task")
${Click_AssignedTask}               xpath=    //android.view.View[contains(@content-desc, "Assigned")]
${Click_OnHold}                     xpath=    //android.view.View[@content-desc="On Hold"]
${Click_TaskHistory}                xpath=    //android.view.View[@content-desc="Task History"]

${activity_id_element}              xpath=    //*[contains(@content-desc, 'Activity Id')]

#Assigned Task 
#${New_Status}                       xpath=//android.view.View[@content-desc="* New Status Select"]
${New_Status}                       xpath=    //android.view.View[contains(@content-desc, "New Status")]
#${New_Status_Dropdown}              xpath=//android.view.View[@bounds='[24,1788][1056,1908]']
${OnMyWay_Button}                   xpath=    //android.widget.Button[@content-desc="On My Way"]
${OnSite_Button}                    xpath=    //android.widget.Button[@content-desc="On Site"]
${InProgress_Button}                xpath=    //android.widget.Button[@content-desc="InProgress"]
${Returned_Button}                  xpath=    //android.widget.Button[@content-desc="Returned"]
${Resolved_Button}                  xpath=    //android.widget.Button[@content-desc="Resolved"]
${Dismiss_Button}                   xpath=    //android.view.View[@content-desc="Dismiss"]
${ETTA_Button}                      xpath=    //android.view.View[@content-desc="* ETTA"]
${ETTR_Button}                      xpath=    //android.view.View[@content-desc="* ETTR"]
${Confirm_Button}                   xpath=    //android.widget.Button[@content-desc="Confirm"]
${Cancel_Button}                    xpath=    //android.widget.Button[@content-desc="Cancel"]
${Keyboard_Button}                  xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]
${ETTA_DATE}                        xpath=    //android.view.View[@content-desc="Monday, August 4, 2025"]
${ETTA_TIME_HOUR}                   xpath=    //android.widget.SeekBar[contains(@content-desc,"Select hours")]
${ETTA_TIME_HOUR_INPUT}             xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[1]
${ETTA_TIME_MINUTE_INPUT}           xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[2]
${OK_Button}                        xpath=    //android.widget.Button[@content-desc="OK"]
${Clear_Button}                     xpath=    //android.widget.Button[contains(@content-desc, "Clear")]
${Close_Button}                     xpath=    //android.widget.Button[@content-desc="Close"]

#on my way edit ETTA
${Edit_ETTA_Button}                 xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${ETTA_Button2}                     xpath=    //android.widget.Button[@content-desc="ETTA"]
${Calendar_Button}                  android=new UiSelector().className("android.widget.Button").instance(0)
${ETTA_Popup}                       xpath=    //android.view.View[@content-desc="ETTA Successfully Updated"]

#dropdown task
${PendingAccept_Dropdown}           xpath=    //android.view.View[@content-desc="Pending Accept 42" and @clickable="true"]
${CurrentTask_Dropdown}             xpath=    //android.view.View[@content-desc="Current Task"]
${CurrentTask_Dropdown}             android=new UiSelector().className("android.view.View").descriptionContains("Current Task").clickable(true)

${AssignedTask_Dropdown}            xpath=    //android.view.View[@content-desc="Assigned Task"]
${TaskHistory_Dropdown}             xpath=    //android.view.View[@content-desc="Task History"]

#-----------------------------------CURRENT TASK PAGE (EACH TICKET)------------------------------

#status menus for current task
${OnSite_Button}                    xpath=    //android.widget.Button[@content-desc="On Site"]
${Rescheduled_Button}               xpath=    //android.widget.Button[@content-desc="Rescheduled"]

${notes_input}                      xpath=    //android.widget.EditText
${Submit_Button}                    xpath=    //android.widget.Button[@content-desc="Submit"]
${Yes_Button}                       xpath=    //android.widget.Button[@content-desc="Yes"]

#Reschedule Option - with date
${WithDate_Button}                  xpath=    //android.view.View[@content-desc="With Date"]/android.widget.RadioButton
${Appointment_DateTime}             xpath=    //android.view.View[@content-desc="Appointment Datetime"]
${First_Preferred_DateTime}         xpath=    //android.view.View[@content-desc="First Preferred Datetime"]
${Second_Preferred_DateTime}        xpath=    //android.view.View[@content-desc="Second Preferred Datetime"]
${Date_Appointmnet1}                xpath=    //android.view.View[contains(@content-desc, "Friday, May 23, 2025")]
${Date_Appointmnet2}                xpath=    //android.view.View[contains(@content-desc, "Thursday, May 8, 2025")]
${Timeslot_Appointment1}            xpath=    //android.view.View[contains(@content-desc, "09:00 - 11:59")]
${Timeslot_Appointment2}            xpath=    //android.view.View[contains(@content-desc, "12:00 - 17:59")]
${Timeslot_Appointment3}            xpath=    //android.view.View[contains(@content-desc, "18:00 - 20:59")]

# Reschedule Option - no date
${NoDate_Button}                    xpath=   //android.view.View[@content-desc="No Date"]/android.widget.RadioButton
${Cause_Category}                   xpath=   //android.view.View[contains(@content-desc, "* Cause Category") and contains(@content-desc, "Select")]
${BTU_Button}                       xpath=   //android.widget.Button[@content-desc="BTU"]
${Customer_Button}                  xpath=   //android.widget.Button[@content-desc="Customer"]

${Cause_Code}                       xpath=   //android.view.View[contains(@content-desc, "* Cause Code") and contains(@content-desc, "Select")]
${BTU_Issue_Button}                 xpath=   //android.widget.Button[@content-desc="BTU Issue"]
${Building_Internal_Button}         xpath=   //android.widget.Button[@content-desc="Building Internal Wiring"]
${BTU_Faulty_Button}                xpath=   //android.widget.Button[@content-desc="BTU Faulty"]

${Resolution_Code}                  xpath=   //android.view.View[contains(@content-desc, "* Resolution Code") and contains(@content-desc, "Select")]
${Firmware_Upgrade_Button}          xpath=   //android.widget.Button[@content-desc="Firmware Upgrade"]
${Normalise_Cable_Button}           xpath=   //android.widget.Button[@content-desc="Normalise Cable Connection"]
${Advice_Customer_Button}           xpath=   //android.widget.Button[@content-desc="Advise Customer_Counter"]
${TMCPE_Replaced_Button}            xpath=   //android.widget.Button[@content-desc="TMCPE Replaced"]

#Resolved Status page
${Add_Attachment_Button}            xpath=   //android.view.View[@content-desc="* Attachments"]//android.widget.ImageView

${newAttachments_button}            xpath=   //android.widget.Button[@bounds='[891,2085][1038,2186]']
${uploadAttachment_list}            xpath=   //android.view.View[@content-desc="Upload Attachment"]
${Attachment_field}                 xpath=   //android.widget.ImageView[@content-desc="Size Type * Name 13/40 * Remarks 0/1000"]
${Verify_Status_Button}             xpath=   //android.widget.Button[@content-desc="Verify Status"]

${Signature_Button}                 xpath=   //android.view.View[@content-desc="Please Input Signature"]
${Additional_Information}           xpath=   //android.view.View[@content-desc="Additional Information"]

#---------------------------------- TICKET DETAILS----------------------------------------------

${Details_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Details")]
${Activity_Tab}                     xpath=    //android.view.View[contains(@content-desc, "Activity")]
${Customer_Tab}                     xpath=    //android.view.View[contains(@content-desc, "Customer")]
${Service_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Service")]
${Network_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Network")]
${NIS_Tab}                          xpath=    //android.view.View[contains(@content-desc, "NIS")]
${Granite_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Granite")]
${Equipment_Tab}                    xpath=    //android.view.View[contains(@content-desc, "Equipment")]
${Miscellaneous_Tab}                xpath=    //android.view.View[contains(@content-desc, "Miscellaneous")]
${InApp_Tab}                        xpath=    //android.view.View[contains(@content-desc, "In App")]

${Action_button}                    xpath=    //android.widget.Button[@bounds='[954,117][1080,243]']

${Update_button}                    xpath=    //android.widget.Button[@content-desc="Update"]

${Notes_button}                     xpath=    //android.widget.Button[@content-desc="Notes"]

${Attachments_button}               xpath=    //android.widget.Button[@content-desc="Attachments"]

# CREATE ACTIVITY
${Create_Activity_button}           xpath=    //android.widget.Button[@content-desc="Create Activity"]
${Activity_Type_Category}           android=new UiSelector().descriptionContains("Activity Type Category")
${Activity_Type}                    xpath=    //android.view.View[contains(@content-desc,"Activity Type") and not(contains(@content-desc,"Category"))]
${Description_Field}                xpath=    //android.widget.EditText[contains(@hint,"Description")]
${Appt_Start_Date_Time}             xpath=    //android.view.View[@bounds="[728,1359][936,1485]"]
${Appt_End_Date_Time}               xpath=    //android.view.View[@bounds="[728,1577][936,1703]"]
${Confirm_button}                   android=new UiSelector().description("Confirm")
${Cancel_button}                    android=new UiSelector().description("Cancel")
${Submit_button}                    android=new UiSelector().description("Submit")

${Manual_Assign_button}             xpath=    //android.widget.Button[@content-desc="Manual Assign"]

#-----------------------------------TASK PAGE-TASK SEARCH---------------------------------------

${searchFilter_button}              xpath=    //android.widget.EditText

#-----------------------------------TASK PAGE-FILTER--------------------------------------------

${filter_button}                    xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[3]
${clearFilter_button}               xpath=    //android.widget.Button[@content-desc="Clear"]
${applyFilter_button}               xpath=    //android.widget.Button[@content-desc="Apply"]

#-----------------------------------GRANITE-----------------------------------------------------

${Update_Granite_Inventory}         xpath=    //android.widget.Button[@content-desc="Update Granite Inventory"]
${Get_Network_Info}                 xpath=    //android.widget.Button[@content-desc="Get Network Info"]
${Change_FDP}                       xpath=    //android.widget.Button[@content-desc="Change FDP"]
${Change_Port}                      xpath=    //android.widget.Button[@content-desc="Change Port"]
${NEW_FDP_ID}                       xpath=    //android.widget.EditText[@hint="New Fdp Id"]
${Check_Alternate_FDP}              xpath=    //android.widget.Button[@content-desc="Check Alternate FDP"]

${Available_Port_Dropdown}          xpath=    //android.view.View[contains(@hint, "Available Port")]
${Reason_Dropdown}                  xpath=    //android.view.View[@hint="Reason\nPlease Select"]
${REMARK_FIELD}                     xpath=    //android.widget.EditText[@hint="Remark"]
${UPDATE_BUTTON}                    xpath=    //android.widget.Button[@content-desc="Update"]

#-----------------------------------NOTES------------------------------------------------------ 

${Notes_Button}                     xpath=    //android.view.View[@content-desc="Notes"]
${filterNotes_input}                xpath=    //android.widget.EditText  
${addNotes_button}                  xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button
${selectNotes_button}               xpath=    //android.view.View[@content-desc="* Note Type\nSelect"]
${Serach_selectNotes_button}        xpath=    //android.widget.EditText[@hint="Search"]
${Advise_Partner_List}              xpath=    //android.widget.Button[@content-desc="Advise Partner"]
${descNotes_input}                  xpath=    (//android.widget.EditText[@clickable='true' and @focusable='true'])[1]
${notes_input}                      xpath=    //android.widget.EditText
${cancelNotes_button}               xpath=    //android.widget.Button[@content-desc="Cancel"]
${doneNotes_button}                 xpath=    //android.widget.Button[@content-desc="Done"]
${confirmationReminder}             xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
${yesNotes_button}                  xpath=    //android.widget.Button[@content-desc="Yes"]
${noNotes_button}                   xpath=    //android.widget.Button[@content-desc="No"]

#-----------------------------------CAMERA-----------------------------------------------------

${camera_button}                    xpath=    //android.widget.Button[@content-desc="Camera"]
${cameraCapture_button}             xpath=    //android.widget.ImageView[@resource-id="com.nothing.camera:id/photo_shutter_button_photo"]
${Yes_cameraCapture_button}         xpath=    //android.widget.ImageView[@resource-id="com.nothing.camera:id/switch_camera_facing"]
${Photo_button}                     xpath=    //android.widget.Button[@content-desc="Photo"]
${Photo_From_Gallery_button}        xpath=    (//android.widget.ImageView[@resource-id="com.google.android.providers.media.module:id/icon_thumbnail"])[2]
${Cancel_Attachment_button}         xpath=    //android.view.View[@content-desc="* Attachments"]/android.widget.Button
${sizeCaptured_text}                xpath=   //android.view.View[@content-desc="Size"]
${Attachment_type}                  xpath=   //android.view.View[@text="jpg"]
${nameCaptured_input}               xpath=   //android.widget.EditText
${remarksCaptured_input}            xpath=   //android.widget.EditText[2]