** Settings ***
Library     OperatingSystem


*** Variables ***
#-----------------------------------------------------LOGIN PAGE-------------------------------------------

${login_btn}                        xpath=    //android.widget.Button[@content-desc="Sign In"]
${username_input}                   xpath=    //android.widget.EditText[@password='false']
${password_input}                   xpath=    //android.widget.EditText[@password='true']
${hide_btn}                         xpath=    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[2]/android.widget.Button

#Late Login
${LATE_LOGIN_TIME}    08:30
${select_input}                     xpath=    //android.view.View[@content-desc="We noticed your login is a bit later than usual. Please justify.\nReason\nSelect"]


#-----------------------------------------------------LOGIN PAGE-------------------------------------------

${login_btn}                        xpath=    //android.widget.Button[@content-desc="Sign In"]
${username_input}                   xpath=    //android.widget.EditText[@password='false']
${password_input}                   xpath=    //android.widget.EditText[@password='true']
${EYE_BUTTON}                       xpath=    //android.widget.EditText[2]/android.widget.Button                      
${unhide_button}                    xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[2]/android.widget.Button
${rememberMe_checkbox}              xpath=    //android.widget.CheckBox 
${retry_button}                     xpath=    //android.widget.Button[@content-desc="Retry"]
${cancel_button}                    xpath=    //android.widget.Button[@content-desc="Cancel"]
${unlock_button}                    xpath=    //android.widget.Button[@content-desc="Unlock"]
${BTN_CANCEL}                       xpath=    //android.widget.Button[@content-desc="Cancel"]
${USERNAME_FIELD}                   xpath=    //android.widget.EditText[contains(@hint,'Username')] 

#-----------------------------------------------------FORGOT PASSWORD--------------------------------------

${forgotPassword_button}            xpath=    //android.widget.Button[@content-desc="Forgot Password?"]
${fpUsername_input}                 xpath=    //android.widget.EditText
${fpCancel_button}                  xpath=    //android.widget.Button[@content-desc="Cancel"]
${submit_button}                    xpath=    //android.widget.Button[contains(@content-desc, "Submit")]
${fpOkay_button}                    xpath=    //android.widget.Button[@content-desc="Okay"]

#---------------------------------------------------DEVICE INFO-------------------------------------------- 

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

#---------------------------------------------------DEVICE LANGUAGE---------------------------------------- 

${BMLanguage_button}                xpath=    //android.widget.Button[@content-desc="BM"]
${ENLanguage_button}                xpath=    //android.widget.Button[@content-desc="EN"]

${BTN_EN}                           xpath=    //android.widget.Button[@content-desc="EN"]
${BTN_BM}                           xpath=    //android.widget.Button[@content-desc="BM"]

#-----------------------------------------------------LATE LOGIN------------------------------------------- 

${lateLogin_popup}                  xpath=    ///android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View
${lateLoginSelect_button}           xpath=    //android.view.View[@content-desc="Select"]
${lateLoginReasonOption}            xpath=    //android.widget.ScrollView
${badWeatherReason}                 xpath=    //android.widget.Button[@content-desc="Bad weather"]
${selectBadWeather}                 xpath=    //android.view.View[@content-desc="Bad weather"]
${oversleepingReason}               xpath=    //android.widget.Button[@content-desc="Oversleeping"]
${backReason_button}                xpath=    //*[@id="sourceContainer"]/div/div/div/div[3]/div/div/div/div[11]/span[3]
${clearSearchReason_button}         xpath=    //*[@id="sourceContainer"]/div/div/div/div[3]/div/div/div/div[13]/span[3]/span/span/b      
${searchReason_button}              xpath=    //android.widget.EditText

#-----------------------------------------------------SIDEBAR----------------------------------------------

${BTN_SIDEBAR}                      xpath=    //android.widget.Button[@bounds='[0,106][147,253]']

${USER_PROFILE}                     xpath=    //android.view.View[@bounds='[0,245][788,418]']
${ASSIGNED_BUILDINGS}               xpath=    //android.view.View[@content-desc="Assigned Building(s)"]
${LOGOUT_BUTTON}                    xpath=    //android.widget.Button[@content-desc="Log Out"]

#-----------------------------------------------------TASK PAGE--------------------------------------------

${Search_button}                    xpath=    //android.widget.EditText
${Search_By}                        xpath=    //android.view.View[@content-desc="Search By: Pending Accept, Assigned, On Site, Resolved, InProgress, Enter Site"]
${Task_View}                        xpath=    //android.widget.ScrollView
${OnSite_Task}                      xpath=    //android.view.View[contains(@content-desc, "On Site")]
${Back_Button}                      xpath=    //android.widget.Button[@content-desc="Back"]

