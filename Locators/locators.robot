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
${lateLoginSelect_Dropdown_HEADER_X}              830
${lateLoginSelect_Dropdown_HEADER_Y}              1255

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
${MORNING_CALL}                     xpath=    //android.widget.Button[@content-desc="Morning Call"]
${FAST_TRACK}                       xpath=    //android.widget.Button[@content-desc="Fast Track"]
${SELF_PICK_UP}                     xpath=    //android.widget.Button[@content-desc="Self Pick Up"]
${TASKS}                            xpath=    //android.widget.Button[@content-desc="Tasks"]
${TASK_POOL}                        xpath=    //android.widget.Button[@content-desc="Task Pool"]
${PARTNER_INFO}                     xpath=    //android.widget.Button[@content-desc="Partner Info"]
${CPE_IN_HAND}                      xpath=    //android.widget.Button[@content-desc="CPE In Hand"]
${CPE_STOCK_COUNT}                  xpath=    //android.widget.Button[@content-desc="CPE Stock Count"]
${ACS}                              xpath=    //android.widget.Button[@content-desc="ACS"]

${PROFILE}	                        xpath=    //android.widget.Button[@content-desc="Profile"]
${MY_PROFILE}	                    xpath=    //android.widget.Button[@content-desc="My Profile"]
${MY_ROSTERING}                     xpath=    //android.widget.Button[@content-desc="My Rostering"]
${MY_MOVEMENT}	                    xpath=    //android.widget.Button[@content-desc="My Movement"]

${REPORT}                           xpath=    //android.widget.Button[@content-desc="Report"]
${EXTERNAL_APPLICATION}             xpath=    //android.widget.Button[@content-desc="External Application"]

${SETTING_SUPPORT}                  xpath=    //android.widget.Button[@content-desc="Settings & Support"]
${SETTING}	                        xpath=    //android.widget.Button[@content-desc="Settings"]
${SERVER_TIME}                      xpath=    //android.widget.Button[@content-desc="Server Time"]

${HELP_BUTTON}                      xpath=    //android.widget.Button[@content-desc="Help"]

${LOGOUT_BUTTON}                    xpath=    //android.widget.Button[@content-desc="Log Out"]
${CLOSE_SIDEBAR}                    xpath=    //android.view.View[@bounds='[804,240][1080,442]']

#-----------------------------------PROFILE-----------------------------------------------------

${personalInformation_Section}      xpath=    //android.view.View[@content-desc="Personal Information"] 
${personalInformation_Section_X}              936
${personalInformation_Section_Y}              1006

${assignedBuildings_Section}        xpath=    //android.view.View[@content-desc="Assigned Building(s)"]
${assignedBuildings_Section_X}                931
${assignedBuildings_Section_Y}                1206

${primaryCabinets_Section}          xpath=    //android.view.View[@content-desc="Primary Cabinet(s)"]
${primaryCabinets_Section_X}                  954
${primaryCabinets_Section_Y}                  1366

${secondaryCabinets_Section}        xpath=    //android.view.View[contains(@content-desc, "Secondary Cabinet(s)")]
${secondaryCabinets_Section_X}                962
${secondaryCabinets_Section_Y}                1553

${skillsets_Section}                xpath=    //android.view.View[@content-desc="Skillset(s)"]
${skillsets_Section_X}                        966
${skillsets_Section_Y}                        1717

${editPictureProfileButton}         xpath=    //android.widget.Button[@package="my.com.tm.tmforce.flutter.enterprise.sit"]
${editPictureProfileButton_X}                 649
${editPictureProfileButton_Y}                 670

${uploadProfilePicture}             xpath=    //android.view.View[@content-desc="Upload Profile Picture"]
${namePicture_input}                xpath=    //android.widget.EditText

#-----------------------------------PARTNER-INFO------------------------------------------------

${Partner_Info_Button}              xpath=    //android.widget.Button[@content-desc="Partner Info"]
${Add_New_Partner_Button}           xpath=    //android.widget.Button[@content-desc="Add New Partner"]
${Add_Partner_Button_X}                       854
${Add_Partner_Button_Y}                       421
${X_Partner_Button_X}                         943
${X_Partner_Button_Y}                         652

#-----------------------------------TICKET-REPORT------------------------------------------------

