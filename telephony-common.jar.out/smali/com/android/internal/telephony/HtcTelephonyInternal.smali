.class public Lcom/android/internal/telephony/HtcTelephonyInternal;
.super Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephonyInternal$1;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$ECaveResult;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_3G_CONTEXT_AUTHENTICATE:I = 0x1

.field public static final AUTH_TYPE_GSM_AUTHENTICATE:I = 0x0

.field public static final AUTH_TYPE_IMS_AKA_AUTHENTICATE:I = 0x2

.field public static final AUTH_TYPE_ISIM_GBA_BOOTSTRAP_AUTHENTICATE:I = 0x3

.field public static final AUTH_TYPE_ISIM_GBA_NAF_AUTHENTICATE:I = 0x4

.field private static final CMD_ACCESS_SIM_ON_FLIGHT_MODE_STATUS:I = 0x6ed

.field private static final CMD_CDMA_EXIT_RADIO_POWER_SAVE_MODE:I = 0x7d2

.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_ENABLEPS_W2G_HANDOVER:I = 0x6f9

.field private static final CMD_ENABLE_REGISTRATION_STATE_WIFI_CALL:I = 0x6fa

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_GET_ALL_DEVICE_ID_INFO:I = 0x6fc

.field private static final CMD_GET_ALL_IMSI:I = 0x6fe

.field private static final CMD_GET_CDMAMIN:I = 0xcd

.field private static final CMD_GET_CELL_LOCATION_BY_SLOT:I = 0x7ea

.field private static final CMD_GET_DETAIL_ICC_STATUS:I = 0x6ff

.field private static final CMD_GET_EHRPD_DEVICE_CAPABILITY:I = 0x7d3

.field private static final CMD_GET_EHRPD_DEVICE_CAPABILITY_RESULT:I = 0x7d4

.field private static final CMD_GET_EHRPD_DISABLE_CAPABILITY:I = 0x7d5

.field private static final CMD_GET_EHRPD_DISABLE_CAPABILITY_RESULT:I = 0x7d6

.field private static final CMD_GET_ICCSN:I = 0xce

.field private static final CMD_GET_IMEI:I = 0xc8

.field private static final CMD_GET_IMEISV:I = 0xc9

.field private static final CMD_GET_IMS_REGISTERED:I = 0xd7

.field private static final CMD_GET_LTE_BAND_PRIORITY_LIST:I = 0x6e9

.field private static final CMD_GET_LTE_BAND_PRIORITY_LIST_DONE:I = 0x6ea

.field private static final CMD_GET_LTE_BAND_TYPE:I = 0xd9

.field private static final CMD_GET_LTE_BAND_TYPE_DONE:I = 0xda

.field private static final CMD_GET_MEID:I = 0xca

.field private static final CMD_GET_MOBILE_DATA_OVERALL_STATE:I = 0x6e8

.field private static final CMD_GET_NETWORK_SELECTION_MODE:I = 0x6e3

.field private static final CMD_GET_PDN_SETTINGS_2:I = 0x6f4

.field private static final CMD_GET_PDN_SETTINGS_2_RESULT:I = 0x6f5

.field private static final CMD_GET_PRI:I = 0xcb

.field private static final CMD_GET_PRL:I = 0xcc

.field private static final CMD_GET_RADIO_ON_STATE:I = 0x7ed

.field private static final CMD_GET_RIL_RADIO_TECHNOLOGY:I = 0x6cf

.field private static final CMD_GET_SERIAL_NUMBER_WITH_CHAR:I = 0x6d7

.field private static final CMD_GET_UICC_APP_TYPE:I = 0x6e4

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_CDMA_ERI_CALL_GUARD:I = 0x6b8

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_CARD_AUTH:I = 0x6ee

.field private static final CMD_HTC_REQUEST_CARD_AUTH_DONE:I = 0x6ef

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT:I = 0x6b6

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b7

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB:I = 0x9e

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE:I = 0x9f

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_ACCT_INFOS:I = 0x6bd

.field private static final CMD_HTC_REQUEST_GET_ATR_INFO:I = 0x6b9

.field private static final CMD_HTC_REQUEST_GET_ATR_INFO_DONE:I = 0x6ba

.field private static final CMD_HTC_REQUEST_GET_BTID:I = 0x709

.field private static final CMD_HTC_REQUEST_GET_CDMA_CALL_FLASH_CODE:I = 0x6c4

.field private static final CMD_HTC_REQUEST_GET_CDMA_SF_EUIMID:I = 0x6c3

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS:I = 0x6b0

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS_RESULT:I = 0x6b1

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT:I = 0x6b4

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b5

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE:I = 0x6b2

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE_RESULT:I = 0x6b3

.field private static final CMD_HTC_REQUEST_GET_CDMA_VOICE_CAMPED_OPERATOR:I = 0x6c2

.field private static final CMD_HTC_REQUEST_GET_CFU_NUMBER:I = 0x7e1

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC:I = 0x9c

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE:I = 0x9d

.field private static final CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE:I = 0x6bc

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO:I = 0xad

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO_DONE:I = 0xae

.field private static final CMD_HTC_REQUEST_GET_GPS_ONE_MODE:I = 0x6be

.field private static final CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE:I = 0x6bf

.field private static final CMD_HTC_REQUEST_GET_HASISIM:I = 0x70c

.field private static final CMD_HTC_REQUEST_GET_IS_GBA_SUPPORTED:I = 0x70d

.field private static final CMD_HTC_REQUEST_GET_KEYLIFETIME:I = 0x70b

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE:I = 0xab

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT:I = 0xac

.field private static final CMD_HTC_REQUEST_GET_O2_SIM_CARD_TYPE:I = 0x7e0

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO:I = 0xb1

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO_DONE:I = 0xb2

.field private static final CMD_HTC_REQUEST_GET_RAND:I = 0x70a

.field private static final CMD_HTC_REQUEST_GET_RF_BAND_INFO:I = 0x7db

.field private static final CMD_HTC_REQUEST_GET_RF_BAND_INFO_DONE:I = 0x7dc

.field private static final CMD_HTC_REQUEST_GET_SUBSIDY_LOCK_TYPES:I = 0x7e3

.field private static final CMD_HTC_REQUEST_GET_TxRx_POWER_INFO:I = 0x7d9

.field private static final CMD_HTC_REQUEST_GET_TxRx_POWER_INFO_DONE:I = 0x7da

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI:I = 0xa0

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE:I = 0xa1

.field private static final CMD_HTC_REQUEST_NOTIFY_KEY_EVENT:I = 0x7d1

.field private static final CMD_HTC_REQUEST_SEND_USER_TRIAL_FEEDBACK:I = 0x6bb

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK:I = 0x6ae

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK_RESULT:I = 0x6af

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB:I = 0x98

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_SET_GPS_ONE_MODE:I = 0x6c0

.field private static final CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE:I = 0x6c1

.field private static final CMD_HTC_REQUEST_SET_ITC:I = 0x6cd

.field private static final CMD_HTC_REQUEST_SET_ITC_DONE:I = 0x6ce

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB:I = 0x9a

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE:I = 0x9b

.field private static final CMD_HTC_REQUEST_SUPPLY_SIM_PIN:I = 0x7e4

.field private static final CMD_HTC_REQUEST_SUPPLY_SIM_PUK:I = 0x7e5

.field private static final CMD_HTC_REQUEST_SUPPLY_SUBSIDY_LOCK_PIN:I = 0x7e2

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_REQUEST_WRITE_ISIM_GBA_PARAM:I = 0x6f0

.field private static final CMD_HTC_REQUEST_WRITE_ISIM_GBA_PARAM_DONE:I = 0x6f1

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_HTC_SIM_GSM_AUTH:I = 0xb3

.field private static final CMD_HTC_SIM_GSM_AUTH_DONE:I = 0xb4

.field private static final CMD_HTC_USIM_AKA_AUTH:I = 0xaf

.field private static final CMD_HTC_USIM_AKA_AUTH_DONE:I = 0xb0

.field private static final CMD_INVOKE_OEM_RIL_REQUEST_STRINGS:I = 0x6fb

.field private static final CMD_IS_CT_DUAL_CARD_INSERTED:I = 0x6dd

.field private static final CMD_IS_CT_LTE_SIM_CARD:I = 0x6fd

.field private static final CMD_IS_DUAL_CARD_INSERTED:I = 0x7e8

.field private static final CMD_IS_IMS_PHONE_IDLE:I = 0x6d0

.field private static final CMD_NAME_OMA_DM_ENABLED:I = 0xd6

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

.field private static final CMD_OPEN_CHANNEL_EXT:I = 0x6ca