#task yang seacrh by filter (input keyword)
${TaskByFilter}                     xpath=    //android.view.View[contains(@content-desc, "A-0000003523") and contains(@content-desc, "Assigned")]


#menu lepas tekan task details
${Details_Tab}                      xpath=    //android.view.View[@content-desc="Details Tab 1 of 10"]
${Activity_Tab}                     xpath=    //android.view.View[contains(@content-desc, "Activity")]
${Customer_Tab}                     xpath=    //android.view.View[contains(@content-desc, "Customer")]
${Service_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Service")]
${Network_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Network")]
${NIS_Tab}                          xpath=    //android.view.View[contains(@content-desc, "NIS")]
${Granite_Tab}                      xpath=    //android.view.View[contains(@content-desc, "Granite")]
${Equipment_Tab}                    xpath=    //android.view.View[contains(@content-desc, "Equipment")]
${Miscellaneous_Tab}                xpath=    //android.view.View[contains(@content-desc, "Miscellaneous")]
${InApp_Tab}                        xpath=    //android.view.View[contains(@content-desc, "In App")]
${Flag_Information}                 xpath=    //android.view.View[contains(@content-desc, "Flag Information")]
${Details_Button}                   xpath=    //android.view.View[@content-desc="Details"]

#Assigned Task 
${AssignedTask_Update_Button}         xpath=//android.view.View[@content-desc="Update"]
#${New_Status}                         xpath=//android.view.View[@content-desc="* New Status Select"]
${New_Status}                         xpath=//android.view.View[contains(@content-desc, "New Status")]
#${New_Status_Dropdown}                xpath=//android.view.View[@bounds='[24,1788][1056,1908]']
${OnMyWay_Button}                     xpath=//android.widget.Button[@content-desc="On My Way"]
${InProgress_Button}                  xpath=//android.widget.Button[@content-desc="InProgress"]
${Returned_Button}                    xpath=//android.widget.Button[@content-desc="Returned"]
${Resolved_Button}                    xpath=//android.widget.Button[@content-desc="Resolved"]
${Dismiss_Button}                     xpath=//android.view.View[@content-desc="Dismiss"]
${ETTA_Button}                        xpath=//android.view.View[@content-desc="* ETTA"]
${ETTR_Button}                        xpath=//android.view.View[@content-desc="* ETTR"]
${Confirm_Button}                     xpath=//android.widget.Button[@content-desc="Confirm"]
${Cancel_Button}                      xpath=//android.widget.Button[@content-desc="Cancel"]
${Keyboard_Button}                    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]
${ETTA_DATE}                          xpath=//android.view.View[@content-desc="Monday, August 4, 2025"]
${ETTA_TIME_HOUR}                     xpath=//android.widget.SeekBar[contains(@content-desc,"Select hours")]
${ETTA_TIME_HOUR_INPUT}               xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[1]
${ETTA_TIME_MINUTE_INPUT}             xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[2]
${OK_Button}                          xpath=//android.widget.Button[@content-desc="OK"]
${Clear_Button}                       xpath=//android.widget.Button[contains(@content-desc, "Clear")]
${Close_Button}                       xpath=//android.widget.Button[@content-desc="Close"]

#on my way edit ETTA
${Edit_ETTA_Button}                   xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${ETTA_Button2}                       xpath=//android.widget.Button[@content-desc="ETTA"]
${Calendar_Button}                    android=new UiSelector().className("android.widget.Button").instance(0)
${ETTA_Popup}                         xpath=//android.view.View[@content-desc="ETTA Successfully Updated"]

#dropdown task
${PendingAccept_Dropdown}               xpath=//android.view.View[@content-desc="Pending Accept 42" and @clickable="true"]
${CurrentTask_Dropdown}              xpath=//android.view.View[@content-desc="Current Task"]
${CurrentTask_Dropdown}              android=new UiSelector().className("android.view.View").descriptionContains("Current Task").clickable(true)

${AssignedTask_Dropdown}             xpath=//android.view.View[@content-desc="Assigned Task"]
${TaskHistory_Dropdown}              xpath=//android.view.View[@content-desc="Task History"]

#-----------------------------------------------------CURRENT TASK PAGE (EACH TICKET)------------------------------------------

#status menus for current task
${OnSite_Button}                      xpath=//android.widget.Button[@content-desc="On Site"]
${Rescheduled_Button}                 xpath=//android.widget.Button[@content-desc="Rescheduled"]

${notes_input}                        xpath=//android.widget.EditText
${Submit_Button}                      xpath=//android.widget.Button[@content-desc="Submit"]
${Yes_Button}                         xpath=//android.widget.Button[@content-desc="Yes"]

#Reschedule Option - with date
${WithDate_Button}                    xpath=//android.view.View[@content-desc="With Date"]/android.widget.RadioButton
${Appointment_DateTime}               xpath=//android.view.View[@content-desc="Appointment Datetime"]
${First_Preferred_DateTime}           xpath=//android.view.View[@content-desc="First Preferred Datetime"]
${Second_Preferred_DateTime}          xpath=//android.view.View[@content-desc="Second Preferred Datetime"]
${Date_Appointmnet1}                  xpath=//android.view.View[contains(@content-desc, "Friday, May 23, 2025")]
${Date_Appointmnet2}                  xpath=//android.view.View[contains(@content-desc, "Thursday, May 8, 2025")]
${Timeslot_Appointment1}              xpath=//android.view.View[contains(@content-desc, "09:00 - 11:59")]
${Timeslot_Appointment2}              xpath=//android.view.View[contains(@content-desc, "12:00 - 17:59")]
${Timeslot_Appointment3}              xpath=//android.view.View[contains(@content-desc, "18:00 - 20:59")]

#Reschedule Option - no date
${NoDate_Button}                  xpath=//android.view.View[@content-desc="No Date"]/android.widget.RadioButton
${Cause_Category}                 xpath=//android.view.View[contains(@content-desc, "* Cause Category") and contains(@content-desc, "Select")]
${BTU_Button}                     xpath=//android.widget.Button[@content-desc="BTU"]
${Customer_Button}                xpath=//android.widget.Button[@content-desc="Customer"]

${Cause_Code}                     xpath=//android.view.View[contains(@content-desc, "* Cause Code") and contains(@content-desc, "Select")]
${BTU_Issue_Button}               xpath=//android.widget.Button[@content-desc="BTU Issue"]
${Building_Internal_Button}       xpath=//android.widget.Button[@content-desc="Building Internal Wiring"]
${BTU_Faulty_Button}              xpath=//android.widget.Button[@content-desc="BTU Faulty"]

${Resolution_Code}                xpath=//android.view.View[contains(@content-desc, "* Resolution Code") and contains(@content-desc, "Select")]
${Firmware_Upgrade_Button}        xpath=//android.widget.Button[@content-desc="Firmware Upgrade"]
${Normalise_Cable_Button}         xpath=//android.widget.Button[@content-desc="Normalise Cable Connection"]
${Advice_Customer_Button}         xpath=//android.widget.Button[@content-desc="Advise Customer_Counter"]
${TMCPE_Replaced_Button}          xpath=//android.widget.Button[@content-desc="TMCPE Replaced"]

#Resolved Status page
${Add_Attachment_Button}          xpath=//android.view.View[@content-desc="* Attachments"]//android.widget.ImageView

${newAttachments_button}          xpath //android.widget.Button[@bounds='[891,2085][1038,2186]']
${uploadAttachment_list}          xpath=//android.view.View[@content-desc="Upload Attachment"]
${Attachment_field}               xpath=//android.widget.ImageView[@content-desc="Size Type * Name 13/40 * Remarks 0/1000"]
${Verify_Status_Button}               xpath=//android.widget.Button[@content-desc="Verify Status"]
#---------------------------------------------------CAMERA-----------------------------------------

${camera_button}                     xpath=    //android.widget.Button[@content-desc="Camera"]
${cameraCapture_button}              xpath=    //android.widget.Button[@content-desc="Capture"]
${Photo_button}                      xpath=//android.widget.Button[@content-desc="Photo"]
${Photo_From_Gallery_button}         xpath=(//android.widget.ImageView[@resource-id="com.google.android.providers.media.module:id/icon_thumbnail"])[2]
${Cancel_Attachment_button}          xpath=//android.view.View[@content-desc="* Attachments"]/android.widget.Button
${sizeCaptured_text}                 xpath=    //android.view.View[@content-desc="Size"]
${Attachment_type}                   xpath=//android.view.View[@text="jpg"]
${nameCaptured_input}                xpath=//android.widget.EditText
${remarksCaptured_input}             xpath=//android.widget.EditText[2]
#${uploadCaptured_button}            xpath=    //android.widget.Button[@content-desc="Upload"]


${Signature_Button}                  xpath=//android.view.View[@content-desc="Please Input Signature"]
${Additional_Information}            xpath=//android.view.View[@content-desc="Additional Information"]


#-----------------------------------------------------RETURN OPTION-------------------------------------------

${Return_Reason_Button}              xpath=//android.view.View[contains(@content-desc, "Return Reason")]
${Cabinet_Locked_Option}             xpath=//android.widget.Button[@content-desc="Cabinet Locked"]
${Escalate_Option}                   xpath=//android.widget.Button[@content-desc="Escalate"]
${New_Activity_Type_Button}          xpath=//android.view.View[contains(@content-desc, "New Activity Type")]      #//android.view.View[@content-desc="* New Activity Type Select"]
${FS_Troubleshooting_Button}         xpath=//android.widget.Button[@content-desc="FS Troubleshooting"]
${Attachment_type}                   xpath=//android.view.View[@text="jpg"]
${nameCaptured_input}                xpath=//android.widget.EditText
${remarksCaptured_input}             xpath=//android.widget.EditText[2]
#${uploadCaptured_button}            xpath=//android.widget.Button[@content-desc="Upload"]
${Signature_Button}                  xpath=//android.view.View[@content-desc="Please Input Signature"]
${Additional_Information}            xpath=//android.view.View[@content-desc="Additional Information"]

#----------------------------------------------------RAF PAGE------------------------------------------
${RAF_Button}                            xpath=//android.widget.Button[@content-desc="RAF"]

#Restoration Category
${TM_Access_Network_Button}              xpath=(//android.widget.CheckBox)[1]
${Last_Point_Connection_Button}          xpath=(//android.widget.CheckBox)[2]
${Telephone_Socket_Button}               xpath=(//android.widget.CheckBox)[3]

#Physical Health Check
${Landed_House_UnifiFTTH_Button}         xpath=//android.view.View[@content-desc="Landed House (UniFi FTTH)"]
${Landed_House_DSL/DEL_Button}           xpath=//android.view.View[@content-desc="Landed House (DSL/DEL)"]

#Restoration Charge
${Renewal_Service_Contract_Button}        xpath=//android.widget.RadioButton[@content-desc="Renewal Service Contract"]

#Broadband
${Add_Reading_Button}                   xpath=//android.widget.Button[@content-desc="Add Reading"]
${Site_Dropdown}                        xpath=//android.widget.ScrollView/android.view.View[1]
${TM_Option_Button}                     xpath=//android.view.View[@content-desc="TM"]
${Customer_Option_button}               xpath=//android.view.View[@content-desc="Customer"]
${SNR_Download_Input}                   xpath=//android.widget.ScrollView/android.view.View[3]/android.widget.EditText
${SNR_Upload_Input}                     xpath=//android.widget.ScrollView/android.view.View[4]/android.widget.EditText
${ATTN_Download_Input}                  xpath=//android.widget.ScrollView/android.view.View[6]/android.widget.EditText
${ATTN_Upload_Input}                    xpath=//android.widget.ScrollView/android.view.View[2]/android.widget.EditText
${AR_Download_Input}                    xpath=//android.widget.ScrollView/android.view.View[4]/android.widget.EditText
${AR_Upload_Input}                      xpath=//android.widget.ScrollView/android.view.View[5]/android.widget.EditText
${Add_Button}                           xpath=//android.widget.Button[@content-desc="Add"]
${Delete_Button}                        xpath=//android.widget.Button[@content-desc="TM"]
${Tone_Dropdown}                        xpath=//android.widget.ScrollView/android.view.View[6]
${OK_Option_button}                     xpath=//android.view.View[@content-desc="Ok"]
${NOT_OK_Option_button}                 xpath=//android.view.View[@content-desc="Not Ok"]

#Term and Condition

${TNC_Detail}                          xpath=//android.widget.Button[@content-desc="term and condition"]
${Check_Box}                           xpath=//android.widget.CheckBox
${Name_Input}                          android=new UiSelector().className("android.widget.EditText").instance(0)
${IC_Input}                            android=new UiSelector().className("android.widget.EditText").instance(1)
${Email_Input}                         android=new UiSelector().className("android.widget.EditText").instance(2)
${Relationship_Input}                  android=new UiSelector().className("android.widget.EditText").instance(3)
${Comments_Input}                      android=new UiSelector().className("android.widget.EditText").instance(4)

#PON PORT READING
${Optical_Overload_Input}              xpath=//android.widget.ScrollView/android.view.View/android.widget.EditText[1]
${Optical_Sensitivity_Input}           xpath=//android.widget.ScrollView/android.view.View/android.widget.EditText[2]
${OPT_Power_Input}                     xpath=//android.widget.ScrollView/android.view.View/android.widget.EditText[3]
${Ext_Ratio_Input}                     xpath=//android.widget.ScrollView/android.view.View/android.widget.EditText[4]

#ONU READING
${ONU_Reading_Dropdown}                xpath=//android.view.View[@content-desc="ONU READING"]
${Optical_Input}                       android=new UiSelector().className("android.widget.EditText").instance(2)
${Attainable_Input}                    android=new UiSelector().className("android.widget.EditText").instance(3)
${Actual_Rate_Input}                   android=new UiSelector().className("android.widget.EditText").instance(4)

#Restoration Charges
${Restoration_Charges}                 xpath=//android.view.View[@content-desc="SECTION 3: RESTORATION CHARGES"]

#For TM Used Only
${Cust_Refuse_Sign}                       xpath=//android.view.View[@content-desc="Customer refuse to sign"]/android.widget.CheckBox
${Cust_Disagree_Restoration}              xpath=//android.view.View[@content-desc="Customer disagree with restoration work"]/android.widget.CheckBox
${Restoration_Completed_Outside}          xpath=//android.view.View[@content-desc="Restoration completed outside of customer premise"]/android.widget.CheckBox

#----------------------------------------------------SERVICE VERIFCATION PAGE------------------------------------------

${Service_Verification_Button}          xpath=//android.widget.Button[@content-desc="Service Verification"]
${Verify_Button}                        xpath=//android.widget.Button[@content-desc="Verify"]
${Done_Button}                          xpath=//android.widget.Button[@content-desc="Done"]
${IVR_Pin_Code_Button}                  xpath=//android.widget.EditText
${Update_SPANMS_Button}                 xpath=//android.widget.Button[@content-desc=" Update Via SPANMS"]
${Update_Manually_Button}               xpath=//android.widget.Button[@content-desc="Update Manually"]
${Reverify_Inventory_Button}            xpath=//android.widget.Button[@content-desc="Reverify Inventory"]

#---------------------------------------------------CCP Module------------------------------------------

${OneOff_Payment_Button}                xpath=//android.view.View[@content-desc="One-Off Payment"]/android.widget.RadioButton
${Renewal_Service_Button}               xpath=//android.view.View[@content-desc="Renewal Service Contract"]/android.widget.RadioButton
${Swap_CPE_Button}                      xpath=//android.widget.Button[@content-desc="Swap CPE"]
${Add_New_Equip_Button}                 xpath=//android.view.View[@content-desc="Add New Equip"]
${Add_Loose_Equip_Button}               xpath=//android.view.View[contains(@content-desc, "Add Loose Equip")]
${Flag_Button}                          xpath=//android.view.View[@content-desc="Flag"]
${Update_Button}                        xpath=//android.view.View[@content-desc="Update"]

${Scan_Barcode_Button}                  xpath=//android.widget.Button[@content-desc="Scan Barcode"]
${Generate_SN_Button}                   xpath=//android.widget.Button[@content-desc="Generate SN"]
${List_Button}                          xpath=(//android.widget.Button[@content-desc])[3]
${List_Option1_Button}                  xpath=//android.widget.Button[@content-desc="SLTSOYSY1912073148"]
${Verify_SN_Button}                     xpath=//android.widget.Button[@content-desc="Verify SN"]
${Cancel_Scan_Button}                   xpath=//android.widget.Button[@resource-id="my.com.tm.tmforce.flutter.enterprise.sit2:id/btnBarcodeCaptureCancel"]
${Save_Button}                          xpath=//android.widget.Button[@content-desc="Save"]

#SWAP CPE
# UPDATE wifi (RG) //old CPE
${Material_Desc_Button}                 xpath=(//android.view.View[contains(@content-desc, "Old CPE")]/android.view.View[@clickable="true"])[1]
${ON_SITE_SUPPORT_Button}               Xpath=(//android.view.View)[1]
${Faulty_Reason_Button}                 xpath=(//android.view.View[contains(@content-desc, "Old CPE")]/android.view.View[@clickable="true"])[2]
${VM_Physical_Damage_Button}            Xpath=(//android.widget.Button)[2]
${Remarks_Input}                        xpath=//android.widget.EditText[2]
${Service_Point}                        xpath=//android.view.View[@content-desc="Service Point"]

#Add loose Equipment
${Equipment_Name_Button}                xpath=//android.view.View[contains(@content-desc, "Select") and @clickable="true"]
${TVOS_Button}                          xpath=//android.widget.Button[@content-desc="STB EC6016V5 Remote Control (TVOS)"]
${New_CPE}                              xpath=//android.view.View[@content-desc="New CPE"]
${Equipment_Back_Button}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button          

#UPDATE SERVICE POINT//new CPE
${Serial_Number_List1}                  xpath=(//android.widget.Button[@content-desc])[1]
${Serial_Number_List2}                  xpath=(//android.widget.Button[@content-desc])[2]
${Serial_Number_List3}                  xpath=(//android.widget.Button[@content-desc])[3]
${MAC_Address_Input}                    android=new UiSelector().className("android.widget.EditText").instance(1)

#----------------------------------------------------Wi-Fi Analyzer PAGE------------------------------------------

#wireless
${Refresh_Button}                       xpath=(//android.view.View[contains(@content-desc, "Wireless") and contains(@content-desc, "AP Name")]//android.widget.Button)[1]
${Wifi_Signal_Test_Button}              xpath=//android.widget.Button[@content-desc="Wi-Fi Signal Test"]
${Business_Button}                      xpath=//android.widget.Button[@content-desc="Business"]
${Test_Type_Button}                     xpath=//android.view.View[@content-desc="Select"]
${Meeting_Room1_Button}                 xpath=//android.widget.Button[@content-desc="Meeting Room 1"]
${RG_Location_Button}                   xpath=(//android.view.View[contains(@content-desc, "Select") and @clickable="true"])[2]
${Workspace1_Button}                    xpath=//android.widget.Button[@content-desc="Workspace 1"]
${Test_Area_Button}                     xpath=(//android.view.View[contains(@content-desc, "Select") and @clickable="true"])[3]
${Wifi_Test_Button}                     xpath=//android.widget.Button[@content-desc="Wi-Fi Test"]

#Result
${Add_Result_Button}                    xpath=//android.widget.Button[@content-desc="Add result to list"]
${List_Of_Result}                       xpath=//android.view.View[@content-desc="List of result(s)"]

#----------------------------------------------------Speed Test PAGE------------------------------------------

${View_More}                           xpath=//android.widget.Button[@content-desc="View More"]
${View_Less}                           xpath=//android.widget.Button[@content-desc="View Less"]
${Run_Test_Button}                     xpath=//android.widget.Button[@content-desc="Run Test"]

#---------------------------------------------------NOTES----------------------------------------- aini

${notes_button}                      xpath=    //android.view.View[@content-desc="Notes"]
${filterNotes_input}                 xpath=    //android.widget.EditText  
${addNotes_button}                   xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button
${selectNotes_button}                xpath=    //android.view.View[@content-desc="Select"]
${updateStatus_list}                 xpath=    //android.widget.Button[@content-desc="Update Status"]
${searchNoteType_input}              xpath=    //android.widget.EditText
${backNotes_button}                  xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.widget.Button
${descNotes_input}                   xpath=    (//android.widget.EditText[@clickable='true' and @focusable='true'])[1]
${cancelNotes_button}                xpath=    //android.widget.Button[@content-desc="Cancel"]
${doneNotes_button}                  xpath=    //android.widget.Button[@content-desc="Done"]
${confirmationReminder}              xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View
${yesNotes_button}                   xpath=    //android.widget.Button[@content-desc="Yes"]
${noNotes_button}                    xpath=    //android.widget.Button[@content-desc="No"]

#---------------------------------------------------ATTACHMENTS----------------------------------------- aini

${attachment_button}                 xpath=    //android.view.View[@content-desc="Attachments"]
${all_attachments}                   xpath=    //android.view.View[contains(@content-desc, "Tab 1 of 5")]
${image_attachments}                 xpath=    //android.view.View[contains(@content-desc, "Tab 2 of 5")]
${video_attachments}                 xpath=    //android.view.View[contains(@content-desc, "Tab 3 of 5")]
${document_attachments}              xpath=    //android.view.View[contains(@content-desc, "Tab 4 of 5")]
${text_attachments}                  xpath=    //android.view.View[contains(@content-desc, "Tab 5 of 5")]

${newAttachments_button}             xpath=(//android.widget.Button)[last()]
#${newAttachments_button}             xpath=    //android.widget.Button[@clickable='true' and @enabled='true' and @focusable='true']
# ${newAttachments_button}             android=new UiSelector().className("android.widget.Button").instance(1)
${uploadAttachment_list}             xpath=    //android.view.View[@content-desc="Upload Attachment"]
${backAttachment_button}             xpath=    //android.view.View//android.widget.Button[1]

#---------------------------------------------------CAMERA-----------------------------------------aini

${shutter_button}                    xpath=    //android.widget.ImageView[@resource-id="com.sec.android.app.camera:id/normal_center_button"]
${stop_button}                       xpath=    //android.widget.ImageView[@resource-id="com.sec.android.app.camera:id/stop_button_icon"]
${camera_button}                     xpath=    //android.widget.Button[@content-desc="Camera"]
${cameraCapture_button}              xpath=    //android.widget.Button[@content-desc="Capture"]
${sizeCaptured_text}                 xpath=    //android.view.View[@content-desc="Size"]
# ${nameCaptured_input}                xpath=    //android.widget.EditText[@bounds='[11,1782][1070,1929]']                # old bounds  (coordinate 500 1460)
# ${nameCaptured_input}                xpath=    //android.widget.EditText[@bounds='[26,1755][1054,1902]']                    # new bounds
${nameCaptured_input}                xpath=    //android.widget.EditText[@clickable='true' and @enabled='true']
# ${nameCaptured_input_Adibah}         xpath=    //android.widget.EditText[@bounds='[12,1867][1068,2023]']

${remarksCaptured_input}             xpath=    //android.widget.ScrollView/android.widget.EditText[2]
${uploadCaptured_button}             xpath=    //android.widget.Button[@content-desc="Upload"]
${recordCapture_button}              xpath=    //android.widget.Button[@content-desc="Record"]

${gallery_button}                    xpath=    //android.widget.Button[@content-desc="Gallery"]
${photoGallery_button}               xpath=    //android.widget.Button[@content-desc="Photo"]
${videoGallery_button}               xpath=    //android.widget.Button[@content-desc="Video"]

${retryFileName}                     xpath=    //android.widget.Button[@content-desc="Retry"]
${cancelFileName}                    xpath=    //android.widget.Button[@content-desc="Cancel"]

#---------------------------------------------------FILES/DOCUMENT----------------------------------------- aini

${files_button}                      xpath=    //android.widget.Button[@content-desc="Files"]
${documentFiles_button}              xpath=    //android.widget.Button[@content-desc="Document"]
${textFiles_button}                  xpath=    //android.widget.Button[@content-desc="Text"]

${searchPhone_button}                xpath=    //android.widget.Button[@content-desc="Search"]
${searchPhone_input}                 xpath=    //android.widget.AutoCompleteTextView[@resource-id="com.google.android.documentsui:id/search_src_text"]

#---------------------------------------------------LANDING PAGE-CALENDAR----------------------------------------- aini

${landingPageTask_button}            xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]                    

${calendarIcon_button}               xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${calendarPicker_button}             xpath=    //android.view.View[@content-desc="August 2025 show date picker"]
# ${pickDate_element}                  xpath=    //android.view.View[@content-desc="6 AM, 29 May 2025"]
${resetCalendar_button}              xpath=    //android.view.View[@content-desc="Today"]
${backwardDate_button}               xpath=    //android.view.View[@content-desc="Backward"]
${forwardDate_button}                xpath=    //android.view.View[@content-desc="Forward"]

# ${previousMonth_button}              xpath=    --takde xpath
# ${nextMonth_button}                  xpath=        --no xpath

# FILTER CALENDAR

${filterCalendar_button}             xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[3]
${dayView_button}                    xpath=    //android.view.View[@content-desc="Day"]
${weekView_button}                   xpath=    //android.view.View[@content-desc="Week"]
${monthView_button}                  xpath=    //android.view.View[@content-desc="Month"]
${scheduleView_button}               xpath=    //android.view.View[@content-desc="Schedule"]

${1hInterval_button}                 xpath=    //android.view.View[@content-desc="1 Hour"]
${1h30mInterval_button}              xpath=    //android.view.View[@content-desc="90 Minutes"]
${2hInterval_button}                 xpath=    //android.view.View[@content-desc="2 Hour"]
${4hInterval_button}                 xpath=    //android.view.View[@content-desc="4 Hour"]
${6hInterval_button}                 xpath=    //android.view.View[@content-desc="6 Hour"]
${12hInterval_button}                xpath=    //android.view.View[@content-desc="12 Hour"]

${pickDate_view}                     xpath=    //android.view.View[contains(@content-desc, "31 August 2025")]
# ${nextMonth_popupCalendar}           xpath=    //android.view.View[contains(@content-desc, "17 May 2025")]
# ${prevMonth_popupCalendar}           xpath=    //android.view.View[contains(@content-desc, "week20")]

# popup calendar
${pickMonthYear_popupCalendar}       xpath=    (//android.view.View[contains(@content-desc, "Sep 2025")])[2]
${pickMonth_popupCalendar}           xpath=    //android.view.View[contains(@content-desc, "Sep")]
${pickDate_popupCalendar}            xpath=    //android.view.View[contains(@content-desc, "31 August 2025")]


#---------------------------------------------------LANDING PAGE-TASK SEARCH----------------------------------------- aini

${searchFilter_button}               xpath=    //android.widget.EditText
${ticketNEXT}                        xpath=    //android.view.View[contains(@content-desc, "T-0000003669")]
${ticketDetails}                     xpath=    //android.view.View[contains(@content-desc, "Tab 1 of 10")]
${ticketActivity}                    xpath=    //android.view.View[contains(@content-desc, "Tab 2 of 10")]
${ticketCustomer}                    xpath=    //android.view.View[contains(@content-desc, "Tab 3 of 10")]
${ticketService}                     xpath=    //android.view.View[contains(@content-desc, "Tab 4 of 10")]
${ticketNetwork}                     xpath=    //android.view.View[contains(@content-desc, "Tab 5 of 10")]
${ticketNIS}                         xpath=    //android.view.View[contains(@content-desc, "Tab 6 of 10")]
${ticketGranite}                     xpath=    //android.view.View[contains(@content-desc, "Tab 7 of 10")]
${ticketEquipment}                   xpath=    //android.view.View[contains(@content-desc, "Tab 8 of 10")]
${ticketMiscellaneous}               xpath=    //android.view.View[contains(@content-desc, "Tab 9 of 10")]
${ticketInApp}                       xpath=    //android.view.View[contains(@content-desc, "Tab 10 of 10")]
${launchSNOP_button}                 xpath=    //android.widget.ImageView[@content-desc="Launch SNOP"]
${SNOP_orderDetails}                 xpath=    //android.view.View[@content-desc="Order Details"]

#---------------------------------------------------LANDING PAGE-FILTER-----------------------------------------

${filter_button}                     xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[3]
${clearFilter_button}                xpath=    //android.widget.Button[@content-desc="Clear"]
${applyFilter_button}                xpath=    //android.widget.Button[@content-desc="Apply"]

# sort by
${sortDesc_button}                   xpath=    //android.widget.Button[@content-desc="Descending"]
${sortAsc_button}                    xpath=    //android.widget.Button[@content-desc="Ascending"]

${searchBy_UI}                       xpath=    //android.view.View[@content-desc="Search By:Assigned, On Site, InProgress, On My Way, Unknown"]

${apptDate_button}                   xpath=    //android.view.View[@content-desc="Appointment Date"]
${preferredDate_button}              xpath=    //android.view.View[@content-desc="Preferred Date"]
${aging_button}                      xpath=    //android.view.View[@content-desc="Aging"]
${priority_button}                   xpath=    //android.view.View[@content-desc="Priority"]
${buildingID_button}                 xpath=    //android.view.View[@content-desc="Building ID"]
${activityID_button}                 xpath=    //android.view.View[@content-desc="Activity ID"]
${displacement_button}               xpath=    //android.view.View[@content-desc="Displacement"]

#status
${allStatus_button}                  xpath=    //android.view.View[contains(@content-desc, "Add All")]   

${assigned_button}                   xpath=//android.view.View[@content-desc="Assigned"]
${onMyWay_button}                    xpath=//android.view.View[@content-desc="On My Way"]
${onSite_button}                     xpath=//android.view.View[@content-desc="On Site"]
${inProgress_button}                 xpath=//android.view.View[@content-desc="InProgress"]
${unknown_button}                    xpath=//android.view.View[@content-desc="Unknown"]
${pendingAccept_button}              xpath=//android.view.View[@content-desc="Pending Accept"]

#-----------------------------------------------------ASSIGNED TASK CONTENT------------------------------------------- aini

${assignedTask_header}              xpath=    //android.view.View[normalize-space(@content-desc) = "Assigned Task 8"]

#-----------------------------------------------------UPDATE ASSIGNED TASK CONTENT------------------------------------------- aini

${assignedTaskContent}               xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
# ${assignedTaskUpdateInformation}     xpath=    //android.view.View[@content-desc="Update Information"]
${newStatus_button}                  xpath=    //android.view.View[@content-desc="Select"]
${updateStatusOption}                xpath=    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View
${notes_input}                       xpath=    //android.widget.EditText