${Ticket_Reports_Button}            xpath=    //android.view.View[@content-desc="Ticket Reports"]
${From_Button}                      xpath=    //android.widget.Button[contains(@content-desc, "From:")]
${To_Button}                        xpath=    //android.widget.Button[contains(@content-desc, "To:")]

${calendar_From_X}                            167
${calendar_From_Y}                            1135
${calendar_Today_X}                           664
${calendar_Today_Y}                           1135

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
${TaskHistory_Dropdown_HEADER_Y}    1407
${TaskHistory_Dropdown_Open}        xpath=    //android.view.View[@bounds="[21,1321][1059,1495]"]

${TAP_DURATION}                     500

${Click_PendingAccept}              android=new UiSelector().descriptionContains("Pending Accept")  
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
${calendar_Today_May11_X}                     294
${calendar_Today_May11_Y}                     707
${radioButton_Option_Time_X}                  907
${radioButton_Option_Time_Y}                  1315
${Date_Appointmnet1}                xpath=    //android.view.View[@content-desc="Monday, May 11, 2026 14"]
${Date_Appointmnet2}                xpath=    //android.view.View[@content-desc="Friday, May 15, 2026 47"]
${Timeslot_Appointment1}            xpath=    //android.view.View[@content-desc="15:45 - 16:45 (7)"]
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
#${Add_Attachment_Button}            xpath=   //android.view.View[contains(@content-desc, "Attachments")]//android.widget.ImageView
${Add_Attachment_Button_X}                   975
${Add_Attachment_Button_Y}                   1339

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

${Available_Port}                   xpath=    //android.view.View[contains(@hint, "Available Port")]
${availablePort_Dropdown_FDP_X}               966
${availablePort_Dropdown_FDP_Y}               1488
${availablePort_Dropdown_X}                   977
${availablePort_Dropdown_Y}                   1332

${Reason_Dropdown}                  xpath=    //android.view.View[contains(@hint, "Reason")]
${reason_Dropdown_X}                          540
${reason_Dropdown_Y}                          1700

${Reason_Dropdown_DP_Pair}          xpath=    //android.view.View[@content-desc="* Reason\nSelect"]
${reason_Dropdown_DP_Pair_X}                  990
${reason_Dropdown_DP_Pair_Y}                  1606
${Remark_Field_DP_Pair}             xpath=    //android.widget.EditText[@hint="* Remark"]

${REMARK_FIELD}                     xpath=    //android.widget.EditText[@hint="Remark"]
${UPDATE_BUTTON}                    xpath=    //android.widget.Button[@content-desc="Update"]
${Exit_Button}                      xpath=    //android.widget.Button[@content-desc="Exit"]

${Update_NIS_Inventory}             xpath=    //android.widget.Button[@content-desc="Update NIS Inventory"]
${Get_Circuit_Details}              xpath=    //android.widget.Button[@content-desc="Get Circuit Details"]
${Change_DSL_NE}                    xpath=    //android.widget.Button[@content-desc="Change DSL NE"]
${Change_DSL_Port}                  xpath=    //android.widget.Button[@content-desc="Change DSL Port"]

${Change_DP_Pair}                   xpath=    //android.widget.Button[@content-desc="Change DP Pair"]
${Check_Alternate_DP}               xpath=    //android.widget.Button[@content-desc="Check Alternate DP"]
${availablePair_Dropdown}           xpath=    //android.view.View[contains(@content-desc, "Available Pair")]
${availablePair_Dropdown_X}                   977
${availablePair_Dropdown_Y}                   1130