.field private static final CMD_PASS_HOTSPOT_STATE:I = 0x6e7

.field private static final CMD_REQUEST_GET_CD_PIN:I = 0x7e6

.field private static final CMD_REQUEST_GET_CD_PIN_DONE:I = 0x7e7

.field private static final CMD_RESET_PDN_FOR_SETTINGS_CHANGE_2:I = 0x6f8

.field private static final CMD_RESET_RIL:I = 0x6e1

.field private static final CMD_RESET_RIL_DONE:I = 0x6e2

.field private static final CMD_RESET_TO_DEFAULT_FOR_APN_SETTING:I = 0x6cc

.field private static final CMD_SET_EHRPD_DISABLE_CAPABILITY:I = 0x7d7

.field private static final CMD_SET_EHRPD_DISABLE_CAPABILITY_RESULT:I = 0x7d8

.field private static final CMD_SET_FAST_DORMANCY:I = 0x7df

.field private static final CMD_SET_INTERNAL_DATA_ENABLE_FOR_MIP_SCREEN:I = 0x6c9

.field private static final CMD_SET_LTE_BAND_PRIORITY_LIST:I = 0x6eb

.field private static final CMD_SET_LTE_BAND_PRIORITY_LIST_DONE:I = 0x6ec

.field private static final CMD_SET_LTE_BAND_TYPE:I = 0xdb

.field private static final CMD_SET_LTE_BAND_TYPE_DONE:I = 0xdc

.field private static final CMD_SET_MULTIRAB_TRAFFIC_THROTTLING:I = 0x7de

.field private static final CMD_SET_PDN_SETTINGS_2:I = 0x6f6

.field private static final CMD_SET_PDN_SETTINGS_2_RESULT:I = 0x6f7

.field private static final CMD_SET_RADIO_ON_BY_SLOT:I = 0x7ee

.field private static final CMD_SET_SEND_AT_PUSHMAIL:I = 0x7dd

.field private static final CMD_SET_SERVICE_DOMAIN_PREF:I = 0x6e5

.field private static final CMD_SET_SERVICE_DOMAIN_PREF_DONE:I = 0x6e6

.field private static final CMD_SIM_IO:I = 0x96

.field private static final DBG:Z

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field private static final EVENT_SIM_IO_DONE:I = 0x97

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field public static final HTC_PERMISSION_APP_SHARED:Ljava/lang/String; = "com.htc.permission.APP_SHARED"

.field private static final INTER_DBG:Z = false

.field public static final METHOD_ACCESS_SIM_ON_FLIGHT_MODE_STATUS:Ljava/lang/String; = "accessSimOnFlightMode"

.field public static final METHOD_CDMA_EXIT_RADIO_POWER_SAVE_MODE:Ljava/lang/String; = "htcCdmaExitRadioPowerSaveMode"

.field public static final METHOD_ENABLEPS_W2G_HANDOVER:Ljava/lang/String; = "enablePS_W2G_Handover"

.field public static final METHOD_ENABLE_REGISTRATION_STATE_WIFI_CALL:Ljava/lang/String; = "enableRegistrationState_wifi_call"

.field public static final METHOD_GET_ALL_DEVICE_ID_INFO:Ljava/lang/String; = "getAllDeviceIdInfo"

.field public static final METHOD_GET_ALL_IMSI:Ljava/lang/String; = "getAllIMSI"

.field public static final METHOD_GET_CELL_LOCATION_BY_SLOT:Ljava/lang/String; = "getCellLocationBySlotId"

.field public static final METHOD_GET_DETAIL_ICC_STATUS:Ljava/lang/String; = "getDetailIccStatus"

.field public static final METHOD_GET_EHRPD_DEVICE_CAPABILITY:Ljava/lang/String; = "requestGetEhrpdDeviceCapability"

.field public static final METHOD_GET_EHRPD_DISABLE_CAPABILITY:Ljava/lang/String; = "requestGetEhrpdDisableCapability"

.field public static final METHOD_GET_LTE_BAND_PRIORITY_LIST:Ljava/lang/String; = "requestGetLTESupportedBandPriorityList"

.field public static final METHOD_GET_MOBILE_DATA_OVERALL_STATE:Ljava/lang/String; = "getMobileDataOverallState"

.field public static final METHOD_GET_NETWORK_SELECTION_MODE:Ljava/lang/String; = "isAutoNetworkSelectionMode"

.field public static final METHOD_GET_PDN_SETTINGS_2:Ljava/lang/String; = "getPdnSettings2"

.field public static final METHOD_GET_RADIO_ON_STATE:Ljava/lang/String; = "isRadioOn"

.field public static final METHOD_GET_RIL_RADIO_TECHNOLOGY:Ljava/lang/String; = "getRilRadioTechnology"

.field public static final METHOD_GET_SERIAL_NUMBER_WITH_CHAR:Ljava/lang/String; = "getSimSerialNumberwithChar"

.field public static final METHOD_GET_UICC_APP_TYPE:Ljava/lang/String; = "getUiccAppType"

.field public static final METHOD_INVOKE_OEM_RIL_REQUEST_STRINGS:Ljava/lang/String; = "invokeOemRilRequestStrings"

.field public static final METHOD_IS_CT_DUAL_CARD_INSERTED:Ljava/lang/String; = "isCTDualCardInserted"

.field public static final METHOD_IS_CT_LTE_SIM_CARD:Ljava/lang/String; = "isCTLTESIMCard"

.field public static final METHOD_IS_DUAL_CARD_INSERTED:Ljava/lang/String; = "isDualCardInserted"

.field public static final METHOD_IS_IMS_PHONE_IDLE:Ljava/lang/String; = "isImsPhoneIdle"

.field private static final METHOD_NAME_CLEAR_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "clearCdmaSysRecordContent"

.field public static final METHOD_NAME_GET_ACCT_INFOS:Ljava/lang/String; = "AccountInfos"

.field public static final METHOD_NAME_GET_ATR_INFO:Ljava/lang/String; = "getAtrInfo"

.field private static final METHOD_NAME_GET_BTID:Ljava/lang/String; = "getBTID"

.field public static final METHOD_NAME_GET_CDMAMIN:Ljava/lang/String; = "getCDMAMIN"

.field public static final METHOD_NAME_GET_CDMA_CALL_FLASH_CODE:Ljava/lang/String; = "CdmaCallFlashCode"

.field public static final METHOD_NAME_GET_CDMA_SF_EUIMID:Ljava/lang/String; = "CdmaSfEuimid"

.field public static final METHOD_NAME_GET_CDMA_SMART_NETWORK_STATUS:Ljava/lang/String; = "getCdmaSmartNetworkStatus"

.field private static final METHOD_NAME_GET_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "getCdmaSysRecordContent"

.field private static final METHOD_NAME_GET_CDMA_SYS_RECORD_SIZE:Ljava/lang/String; = "getCdmaSysRecordSize"

.field public static final METHOD_NAME_GET_CDMA_VOICE_CAMPED_OPERATOR:Ljava/lang/String; = "CdmaVoiceCampedOperator"

.field private static final METHOD_NAME_GET_CFU_NUMBER:Ljava/lang/String; = "getCFUNumber"

.field public static final METHOD_NAME_GET_DESIRED_POWER_STATE:Ljava/lang/String; = "DesiredPowerState"

.field private static final METHOD_NAME_GET_DRX_INFO:Ljava/lang/String; = "getDrxInfo"

.field public static final METHOD_NAME_GET_GPS_ONE_MODE:Ljava/lang/String; = "GetGpsOneMode"

.field private static final METHOD_NAME_GET_HASISIM:Ljava/lang/String; = "hasISIM"

.field public static final METHOD_NAME_GET_ICCSN:Ljava/lang/String; = "getICCSN"

.field public static final METHOD_NAME_GET_IMEI:Ljava/lang/String; = "getIMEI"

.field public static final METHOD_NAME_GET_IMEISV:Ljava/lang/String; = "getIMEISV"

.field public static final METHOD_NAME_GET_IMS_REGISTERED:Ljava/lang/String; = "getIMSregistered"

.field private static final METHOD_NAME_GET_IS_GBA_SUPPORTED:Ljava/lang/String; = "isGBASupported"

.field private static final METHOD_NAME_GET_KEYLIFETIME:Ljava/lang/String; = "getKeyLifeTime"

.field public static final METHOD_NAME_GET_LTE_BAND_TYPE:Ljava/lang/String; = "requestGetLteBandType"

.field public static final METHOD_NAME_GET_LTE_LAST_ERROR_CODE:Ljava/lang/String; = "getLTELastErrorCode"

.field public static final METHOD_NAME_GET_MEID:Ljava/lang/String; = "getMEID"