${Change_Cabinet_E-Side}            xpath=    //android.widget.Button[@content-desc="Change Cabinet E-Side"]
${Change_Cabinet_D-Side}            xpath=    //android.widget.Button[@content-desc="Change Cabinet D-Side"]

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
${Capture_button}                   xpath=    //android.widget.Button[@content-desc="Capture"]
${cameraCapture_button}             xpath=    //android.widget.ImageView[@resource-id="com.nothing.camera:id/photo_shutter_button_photo"]
${Yes_cameraCapture_button}         xpath=    //android.widget.ImageView[@resource-id="com.nothing.camera:id/switch_camera_facing"]
${Photo_button}                     xpath=    //android.widget.Button[@content-desc="Photo"]
${Photo_From_Gallery_button}        xpath=    (//android.widget.ImageView[@resource-id="com.google.android.providers.media.module:id/icon_thumbnail"])[2]
${Cancel_Attachment_button}         xpath=    //android.view.View[@content-desc="* Attachments"]/android.widget.Button
${sizeCaptured_text}                xpath=    //android.view.View[@content-desc="Size"]
${Attachment_type}                  xpath=    //android.view.View[@text="jpg"]
${nameCaptured_input}               xpath=    //android.widget.EditText
${remarksCaptured_input}            xpath=    //android.widget.EditText[2]
${shutter_button}                   xpath=    //android.widget.ImageView[@resource-id="com.sec.android.app.camera:id/normal_center_button"]
${stop_button}                      xpath=    //android.widget.ImageView[@resource-id="com.sec.android.app.camera:id/stop_button_icon"]
${camera_button}                    xpath=    //android.widget.Button[@content-desc="Camera"]
${cameraCapture_button}             xpath=    //android.widget.Button[@content-desc="Capture"]
${sizeCaptured_text}                xpath=    //android.view.View[@content-desc="Size"]
#${nameCaptured_input}               xpath=    //android.widget.EditText[@bounds='[11,1782][1070,1929]']                # old bounds  (coordinate 500 1460)
#${nameCaptured_input}               xpath=    //android.widget.EditText[@bounds='[26,1755][1054,1902]']                    # new bounds
${nameCaptured_input}               xpath=    //android.widget.EditText[@clickable='true' and @enabled='true']
#${nameCaptured_input_Adibah}        xpath=    //android.widget.EditText[@bounds='[12,1867][1068,2023]']
${remarksCaptured_input}            xpath=    //android.widget.ScrollView/android.widget.EditText[2]
${uploadCaptured_button}            xpath=    //android.widget.Button[@content-desc="Upload"]
${recordCapture_button}             xpath=    //android.widget.Button[@content-desc="Record"]
${gallery_button}                   xpath=    //android.widget.Button[@content-desc="Gallery"]
${photoGallery_button}              xpath=    //android.widget.Button[@content-desc="Photo"]
${videoGallery_button}              xpath=    //android.widget.Button[@content-desc="Video"]
${retryFileName}                    xpath=    //android.widget.Button[@content-desc="Retry"]
${cancelFileName}                   xpath=    //android.widget.Button[@content-desc="Cancel"]
${upload_button}                    xpath=    //android.widget.Button[@content-desc="Upload"]
${photoPickerFirstItem_X}                     179
${photoPickerFirstItem_Y}                     1702
${photoPickerAdd_Button_Done_X}               904
${photoPickerAdd_Button_Done_Y}               2191
${photoPickerAdd_Button_Done}       xpath=    //android.widget.TextView[@text="Done"] 

#-----------------------------------FILES/DOCUMENT-----------------------------------------------

${files_button}                     xpath=    //android.widget.Button[@content-desc="Files"]
${documentFiles_button}             xpath=    //android.widget.Button[@content-desc="Document"]
${textFiles_button}                 xpath=    //android.widget.Button[@content-desc="Text"]

${searchPhone_button}               xpath=    //android.widget.Button[@content-desc="Search"]
${searchPhone_input}                xpath=    //android.widget.AutoCompleteTextView[@resource-id="com.google.android.documentsui:id/search_src_text"]

${documentsUI_FileItem_X}                     519
${documentsUI_FileItem_Y}                     960
${documentsUI_Select_Button}        xpath=    //android.widget.Button[@text="Select"]

#-----------------------------------SERVICE VERIFCATION PAGE------------------------------------------

${Service_Verification_Button}      xpath=    //android.widget.Button[@content-desc="Service Verification"]
${Verify_Button}                    xpath=    //android.widget.Button[@content-desc="Verify"]
${Done_Button}                      xpath=    //android.widget.Button[@content-desc="Done"]
${IVR_Pin_Code_Button}              xpath=    //android.widget.EditText
${Update_SPANMS_Button}             xpath=    //android.widget.Button[@content-desc=" Update Via SPANMS"]
${Update_Manually_Button}           xpath=    //android.widget.Button[@content-desc="Update Manually"]
${Reverify_Inventory_Button}        xpath=    //android.widget.Button[@content-desc="Reverify Inventory"]

#-----------------------------------CCP Module-------------------------------------------------------

${OneOff_Payment_Button}            xpath=    //android.view.View[@content-desc="One-Off Payment"]/android.widget.RadioButton
${Renewal_Service_Button}           xpath=    //android.view.View[@content-desc="Renewal Service Contract"]/android.widget.RadioButton
${Swap_CPE_Button}                  xpath=    //android.widget.Button[@content-desc="Swap CPE"]
${Add_New_Equip_Button}             xpath=    //android.view.View[@content-desc="Add New Equip"]
${Add_Loose_Equip_Button}           xpath=    //android.view.View[contains(@content-desc, "Add Loose Equip")]
${Flag_Button}                      xpath=    //android.view.View[@content-desc="Flag"]
${Service_Point_Update_Button}      xpath=    (//android.view.View[@content-desc="Update"])[3]

${Scan_Barcode_Button}              xpath=    //android.widget.Button[@content-desc="Scan Barcode"]
${Generate_SN_Button}               xpath=    //android.widget.Button[@content-desc="Generate SN"]
${List_Button}                      xpath=    (//android.widget.Button[@content-desc])[3]
${List_Option1_Button}              xpath=    //android.widget.Button[@content-desc="SLTSOYSY1912073148"]
${Verify_SN_Button}                 xpath=    //android.widget.Button[@content-desc="Verify SN"]
${Cancel_Scan_Button}               xpath=    //android.widget.Button[@resource-id="my.com.tm.tmforce.flutter.enterprise.sit2:id/btnBarcodeCaptureCancel"]
${Save_Button}                      xpath=    //android.widget.Button[@content-desc="Save"]

#SWAP CPE
# UPDATE wifi (RG) //old CPE
${Material_Desc_Button}             xpath=    (//android.view.View[contains(@content-desc, "Old CPE")]/android.view.View[@clickable="true"])[1]
${ON_SITE_SUPPORT_Button}           Xpath=    (//android.view.View)[1]
${Faulty_Reason_Button}             xpath=    (//android.view.View[contains(@content-desc, "Old CPE")]/android.view.View[@clickable="true"])[2]
${VM_Physical_Damage_Button}        Xpath=    (//android.widget.Button)[2]
${Remarks_Input}                    xpath=    //android.widget.EditText[2]
${Service_Point}                    xpath=    //android.view.View[@content-desc="Service Point"]

#Add loose Equipment
${Equipment_Name_Button}            xpath=    //android.view.View[contains(@content-desc, "Select") and @clickable="true"]
${TVOS_Button}                      xpath=    //android.widget.Button[@content-desc="STB EC6016V5 Remote Control (TVOS)"]
${New_CPE}                          xpath=    //android.view.View[@content-desc="New CPE"]
${Equipment_Back_Button}            xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button          

#UPDATE SERVICE POINT//new CPE
${Serial_Number_List1}              xpath=    (//android.widget.Button[@content-desc])[1]
${Serial_Number_List2}              xpath=    (//android.widget.Button[@content-desc])[2]
${Serial_Number_List3}              xpath=    (//android.widget.Button[@content-desc])[3]
${MAC_Address_Input}                android=new UiSelector().className("android.widget.EditText").instance(1)

#-----------------------------------RAF PAGE------------------------------------------------------

${RAF_Button}                       xpath=    //android.widget.Button[@content-desc="RAF"]

#Restoration Category
${accessNetwork_Checkbox}           xpath=    //android.widget.CheckBox[@content-desc="TM Access Network (Drop Fiber-OLT or SDF-ODF)"]
${internalFiber_Checkbox}           xpath=    //android.widget.CheckBox[@content-desc="Internal Fiber Standard Wiring (Entry Wall-FWS)"]

#Physical Health Check
${section2_Header}                  xpath=    //android.view.View[@content-desc="SECTION 2: PHYSICAL HEALTH CHECK"]
${Landed_House_HSBA_FTTH_Button}    xpath=    //android.view.View[@content-desc="Landed House (HSBA FTTH)"]/android.widget.RadioButton
${Landed_House_UnifiFTTH_Button}    xpath=    //android.view.View[@content-desc="Landed House (UniFi FTTH)"]
${Landed_House_DSL/DEL_Button}      xpath=    //android.view.View[@content-desc="Landed House (DSL/DEL)"]

#Restoration Charge
${Renewal_Service_Contract_Button}  xpath=    //android.widget.RadioButton[@content-desc="Renewal Service Contract"]

#Broadband
${Add_Reading_Button}               xpath=    //android.widget.Button[@content-desc="Add Reading"]
${Site_Dropdown}                    xpath=    //android.widget.ScrollView/android.view.View[1]
${TM_Option_Button}                 xpath=    //android.view.View[@content-desc="TM"]
${Customer_Option_button}           xpath=    //android.view.View[@content-desc="Customer"]
${SNR_Download_Input}               xpath=    //android.widget.ScrollView/android.view.View[3]/android.widget.EditText
${SNR_Upload_Input}                 xpath=    //android.widget.ScrollView/android.view.View[4]/android.widget.EditText
${ATTN_Download_Input}              xpath=    //android.widget.ScrollView/android.view.View[6]/android.widget.EditText
${ATTN_Upload_Input}                xpath=    //android.widget.ScrollView/android.view.View[2]/android.widget.EditText
${AR_Download_Input}                xpath=    //android.widget.ScrollView/android.view.View[4]/android.widget.EditText
${AR_Upload_Input}                  xpath=    //android.widget.ScrollView/android.view.View[5]/android.widget.EditText
${Add_Button}                       xpath=    //android.widget.Button[@content-desc="Add"]
${Delete_Button}                    xpath=    //android.widget.Button[@content-desc="TM"]
${Tone_Dropdown}                    xpath=    //android.widget.ScrollView/android.view.View[6]
${OK_Option_button}                 xpath=    //android.view.View[@content-desc="Ok"]
${NOT_OK_Option_button}             xpath=    //android.view.View[@content-desc="Not Ok"]

#Term and Condition
${Terms_Condition}                  xpath=    //android.view.View[contains(@content-desc, "term and condition")]
${Terms_Condition_CheckBox}         xpath=    //android.widget.CheckBox[@clickable="true" and @enabled="true"]
${VASP_Field_Engineer_Name}         xpath=    //android.widget.EditText[contains(@hint,"VASP Field Engineer Name")]
${IC_No_Field}                      xpath=    //android.widget.EditText[@hint="IC No.\nIC No."]
${Comments_Field}                   xpath=    //android.widget.EditText[@hint="Comments\nComments"]
${close_Button}                     xpath=    //android.widget.Button[@content-desc="Close"]
${TnC_Form_Checkbox}                xpath=//android.widget.CheckBox[contains(@content-desc,"agree") or contains(@content-desc,"TM Berhad")]

#PON PORT READING
${ponPortReading_Row}               xpath=    //android.view.View[@content-desc="PON PORT READING"]
${Optical_Overload_Input}           xpath=    //android.widget.EditText[contains(@hint, "Rx Optical Overload")]
${Optical_Sensitivity_Input}        xpath=    //android.widget.EditText[contains(@hint, "Rx Optical Sensitivity")]
${OPT_Power_Input}                  xpath=    //android.widget.EditText[contains(@hint, "Tx Opt Power")]
${Ext_Ratio_Input}                  xpath=    //android.widget.EditText[contains(@hint, "Tx Ext Ratio")]

#ONU READING
${ONU_Reading_Dropdown}             xpath=    //android.view.View[@content-desc="ONU READING"]
${Optical_Input}                    xpath=    //android.widget.EditText[contains(@hint, "Optical (Tx/Rx)")]
${Attainable_Input}                 xpath=    //android.widget.EditText[contains(@hint, "Attainable (Dw/Up)")]
${Actual_Rate_Input}                xpath=    //android.widget.EditText[contains(@hint, "Actual Rate")]

#CAUSE CODE
${causeCode_Header}                 xpath=    //android.view.View[@content-desc="SECTION 3: CAUSE CODE"]

#ONE TIME CHARGES
${oneTimeCharges_Header}            xpath=    //android.view.View[contains(@content-desc, "SECTION 4: ONE TIME CHARGES")]

#Restoration Charges
${Restoration_Charges}              xpath=    //android.view.View[@content-desc="SECTION 3: RESTORATION CHARGES"]

#For TM Used Only
${Cust_Refuse_Sign}                 xpath=    //android.view.View[@content-desc="Customer refuse to sign"]/android.widget.CheckBox
${Cust_Disagree_Restoration}        xpath=    //android.view.View[@content-desc="Customer disagree with restoration work"]/android.widget.CheckBox
${Restoration_Completed_Outside}    xpath=    //android.view.View[@content-desc="Restoration completed outside of customer premise"]/android.widget.CheckBox