.field private static final METHOD_NAME_GET_O2_SIM_CARD_TYPE:Ljava/lang/String; = "getO2SimCardType"

.field private static final METHOD_NAME_GET_POWER_INFO:Ljava/lang/String; = "getPowerInfo"

.field public static final METHOD_NAME_GET_PRI:Ljava/lang/String; = "getPRI"

.field public static final METHOD_NAME_GET_PRL:Ljava/lang/String; = "getPRL"

.field private static final METHOD_NAME_GET_RAND:Ljava/lang/String; = "getRand"

.field public static final METHOD_NAME_GET_RF_BAND_INFO:Ljava/lang/String; = "getRFBandInfo"

.field private static final METHOD_NAME_GET_SUBSIDY_LOCK_TYPES:Ljava/lang/String; = "getSubsidyLockTypes"

.field public static final METHOD_NAME_GET_TxRx_POWER_INFO:Ljava/lang/String; = "getTxRxPowerInfo"

.field public static final METHOD_NAME_HTC_GET_CDMA_ERI_CALL_GUARD:Ljava/lang/String; = "htcGetCdmaEriCallGuard"

.field public static final METHOD_NAME_NOTIFY_KEY_EVENT:Ljava/lang/String; = "notifyKeyEvent"

.field public static final METHOD_NAME_OMA_DM_ENABLED:Ljava/lang/String; = "setOmaDmEnabled"

.field public static final METHOD_NAME_REQUEST_CARD_AUTH:Ljava/lang/String; = "requestCardAuth"

.field public static final METHOD_NAME_REQUEST_WRITE_ISIM_GBA_PARAM:Ljava/lang/String; = "writeISIMGBAParam"

.field private static final METHOD_NAME_SEND_USER_TRIAL_FEEDBACK:Ljava/lang/String; = "sendUserTrialFeedback"

.field public static final METHOD_NAME_SET_CDMA_SMART_NETWORK:Ljava/lang/String; = "setCdmaSmartNetwork"

.field public static final METHOD_NAME_SET_GPS_ONE_MODE:Ljava/lang/String; = "SetGpsOneMode"

.field public static final METHOD_NAME_SET_ITC:Ljava/lang/String; = "setITC"

.field public static final METHOD_NAME_SET_LTE_BAND_TYPE:Ljava/lang/String; = "requestSetLteBandType"

.field private static final METHOD_NAME_SUPPLY_SIM_PIN:Ljava/lang/String; = "supplySimPin"

.field private static final METHOD_NAME_SUPPLY_SIM_PUK:Ljava/lang/String; = "supplySimPuk"

.field private static final METHOD_NAME_SUPPLY_SUBSIDY_LOCK_PIN:Ljava/lang/String; = "supplySubsidyLockPin"

.field public static final METHOD_PASS_HOTSPOT_STATE:Ljava/lang/String; = "passHotSpotState"

.field public static final METHOD_REQUEST_GET_CD_PIN:Ljava/lang/String; = "requestGetCDPin"

.field public static final METHOD_RESET_PDN_FOR_SETTINGS_CHANGE_2:Ljava/lang/String; = "resetPdnForSettingsChange2"

.field public static final METHOD_RESET_RIL:Ljava/lang/String; = "resetRil"

.field public static final METHOD_RESET_TO_DEFAULT_FOR_APN_SETTING:Ljava/lang/String; = "onResetToDefaultforApnSetting"

.field public static final METHOD_SET_EHRPD_DISABLE_CAPABILITY:Ljava/lang/String; = "requestSetEhrpdDisableCapability"

.field public static final METHOD_SET_FAST_DORMANCY:Ljava/lang/String; = "requestSetFastDormancy"

.field public static final METHOD_SET_INTERNAL_DATA_ENABLE_FOR_MIP_SCREEN:Ljava/lang/String; = "setInternalDataEnabledForHtcCdmaMIPScreen"

.field public static final METHOD_SET_LTE_BAND_PRIORITY_LIST:Ljava/lang/String; = "requestSetLTEBandPriority"

.field public static final METHOD_SET_MULTIRAB_TRAFFIC_THROTTLING:Ljava/lang/String; = "requestSetMultiRABTrafficThrottling"

.field public static final METHOD_SET_PDN_SETTINGS_2:Ljava/lang/String; = "setPdnSettings2"

.field public static final METHOD_SET_RADIO_BY_SLOT:Ljava/lang/String; = "setRadioBySlotId"

.field public static final METHOD_SET_SEND_AT_PUSHMAIL:Ljava/lang/String; = "sendAT_PushMail"

.field public static final METHOD_SET_SERVICE_DOMAIN_PREF:Ljava/lang/String; = "setServiceDomainPref"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SDBG:Z = false

.field static final TAG:Ljava/lang/String; = "HtcTelephonyInternal"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_BSID:Ljava/lang/String; = "getCdmaSysRecordContent_bsid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_NID:Ljava/lang/String; = "getCdmaSysRecordContent_nid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SID:Ljava/lang/String; = "getCdmaSysRecordContent_sid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SIZE:Ljava/lang/String; = "getCdmaSysRecordContent_size"

.field private static checkMth_getCdmaCallFlashCode:Z

.field private static checkMth_getCdmaVoiceCampedOperator:Z

.field private static fld_cdmaSfEuimid:Ljava/lang/reflect/Field;

.field private static mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;

.field private static mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;


# instance fields
.field private lastError:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mHtcCheckCompatibility:Ljava/lang/reflect/Method;

.field private mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private mProxyPhone:Lcom/android/internal/telephony/Phone;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field methodMap:Ljava/util/HashMap;

.field private rejectAll:Z

.field private responsedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 2954
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneProxy;)V

    .line 2955
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneProxy"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v1, 0x0

    .line 2957
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    .line 2979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    .line 5372
    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    .line 5373
    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2958
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 2959
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2960
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    .line 2961
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    .line 2962
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2965
    new-instance v0, Lcom/android/internal/telephony/HtcLtePdnSetting;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/HtcLtePdnSetting;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;

    .line 2973
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->InitMethodMap()V

    .line 2975
    return-void
.end method

.method private InitMethodMap()V
    .locals 3

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getLTELastErrorCode"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2984
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setCdmaSmartNetwork"

    const/16 v2, 0x6ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSmartNetworkStatus"

    const/16 v2, 0x6b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordSize"

    const/16 v2, 0x6b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2988
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordContent"

    const/16 v2, 0x6b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "clearCdmaSysRecordContent"

    const/16 v2, 0x6b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2990
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMEI"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMEISV"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2992
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getMEID"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2993
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPRI"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPRL"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2995
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCDMAMIN"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2996
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getICCSN"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "htcGetCdmaEriCallGuard"

    const/16 v2, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3000
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAtrInfo"

    const/16 v2, 0x6b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "sendUserTrialFeedback"

    const/16 v2, 0x6bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3008
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "DesiredPowerState"

    const/16 v2, 0x6bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3009
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "AccountInfos"

    const/16 v2, 0x6bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "GetGpsOneMode"

    const/16 v2, 0x6be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "SetGpsOneMode"

    const/16 v2, 0x6c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3016
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaVoiceCampedOperator"

    const/16 v2, 0x6c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3020
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaSfEuimid"

    const/16 v2, 0x6c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaCallFlashCode"

    const/16 v2, 0x6c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setInternalDataEnabledForHtcCdmaMIPScreen"

    const/16 v2, 0x6c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3027
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "onResetToDefaultforApnSetting"

    const/16 v2, 0x6cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setITC"

    const/16 v2, 0x6cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setOmaDmEnabled"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getSimSerialNumberwithChar"

    const/16 v2, 0x6d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "resetRil"

    const/16 v2, 0x6e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isCTDualCardInserted"

    const/16 v2, 0x6dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isDualCardInserted"

    const/16 v2, 0x7e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getRilRadioTechnology"

    const/16 v2, 0x6cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMSregistered"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isAutoNetworkSelectionMode"

    const/16 v2, 0x6e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3062
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getUiccAppType"

    const/16 v2, 0x6e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3065
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isImsPhoneIdle"

    const/16 v2, 0x6d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setServiceDomainPref"

    const/16 v2, 0x6e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3072
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAllDeviceIdInfo"

    const/16 v2, 0x6fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "passHotSpotState"

    const/16 v2, 0x6e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isCTLTESIMCard"

    const/16 v2, 0x6fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getMobileDataOverallState"

    const/16 v2, 0x6e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetLTESupportedBandPriorityList"

    const/16 v2, 0x6e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetLTEBandPriority"

    const/16 v2, 0x6eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getBTID"

    const/16 v2, 0x709

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3089
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getRand"

    const/16 v2, 0x70a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getKeyLifeTime"

    const/16 v2, 0x70b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3091
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "hasISIM"

    const/16 v2, 0x70c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isGBASupported"

    const/16 v2, 0x70d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3096
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "accessSimOnFlightMode"

    const/16 v2, 0x6ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestCardAuth"

    const/16 v2, 0x6ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3101
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "writeISIMGBAParam"

    const/16 v2, 0x6f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPdnSettings2"

    const/16 v2, 0x6f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setPdnSettings2"

    const/16 v2, 0x6f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "resetPdnForSettingsChange2"

    const/16 v2, 0x6f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "enablePS_W2G_Handover"

    const/16 v2, 0x6f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "enableRegistrationState_wifi_call"

    const/16 v2, 0x6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getDrxInfo"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3114
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "invokeOemRilRequestStrings"

    const/16 v2, 0x6fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3117
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "notifyKeyEvent"

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "htcCdmaExitRadioPowerSaveMode"

    const/16 v2, 0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetEhrpdDeviceCapability"

    const/16 v2, 0x7d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetEhrpdDisableCapability"

    const/16 v2, 0x7d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetEhrpdDisableCapability"

    const/16 v2, 0x7d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAllIMSI"

    const/16 v2, 0x6fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getDetailIccStatus"

    const/16 v2, 0x6ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getTxRxPowerInfo"

    const/16 v2, 0x7d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3140
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getRFBandInfo"

    const/16 v2, 0x7db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "sendAT_PushMail"

    const/16 v2, 0x7dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetMultiRABTrafficThrottling"

    const/16 v2, 0x7de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetFastDormancy"

    const/16 v2, 0x7df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getO2SimCardType"

    const/16 v2, 0x7e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCFUNumber"

    const/16 v2, 0x7e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "supplySubsidyLockPin"

    const/16 v2, 0x7e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getSubsidyLockTypes"

    const/16 v2, 0x7e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "supplySimPin"

    const/16 v2, 0x7e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3170
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "supplySimPuk"

    const/16 v2, 0x7e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetCDPin"

    const/16 v2, 0x7e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3174
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPowerInfo"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetLteBandType"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetLteBandType"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3182
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCellLocationBySlotId"

    const/16 v2, 0x7ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3186
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isRadioOn"

    const/16 v2, 0x7ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3188
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setRadioBySlotId"

    const/16 v2, 0x7ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaSfEuimid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # [B

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaCallFlashCode()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/HtcTelephonyInternal;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setInternalDataEnabledForHtcCdmaMIPScreen(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->networkTypeTorilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "x2"    # [B

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaVoiceCampedOperator()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 4
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3715
    if-nez p2, :cond_1

    move v0, v1

    .line 3718
    .local v0, "len":I
    :goto_0
    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    .line 3719
    const/16 v0, 0xff

    .line 3720
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3724
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3725
    return-void

    .line 3715
    .end local v0    # "len":I
    :cond_1
    array-length v0, p2

    goto :goto_0
.end method

.method private enforceSharePermission()V
    .locals 6

    .prologue
    .line 5056
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "sense_version"

    const-string v3, "5.5"

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 5059
    .local v0, "sensVersion":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 5060
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.permission.APP_SHARED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5063
    :cond_0
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 3391
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3394
    :cond_0
    const/16 v10, 0x7d

    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v10, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 3397
    .local v8, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3399
    .local v9, "s":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    .line 3400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3402
    :cond_1
    return-object v9
.end method

.method private getCdmaCallFlashCode()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 4992
    const/4 v3, 0x0

    .line 4993
    .local v3, "result":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    .line 4994
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 4996
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    .line 4997
    sget-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaCallFlashCode:Z

    if-nez v4, :cond_1

    .line 4999
    :try_start_0
    const-string v4, "com.android.internal.telephony.PhoneProxy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5000
    .local v1, "cls":Ljava/lang/Class;
    const-string v4, "getCdmaCallFlashCode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5002
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaCallFlashCode:Z

    .line 5004
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 5006
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5013
    :cond_2
    :goto_1
    return-object v3

    .line 5007
    :catch_0
    move-exception v2

    .line 5008
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "HtcTelephonyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaCallFlashCode get ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5009
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 5001
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getCdmaSfEuimid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4965
    const/4 v2, 0x0

    .line 4966
    .local v2, "sfEuimid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 4967
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_2

    .line 4968
    const/4 v1, 0x0

    .line 4969
    .local v1, "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    instance-of v3, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    if-eqz v3, :cond_0

    .line 4970
    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 4975
    :goto_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_1

    .line 4976
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mSfEuimid:Ljava/lang/String;

    .line 4985
    :goto_1
    return-object v2

    .line 4973
    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    goto :goto_0

    .line 4979
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_1
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CdmaSfEuimid incorrect records"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4983
    .end local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CdmaSfEuimid no card"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCdmaVoiceCampedOperator()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 4938
    const/4 v3, 0x0

    .line 4939
    .local v3, "result":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    .line 4940
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 4942
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    .line 4943
    sget-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaVoiceCampedOperator:Z

    if-nez v4, :cond_1

    .line 4945
    :try_start_0
    const-string v4, "com.android.internal.telephony.PhoneProxy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4946
    .local v1, "cls":Ljava/lang/Class;
    const-string v4, "getCdmaVoiceCampedOperator"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4948
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaVoiceCampedOperator:Z

    .line 4950
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 4952
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4959
    :cond_2
    :goto_1
    return-object v3

    .line 4953
    :catch_0
    move-exception v2

    .line 4954
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "HtcTelephonyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaVoiceCampedOperator get ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4955
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4947
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p1, "mPm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5424
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5426
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    .line 5427
    sget-boolean v1, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v1, :cond_0

    .line 5428
    const-string v2, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signatures for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5431
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5437
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v1

    .line 5428
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    goto :goto_0

    .line 5433
    :cond_2
    sget-boolean v1, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v1, :cond_3

    .line 5434
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No packageInfo found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5437
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5436
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x3e8

    .line 5177
    const/16 v0, -0x3e8

    .line 5178
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 5179
    const-string v2, "subscription"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5180
    .local v1, "subId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5181
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 5185
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    .end local v1    # "subId":Ljava/lang/Long;
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    :goto_1
    return-object v2

    .line 5183
    .restart local v1    # "subId":Ljava/lang/Long;
    :cond_1
    const-string v2, "phone"

    const/16 v3, -0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 5187
    .end local v1    # "subId":Ljava/lang/Long;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_1
.end method

.method private internalGetMobileDataOverallState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 5067
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 5068
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    const/4 v2, 0x0

    .line 5069
    .local v2, "state":I
    if-eqz v0, :cond_0

    .line 5070
    sget-object v3, Lcom/android/internal/telephony/HtcTelephonyInternal$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 5093
    const/4 v2, 0x0

    .line 5097
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_MOBILE_DATA_OVERALL_STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    :cond_1
    const-string v3, "getMobileDataOverallState"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5102
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v2    # "state":I
    :goto_1
    return-void

    .line 5072
    .restart local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v2    # "state":I
    :pswitch_0
    const/4 v2, 0x0

    .line 5073
    goto :goto_0

    .line 5075
    :pswitch_1
    const/4 v2, 0x1

    .line 5076
    goto :goto_0

    .line 5078
    :pswitch_2
    const/4 v2, 0x2

    .line 5079
    goto :goto_0

    .line 5081
    :pswitch_3
    const/4 v2, 0x3

    .line 5082
    goto :goto_0

    .line 5084
    :pswitch_4
    const/4 v2, 0x4

    .line 5085
    goto :goto_0

    .line 5087
    :pswitch_5
    const/4 v2, 0x5

    .line 5088
    goto :goto_0

    .line 5090
    :pswitch_6
    const/4 v2, 0x6

    .line 5091
    goto :goto_0

    .line 5099
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v2    # "state":I
    :catch_0
    move-exception v1

    .line 5100
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_MOBILE_DATA_OVERALL_STATE"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isAutoNetworkSelectionMode(I)Z
    .locals 6
    .param p1, "phoneSlot"    # I

    .prologue
    .line 5043
    const/4 v1, 0x0

    .line 5044
    .local v1, "networkSelection":Ljava/lang/String;
    const/4 v0, 0x1

    .line 5046
    .local v0, "isAutoSelection":Z
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5047
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5048
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5049
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkSelection= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,isAutoSelection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_0
    return v0
.end method

.method private networkTypeTorilRadioTechnology(I)I
    .locals 1
    .param p1, "networktype"    # I

    .prologue
    .line 5138
    packed-switch p1, :pswitch_data_0

    .line 5170
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5140
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5142
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 5144
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 5146
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 5148
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 5150
    :pswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 5152
    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    .line 5154
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 5156
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    .line 5158
    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    .line 5160
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 5162
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 5164
    :pswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 5166
    :pswitch_e
    const/16 v0, 0xf

    goto :goto_0

    .line 5168
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 5138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 2920
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2921
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2924
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 2925
    .local v1, "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2926
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2929
    monitor-enter v1

    .line 2930
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2932
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2933
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2937
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2938
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 2937
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 2948
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 2949
    return-void
.end method

.method private setInternalDataEnabledForHtcCdmaMIPScreen(Z)Z
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    .line 5019
    const/4 v4, 0x0

    .line 5020
    .local v4, "result":Z
    const/4 v5, 0x0

    .line 5021
    .local v5, "tmp":Z
    const/4 v6, 0x0

    .line 5023
    .local v6, "tmp_new":Z
    iget-object v7, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v7, :cond_0

    .line 5025
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 5026
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    const-string v7, "com.android.internal.telephony.cdma.CDMAPhone"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5027
    .local v1, "cls":Ljava/lang/Class;
    const-string v7, "ignoreAllMIPError"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 5028
    .local v3, "fld":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 5029
    if-nez p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 5030
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 5031
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v7, :cond_0

    .line 5032
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5037
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    const-string v7, "HtcTelephonyInternal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInternalDataEnabledForHtcCdmaMIPScreen("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",ignoreAllMIPError: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    return v4

    .line 5029
    .restart local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v1    # "cls":Ljava/lang/Class;
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 5033
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 5034
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setTimeZone(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 5105
    if-eqz p1, :cond_0

    .line 5106
    const-string v2, "sign"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5107
    .local v1, "sign":Z
    const-string v2, "offset"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5108
    .local v0, "offset":I
    if-eq v4, v0, :cond_0

    .line 5109
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setTimeZone(ZI)V

    .line 5112
    .end local v0    # "offset":I
    .end local v1    # "sign":Z
    :cond_0
    return-void
.end method

.method private setTimeZone(ZI)V
    .locals 5
    .param p1, "sign"    # Z
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 5115
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5116
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 5117
    .local v1, "commands":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "UNIAT"

    aput-object v3, v1, v2

    .line 5118
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5119
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "at@settimezone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5120
    if-eqz p1, :cond_1

    .line 5121
    const-string v2, "1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5126
    :goto_0
    if-gez p2, :cond_0

    .line 5127
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 5130
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5131
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5132
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5133
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 5134
    return-void

    .line 5123
    :cond_1
    const-string v2, "0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private sprintSignatureCheck()Z
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 5375
    const/4 v8, 0x0

    .line 5376
    .local v8, "result":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5377
    .local v9, "uid":I
    const/4 v5, 0x0

    .line 5378
    .local v5, "packages":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v10, :cond_0

    .line 5379
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    .line 5380
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5385
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v10, :cond_3

    .line 5386
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 5390
    :cond_1
    :goto_1
    if-eqz v5, :cond_6

    array-length v10, v5

    if-lez v10, :cond_6

    .line 5391
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_4

    .line 5392
    const-string v10, "HtcTelephonyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Packages with UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v6, v1, v3

    .line 5394
    .local v6, "pkg":Ljava/lang/String;
    const-string v10, "HtcTelephonyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5382
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "HtcTelephonyInternal"

    const-string v11, "sprintSignatureCheck(): mContext is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5388
    :cond_3
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_1

    const-string v10, "HtcTelephonyInternal"

    const-string v11, "sprintSignatureCheck(): mPackageManager is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5399
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v11, v5, v13

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 5400
    .local v7, "pkgSignatures":[Landroid/content/pm/Signature;
    if-eqz v7, :cond_6

    array-length v10, v7

    if-lez v10, :cond_6

    .line 5403
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    if-nez v10, :cond_5

    .line 5404
    const-string v10, "com.sprint.internal.Platform"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "htcCheckCompatibility"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, [Landroid/content/pm/Signature;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    .line 5407
    :cond_5
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    .line 5408
    .local v0, "arglist":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object v7, v0, v10

    .line 5409
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 5416
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v7    # "pkgSignatures":[Landroid/content/pm/Signature;
    :cond_6
    :goto_3
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_7

    .line 5417
    const-string v10, "HtcTelephonyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sprintSignatureCheck() result with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    :cond_7
    return v8

    .line 5410
    .restart local v7    # "pkgSignatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 5411
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_8

    const-string v10, "HtcTelephonyInternal"

    const-string v11, "sprintSignatureCheck(): htcCheckCompatibility exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5412
    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    .line 3774
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3776
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3777
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", autn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    const/4 v1, 0x0

    .line 3786
    :goto_0
    return-object v1

    .line 3780
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3781
    .local v0, "argument":Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3782
    const-string v2, "autn"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3784
    const/16 v2, 0xaf

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3786
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3640
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3642
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3643
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    :goto_0
    return-object v1

    .line 3647
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3649
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3658
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3660
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3661
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    :goto_0
    return-object v1

    .line 3665
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3667
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .param p1, "nafId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3676
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3678
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3679
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :goto_0
    return-object v1

    .line 3683
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3685
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 3
    .param p1, "channel"    # I

    .prologue
    .line 3476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 3477
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3479
    :cond_0
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3482
    .local v0, "err":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 3483
    const/4 v1, 0x1

    .line 3485
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 3194
    return-void
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    .line 4897
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4899
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 4900
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->enablePS_W2G_Handover(ILandroid/os/Message;)V

    .line 4902
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 4156
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 4159
    if-eqz p1, :cond_0

    .line 4164
    :cond_0
    return-void

    .line 4157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 3199
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3203
    :goto_0
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-void

    .line 3200
    :catch_0
    move-exception v0

    .line 3201
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 35
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4259
    const/16 v21, 0x0

    .line 4260
    .local v21, "recheckPermissionForSprint":Z
    const/16 v26, 0x0

    .line 4262
    .local v26, "sprintSignatureCheckResult":Z
    :try_start_0
    const-string v31, "getPdnSettings2"

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 4263
    const/16 v21, 0x1

    .line 4265
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4281
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    const-string v31, "RIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 4283
    :try_start_1
    const-string v31, "com.android.internal.telephony.HtcRilExtendApi"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 4284
    .local v5, "cls":Ljava/lang/Class;
    const-string v31, "getDefault"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Lcom/android/internal/telephony/Phone;

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 4285
    .local v9, "getDefault":Ljava/lang/reflect/Method;
    const-string v31, "rilFunctionMappingTable"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Landroid/os/Bundle;

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 4286
    .local v23, "rilFunctionMappingTable":Ljava/lang/reflect/Method;
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p2, v32, v33

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v3, v31

    .line 4645
    .end local v5    # "cls":Ljava/lang/Class;
    .end local v9    # "getDefault":Ljava/lang/reflect/Method;
    .end local v23    # "rilFunctionMappingTable":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    return-object v3

    .line 4267
    :catch_0
    move-exception v7

    .line 4268
    .local v7, "e":Ljava/lang/SecurityException;
    if-eqz v21, :cond_3

    .line 4269
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sprintSignatureCheck()Z

    move-result v26

    .line 4270
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_3

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "generalGetter(): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", result="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_3
    if-nez v26, :cond_1

    .line 4273
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 4275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4287
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 4288
    .local v8, "ex":Ljava/lang/Exception;
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "generalGetter RIL : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4289
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4290
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    .line 4295
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 4296
    .local v16, "mapResult":Ljava/lang/Integer;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4297
    .local v3, "bundleResult":Landroid/os/Bundle;
    const/16 v29, 0x0

    .line 4298
    .local v29, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v16, :cond_25

    .line 4300
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sparse-switch v31, :sswitch_data_0

    .line 4639
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4304
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    :sswitch_0
    if-nez v26, :cond_5

    .line 4305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    :cond_5
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 4642
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    goto/16 :goto_1

    .line 4373
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4377
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4378
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_CELL_LOCATION_BY_SLOT"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    const-string v31, "slot"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 4380
    .local v15, "mSlotId":I
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 4381
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_CELL_LOCATION_BY_SLOT, mSlotId= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    invoke-static {v15}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v30

    .line 4383
    .local v30, "targetPhone1":Lcom/android/internal/telephony/Phone;
    if-eqz v30, :cond_6

    .line 4384
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/android/internal/telephony/PhoneProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 4385
    check-cast v30, Lcom/android/internal/telephony/PhoneProxy;

    .end local v30    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v31

    check-cast v30, Lcom/android/internal/telephony/PhoneBase;

    .line 4388
    .restart local v30    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    :cond_6
    if-eqz v30, :cond_2

    move-object/from16 v31, v30

    .line 4389
    check-cast v31, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 4390
    .local v4, "cl":Landroid/telephony/CellLocation;
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_CELL_LOCATION_BY_SLOTmCellLoc="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4398
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    .end local v15    # "mSlotId":I
    .end local v30    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.ACCESS_NETWORK_STATE"

    const-string v33, "HtcTelephonyInternal"

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4403
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v25

    .line 4407
    .local v25, "roamingType":I
    const-string v31, "roamingType"

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4408
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_HTC_GET_CDMA_ERI_CALL_GUARD:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4414
    .end local v25    # "roamingType":I
    :sswitch_5
    const/4 v6, 0x0

    .line 4416
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v31, "com.android.internal.telephony.dataconnection.DcTracker"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v6

    .line 4419
    :goto_3
    const/16 v19, 0x0

    .line 4420
    .local v19, "mmdt":Ljava/lang/Object;
    if-eqz v6, :cond_7

    .line 4421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v19, v0

    .line 4423
    .end local v19    # "mmdt":Ljava/lang/Object;
    :cond_7
    if-eqz v19, :cond_8

    .line 4424
    const/16 v17, 0x0

    .line 4426
    .local v17, "methodReset":Ljava/lang/reflect/Method;
    :try_start_3
    const-string v32, "onResetToDefaultforApnSetting"

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 4427
    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4432
    .end local v17    # "methodReset":Ljava/lang/reflect/Method;
    :cond_8
    :goto_4
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4428
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    .restart local v17    # "methodReset":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v7

    .line 4429
    .local v7, "e":Ljava/lang/Exception;
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onResetToDefaultforApnSetting Fail: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4436
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v17    # "methodReset":Ljava/lang/reflect/Method;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4437
    const/16 v18, 0x0

    .line 4440
    .local v18, "method_radioTech":Ljava/lang/reflect/Method;
    :try_start_4
    const-class v32, Landroid/telephony/ServiceState;

    const-string v33, "getRilRadioTechnology"

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 4441
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_9

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "getRilRadioTechnology() existed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4446
    :cond_9
    :goto_5
    if-nez v18, :cond_a

    .line 4448
    :try_start_5
    const-class v32, Landroid/telephony/ServiceState;

    const-string v33, "getRilDataRadioTechnology"

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 4449
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_a

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "getRilDataRadioTechnology() existed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 4455
    :cond_a
    :goto_6
    if-eqz v18, :cond_2

    .line 4457
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 4458
    .local v24, "rilRadioTech":I
    const-string v31, "getRilRadioTechnology"

    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4459
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_RIL_RADIO_TECHNOLOGY:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 4460
    .end local v24    # "rilRadioTech":I
    :catch_3
    move-exception v7

    .line 4461
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_RIL_RADIO_TECHNOLOGY exception"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 4442
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 4443
    .restart local v7    # "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto :goto_5

    .line 4450
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 4451
    .restart local v7    # "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto :goto_6

    .line 4469
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v18    # "method_radioTech":Ljava/lang/reflect/Method;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    const/4 v14, 0x0

    .line 4471
    .local v14, "isImsPhoneIdle":Z
    const-string v31, "isImsPhoneIdle"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4472
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_IMS_PHONE_IDLE:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4477
    .end local v14    # "isImsPhoneIdle":Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4478
    const/4 v13, 0x1

    .line 4479
    .local v13, "isAutoSelection":Z
    if-eqz p2, :cond_b

    .line 4482
    :cond_b
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_c

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_NETWORK_SELECTION_MODE = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    :cond_c
    const-string v31, "isAutoNetworkSelectionMode"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4488
    .end local v13    # "isAutoSelection":Z
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4489
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->internalGetMobileDataOverallState(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4495
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4496
    const-string v31, "status"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4500
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4501
    const/16 v31, 0x6fc

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Bundle;

    .local v22, "result":Landroid/os/Bundle;
    move-object/from16 v3, v22

    .line 4502
    goto/16 :goto_1

    .line 4505
    .end local v22    # "result":Landroid/os/Bundle;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4506
    const/16 v31, 0x6fe

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Bundle;

    .restart local v22    # "result":Landroid/os/Bundle;
    move-object/from16 v3, v22

    .line 4507
    goto/16 :goto_1

    .line 4510
    .end local v22    # "result":Landroid/os/Bundle;
    :sswitch_d
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_d

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_IS_CT_DUAL_CARD_INSERTED"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4513
    const/4 v10, 0x0

    .line 4514
    .local v10, "icCTDualCardInserted":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4515
    if-eqz v29, :cond_10

    .line 4516
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_f

    .line 4517
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 4518
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_e

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    :cond_e
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCTDualCard()Z

    move-result v10

    .line 4522
    :cond_f
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_CT_DUAL_CARD_INSERTED = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    const-string v31, "isCTDualCardInserted"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4525
    :cond_10
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4526
    const-string v31, "isCTDualCardInserted"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4532
    .end local v10    # "icCTDualCardInserted":Z
    :sswitch_e
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_11

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_IS_DUAL_CARD_INSERTED"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    const/4 v12, 0x0

    .line 4536
    .local v12, "icDualCardInserted":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4537
    if-eqz v29, :cond_14

    .line 4538
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_13

    .line 4539
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_13

    .line 4540
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_12

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4541
    :cond_12
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isDualCard()Z

    move-result v12

    .line 4544
    :cond_13
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_DUAL_CARD_INSERTED = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    const-string v31, "isDualCardInserted"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4547
    :cond_14
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const-string v31, "isDualCardInserted"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4555
    .end local v12    # "icDualCardInserted":Z
    :sswitch_f
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_15

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_IS_CT_LTE_SIM_CARD"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    const/4 v11, 0x0

    .line 4558
    .local v11, "icCTLteSimCard":Z
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4559
    if-eqz v29, :cond_18

    .line 4560
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 4561
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_17

    .line 4562
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_16

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    :cond_16
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCTLTESIMCard()Z

    move-result v11

    .line 4566
    :cond_17
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_CT_LTE_SIM_CARD = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    const-string v31, "isCTLTESIMCard"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4570
    :cond_18
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    const-string v31, "isCTLTESIMCard"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4577
    .end local v11    # "icCTLteSimCard":Z
    :sswitch_10
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_19

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_DETAIL_ICC_STATUS"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4580
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 4581
    .local v20, "pinRetry":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4582
    if-eqz v29, :cond_1c

    .line 4583
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_1b

    .line 4584
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    .line 4585
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_1a

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4586
    :cond_1a
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v20

    .line 4589
    :cond_1b
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_DETAIL_ICC_STATUS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget v33, v20, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget v33, v20, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x2

    aget v33, v20, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3

    aget v33, v20, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    const-string v31, "getDetailIccStatus"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 4593
    :cond_1c
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    const-string v31, "getDetailIccStatus"

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 4600
    .end local v20    # "pinRetry":[I
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4601
    const-string v32, "getO2SimCardType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v31

    :goto_7
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1d
    const/16 v31, 0x0

    goto :goto_7

    .line 4607
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4609
    const-string v31, "getCFUNumber"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4615
    :sswitch_13
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_1e

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_HTC_REQUEST_GET_SUBSIDY_LOCK_TYPES"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4617
    if-eqz v29, :cond_20

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_20

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_20

    .line 4618
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock()I

    move-result v28

    .line 4619
    .local v28, "subsidylocktype":I
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_1f

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Subsidy lock types = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    :cond_1f
    const-string v31, "getSubsidyLockTypes"

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4622
    .end local v28    # "subsidylocktype":I
    :cond_20
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "can not get susbidy lock types due to targetPhone is null."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    const-string v31, "getSubsidyLockTypes"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4629
    :sswitch_14
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_21

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_RADIO_ON_STATE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4631
    if-eqz v29, :cond_24

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_23

    const/16 v27, 0x1

    .line 4633
    .local v27, "state":Z
    :goto_8
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_22

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "radio state = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    :cond_22
    const-string v31, "isRadioOn"

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4631
    .end local v27    # "state":Z
    :cond_23
    const/16 v27, 0x0

    goto :goto_8

    :cond_24
    const/16 v27, 0x0

    goto :goto_8

    .line 4645
    :cond_25
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4417
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    .restart local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_6
    move-exception v31

    goto/16 :goto_3

    .line 4300
    nop

    :sswitch_data_0
    .sparse-switch
        0xab -> :sswitch_1
        0xad -> :sswitch_3
        0xb1 -> :sswitch_1
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0xcd -> :sswitch_1
        0xce -> :sswitch_1
        0xd7 -> :sswitch_1
        0xd9 -> :sswitch_1
        0x6b0 -> :sswitch_1
        0x6b2 -> :sswitch_1
        0x6b4 -> :sswitch_1
        0x6b8 -> :sswitch_4
        0x6b9 -> :sswitch_1
        0x6bc -> :sswitch_1
        0x6bd -> :sswitch_1
        0x6be -> :sswitch_1
        0x6c2 -> :sswitch_1
        0x6c3 -> :sswitch_1
        0x6c4 -> :sswitch_1
        0x6cc -> :sswitch_5
        0x6cf -> :sswitch_6
        0x6d0 -> :sswitch_7
        0x6d7 -> :sswitch_1
        0x6dd -> :sswitch_d
        0x6e3 -> :sswitch_8
        0x6e4 -> :sswitch_1
        0x6e8 -> :sswitch_9
        0x6e9 -> :sswitch_1
        0x6ed -> :sswitch_a
        0x6f4 -> :sswitch_0
        0x6fc -> :sswitch_b
        0x6fd -> :sswitch_f
        0x6fe -> :sswitch_c
        0x6ff -> :sswitch_10
        0x709 -> :sswitch_1
        0x70a -> :sswitch_1
        0x70b -> :sswitch_1
        0x70c -> :sswitch_1
        0x70d -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_1
        0x7d9 -> :sswitch_1
        0x7db -> :sswitch_1
        0x7e0 -> :sswitch_11
        0x7e1 -> :sswitch_12
        0x7e3 -> :sswitch_13
        0x7e6 -> :sswitch_1
        0x7e8 -> :sswitch_e
        0x7ea -> :sswitch_2
        0x7ed -> :sswitch_14
    .end sparse-switch
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 18
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4651
    const/4 v7, 0x0

    .line 4652
    .local v7, "recheckPermissionForSprint":Z
    const/4 v8, 0x0

    .line 4654
    .local v8, "sprintSignatureCheckResult":Z
    :try_start_0
    const-string v15, "setPdnSettings2"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 4655
    const/4 v7, 0x1

    .line 4659
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4671
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4672
    .local v4, "mapResult":Ljava/lang/Integer;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4673
    .local v2, "bundleResult":Landroid/os/Bundle;
    if-eqz v4, :cond_11

    .line 4675
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    .line 4846
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 4852
    :goto_1
    return-object v15

    .line 4656
    .end local v2    # "bundleResult":Landroid/os/Bundle;
    .end local v4    # "mapResult":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    const-string v15, "resetPdnForSettingsChange2"

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    if-eqz v15, :cond_0

    .line 4657
    const/4 v7, 0x1

    goto :goto_0

    .line 4660
    :catch_0
    move-exception v3

    .line 4661
    .local v3, "e":Ljava/lang/SecurityException;
    if-eqz v7, :cond_3

    .line 4662
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sprintSignatureCheck()Z

    move-result v8

    .line 4663
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_3

    const-string v15, "HtcTelephonyInternal"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "generalSetter(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", result="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    :cond_3
    if-nez v8, :cond_1

    .line 4666
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 4667
    throw v3

    .line 4680
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "bundleResult":Landroid/os/Bundle;
    .restart local v4    # "mapResult":Ljava/lang/Integer;
    :sswitch_0
    if-nez v8, :cond_4

    .line 4681
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.MODIFY_PHONE_STATE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4848
    :cond_4
    :goto_2
    :sswitch_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bundleResult":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "bundleResult":Landroid/os/Bundle;
    move-object v15, v2

    .line 4849
    goto :goto_1

    .line 4726
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.MODIFY_PHONE_STATE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4731
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.MODIFY_PHONE_STATE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v15, :cond_5

    .line 4733
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->sendUserTrialFeedback(Landroid/os/Message;)V

    .line 4735
    :cond_5
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4740
    :sswitch_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const/16 v16, 0x2703

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const/16 v16, 0x3e9

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 4743
    new-instance v15, Ljava/lang/SecurityException;

    const-string v16, "Only Smartcard API may access UICC"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 4749
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.MODIFY_PHONE_STATE"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4768
    :sswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setTimeZone(Landroid/os/Bundle;)V

    .line 4769
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4773
    :sswitch_7
    const-string v15, "keyCode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 4774
    .local v14, "type":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/HtcTelephonyInternal;->notifyKeyEvent(I)V

    move-object v15, v2

    .line 4775
    goto/16 :goto_1

    .line 4779
    .end local v14    # "type":I
    :sswitch_8
    const-string v15, "HtcTelephonyInternal"

    const-string v16, "CMD_CDMA_EXIT_RADIO_POWER_SAVE_MODE"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v15, :cond_6

    .line 4782
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    :cond_6
    move-object v15, v2

    .line 4784
    goto/16 :goto_1

    .line 4788
    :sswitch_9
    const-string v15, "HtcTelephonyInternal"

    const-string v16, "CMD_HTC_REQUEST_SUPPLY_SUBSIDY_LOCK_PIN"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    const/4 v9, 0x0

    .line 4790
    .local v9, "status":Z
    if-eqz p2, :cond_9

    .line 4791
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 4792
    .local v12, "targetPhone":Lcom/android/internal/telephony/Phone;
    const-string v15, "subsidylocktype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4793
    .local v10, "subsidylocktype":Ljava/lang/String;
    const-string v15, "subsidypin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4794
    .local v11, "subsidypin":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 4795
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/internal/telephony/HtcTelephonyInternal;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    .line 4802
    .end local v10    # "subsidylocktype":Ljava/lang/String;
    .end local v11    # "subsidypin":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_7
    :goto_3
    const-string v15, "status"

    invoke-virtual {v2, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v15, v2

    .line 4803
    goto/16 :goto_1

    .line 4797
    .restart local v10    # "subsidylocktype":Ljava/lang/String;
    .restart local v11    # "subsidypin":Ljava/lang/String;
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_8
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_7

    const-string v15, "HtcTelephonyInternal"

    const-string v16, "targetPhone is null, does not execute supplySubsidyLockPin()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4800
    .end local v10    # "subsidylocktype":Ljava/lang/String;
    .end local v11    # "subsidypin":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_9
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_7

    const-string v15, "HtcTelephonyInternal"

    const-string v16, "bundle is null, does not execute supplySubsidyLockPin()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4808
    .end local v9    # "status":Z
    :sswitch_a
    const-string v15, "HtcTelephonyInternal"

    const-string v16, "CMD_HTC_REQUEST_SUPPLY_SIM_PIN"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4809
    const/4 v9, 0x0

    .line 4810
    .restart local v9    # "status":Z
    if-eqz p2, :cond_d

    .line 4811
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 4812
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    const-string v15, "pin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4813
    .local v5, "pin":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x7e5

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const-string v15, "puk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4814
    .local v6, "puk":Ljava/lang/String;
    :goto_4
    if-eqz v12, :cond_c

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 4815
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v15}, Lcom/android/internal/telephony/HtcTelephonyInternal;->supplyPinPukReportResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IccCard;)Z

    move-result v9

    .line 4822
    .end local v5    # "pin":Ljava/lang/String;
    .end local v6    # "puk":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_a
    :goto_5
    const-string v15, "status"

    invoke-virtual {v2, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v15, v2

    .line 4823
    goto/16 :goto_1

    .line 4813
    .restart local v5    # "pin":Ljava/lang/String;
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 4817
    .restart local v6    # "puk":Ljava/lang/String;
    :cond_c
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_a

    const-string v15, "HtcTelephonyInternal"

    const-string v16, "targetPhone is null or targetPhone.getIccCard() is null, does not execute supplyPin() or supplyPuk()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4820
    .end local v5    # "pin":Ljava/lang/String;
    .end local v6    # "puk":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_d
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_a

    const-string v15, "HtcTelephonyInternal"

    const-string v16, "bundle is null, does not execute supplyPin() or supplyPuk()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4827
    .end local v9    # "status":Z
    :sswitch_b
    const-string v15, "HtcTelephonyInternal"

    const-string v16, "CMD_SET_RADIO_ON_BY_SLOT"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    const/4 v9, 0x0

    .line 4829
    .restart local v9    # "status":Z
    if-eqz p2, :cond_10

    .line 4830
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 4831
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    const-string v15, "turnOn"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 4832
    .local v13, "turnOn":Z
    if-eqz v12, :cond_f

    .line 4833
    invoke-interface {v12, v13}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 4834
    const/4 v9, 0x1

    .line 4841
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "turnOn":Z
    :cond_e
    :goto_6
    const-string v15, "status"

    invoke-virtual {v2, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v15, v2

    .line 4842
    goto/16 :goto_1

    .line 4836
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .restart local v13    # "turnOn":Z
    :cond_f
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_e

    const-string v15, "HtcTelephonyInternal"

    const-string v16, "targetPhone is null or targetPhone.getIccCard() is null, does not execute supplyPin() or supplyPuk()"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4839
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "turnOn":Z
    :cond_10
    sget-boolean v15, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v15, :cond_e

    const-string v15, "HtcTelephonyInternal"

    const-string v16, "bundle is null, does not execute setRadioBySlotId()."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4852
    .end local v9    # "status":Z
    :cond_11
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4675
    nop

    :sswitch_data_0
    .sparse-switch
        0xd6 -> :sswitch_2
        0xdb -> :sswitch_2
        0x6ae -> :sswitch_2
        0x6b6 -> :sswitch_2
        0x6bb -> :sswitch_3
        0x6c0 -> :sswitch_2
        0x6c9 -> :sswitch_2
        0x6cd -> :sswitch_4
        0x6e1 -> :sswitch_2
        0x6e5 -> :sswitch_2
        0x6e7 -> :sswitch_5
        0x6eb -> :sswitch_2
        0x6ee -> :sswitch_2
        0x6f0 -> :sswitch_2
        0x6f6 -> :sswitch_0
        0x6f8 -> :sswitch_0
        0x6f9 -> :sswitch_1
        0x6fa -> :sswitch_2
        0x6fb -> :sswitch_6
        0x7d1 -> :sswitch_7
        0x7d2 -> :sswitch_8
        0x7d7 -> :sswitch_2
        0x7dd -> :sswitch_2
        0x7de -> :sswitch_2
        0x7df -> :sswitch_2
        0x7e2 -> :sswitch_9
        0x7e4 -> :sswitch_a
        0x7e5 -> :sswitch_a
        0x7ee -> :sswitch_b
    .end sparse-switch
.end method

.method public getCallStateExtInternal(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 4185
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3982
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    .line 4873
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4876
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method public getDrxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4907
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4909
    const/16 v2, 0xad

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4910
    .local v0, "returnResult":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 4913
    .end local v0    # "returnResult":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "returnResult":Ljava/lang/Object;
    :cond_0
    check-cast v0, [I

    .end local v0    # "returnResult":Ljava/lang/Object;
    check-cast v0, [I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3969
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3812
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3815
    :cond_0
    return v3
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3846
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    const-string v0, ""

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3922
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    const-string v0, ""

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    const-string v0, ""

    return-object v0
.end method

.method public getHtcServiceStateExtInternal(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 4195
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    const-string v0, ""

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3953
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3954
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3937
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3939
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 3495
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3496
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return v0
.end method

.method public getNetworkTypeExtInternal(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 4175
    const/4 v0, 0x0

    return v0
.end method

.method public getOpenChannelResponseData()[B
    .locals 2

    .prologue
    .line 3458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 3459
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    return-object v0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4921
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4924
    const/16 v2, 0xb1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4926
    .local v0, "returnResult":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4927
    const-string v1, "getPowerInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 4929
    :cond_0
    return-object v1
.end method

.method public getScreenBusyState()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4071
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4073
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4074
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4077
    :cond_0
    return v1
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .param p1, "requestedNetworkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3619
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3621
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 3622
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3628
    :goto_0
    return-object v0

    .line 3626
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3628
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public gsmAuthentication([B)Landroid/os/Bundle;
    .locals 5
    .param p1, "rand"    # [B

    .prologue
    .line 3792
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3794
    if-nez p1, :cond_0

    .line 3795
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    const/4 v1, 0x0

    .line 3803
    :goto_0
    return-object v1

    .line 3798
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3799
    .local v0, "argument":Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3801
    const/16 v2, 0xb3

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3803
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCatServiceReady()Z
    .locals 2

    .prologue
    .line 4134
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4136
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4137
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4138
    const/4 v1, 0x1

    .line 4140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyKeyEvent(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 4058
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4060
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4061
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4063
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 4065
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 1
    .param p1, "busy"    # Z

    .prologue
    .line 4037
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4039
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4040
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4044
    :cond_0
    return-void
.end method

.method public onCmdResponse(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4085
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4098
    return-void
.end method

.method public onHandleEventList(IZ)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 4105
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4107
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4108
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4111
    :cond_0
    return-void
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 4118
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4127
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 3432
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3435
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    .line 3437
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3439
    .local v0, "channel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public openIccLogicalChannelExt(Ljava/lang/String;)I
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3444
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 3445
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3448
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    .line 3450
    const/16 v1, 0x6ca

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3452
    .local v0, "channel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3235
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3320
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3259
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3332
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3295
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randu"    # Ljava/lang/String;

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestConfigLocProcessDB(IIII)Z
    .locals 6
    .param p1, "enable"    # I
    .param p2, "num_neighbor_pilot"    # I
    .param p3, "num_record"    # I
    .param p4, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 4239
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "HtcTelephonyInternal"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4243
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Integer;

    .line 4244
    .local v0, "para":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4245
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4246
    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4247
    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4248
    const/16 v3, 0x9e

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4249
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3580
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3582
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetCurrentLoc()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4230
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    const/16 v2, 0x9c

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4234
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 3547
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3549
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 3558
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3560
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3591
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3593
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phonetype"    # Ljava/lang/String;

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 3569
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3571
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4858
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4862
    const/16 v2, 0xa0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4863
    .local v0, "returnResult":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 4866
    .end local v0    # "returnResult":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "returnResult":Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0    # "returnResult":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3600
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3602
    if-nez p1, :cond_0

    .line 3603
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :goto_0
    return-object v0

    .line 3607
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3608
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3612
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3614
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 1

    .prologue
    .line 3996
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3998
    const/4 v0, 0x0

    return v0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chapid"    # Ljava/lang/String;
    .param p2, "chapchallengelength"    # Ljava/lang/String;
    .param p3, "chpachallenge"    # Ljava/lang/String;

    .prologue
    .line 3307
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3308
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 3309
    .local v0, "paraMD5":[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randssd"    # Ljava/lang/String;

    .prologue
    .line 3247
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "authbs"    # Ljava/lang/String;

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSetLocProcessDB(IIIIII[I)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "rat"    # I
    .param p3, "sid"    # I
    .param p4, "nid"    # I
    .param p5, "base_id"    # I
    .param p6, "pilot_pn"    # I
    .param p7, "neighbor_pilot_list"    # [I

    .prologue
    .line 4212
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4217
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4218
    const-string v2, "rat"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4219
    const-string v2, "sid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4220
    const-string v2, "nid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4221
    const-string v2, "base_id"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4222
    const-string v2, "pilot_pn"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4223
    const-string v2, "neighbor_pilot_list"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4224
    const/16 v2, 0x9a

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4225
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3283
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requesttClearLocProcessDB()Z
    .locals 4

    .prologue
    .line 4202
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "HtcTelephonyInternal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4205
    const/16 v1, 0x98

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4206
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 4882
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4885
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 4886
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 4891
    :cond_0
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 3695
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3697
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3698
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    :goto_0
    return-void

    .line 3701
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 3702
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 3703
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 3705
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3707
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 3708
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 3709
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 3711
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "activePhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3365
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3366
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    const/4 v0, 0x0

    return v0
.end method

.method public setUserDataEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4008
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPinPukReportResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IccCard;)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "icccard"    # Lcom/android/internal/telephony/IccCard;

    .prologue
    const/4 v2, 0x0

    .line 5271
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 5272
    .local v0, "checkSimPinPuk":Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->start()V

    .line 5273
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 5274
    .local v1, "resultArray":[I
    aget v3, v1, v2

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 5193
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 5194
    .local v0, "checkSubsidyLockPin":Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->start()V

    .line 5195
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->checkSubsidyPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 3412
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3422
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 12
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 3503
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3505
    :cond_0
    const/16 v11, 0x96

    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    const/4 v3, -0x1

    move v1, p1

    move v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 3508
    .local v9, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v10, 0x0

    .line 3509
    .local v10, "result":[B
    const/4 v8, 0x2

    .line 3510
    .local v8, "length":I
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    .line 3511
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v0, v0

    add-int/lit8 v8, v0, 0x2

    .line 3512
    new-array v10, v8, [B

    .line 3513
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v3, v3

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3518
    :goto_0
    add-int/lit8 v0, v8, -0x1

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 3519
    add-int/lit8 v0, v8, -0x2

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 3520
    return-object v10

    .line 3515
    :cond_1
    new-array v10, v8, [B

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "expire"    # I

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "streamId"    # Ljava/lang/String;

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    return-void
.end method
