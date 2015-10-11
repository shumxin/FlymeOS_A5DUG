.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;,
        Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    }
.end annotation


# static fields
.field private static final AKAPrefix:Ljava/lang/String; = "AKA-"

.field private static final AKAPrefixLen:I

.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field public static final ASSOCIATED_WITH_EVENT:I = 0x2402c

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field public static final ASSOCIATION_REJECTION_WITH_EVENT:I = 0x2402d

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field private static final ASSOC_WITH_STR:Ljava/lang/String; = "Associated with"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final BASE:I = 0x24000

.field public static final BLACKLIST_EVENT:I = 0x2406f

.field private static final BLACKLIST_STR:Ljava/lang/String; = "BLACKLIST"

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field public static final CMCC_REMINDER_EVENT:I = 0x2406e

.field private static final CMCC_REMINDER_STR:Ljava/lang/String; = "CMCC_REMINDER"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field public static final DRIVER_STARTED_EVENT:I = 0x24065

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field public static final EVENT_AKA_INVALID_SIM:I = 0x2406b

.field public static final EVENT_GET_AUTHENTICATION:I = 0x2406a

.field public static final EVENT_GET_CUSTOMIZATION:I = 0x24069

.field public static final EVENT_GET_IDENTITY:I = 0x24068

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_EVENT:I = 0x2403e

.field private static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field public static final HS20_NETWORK_EVENT:I = 0x24071

.field private static final HS20_NETWORK_STR:Ljava/lang/String; = "HS20_network_changed"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field private static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field private static final HTC_BASE:I = 0x64

.field public static final HTC_DHCP_RENEW:I = 0x24070

.field public static final HTC_IDPW_EVENT:I = 0x2406d

.field public static final HTC_NETWORK_PROBLEM_EVENT:I = 0x2406c

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NETWORK_DISCONNECTION_WITH_EVENT:I = 0x2402e

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_REMOVE_AND_REFORM_GROUP_EVENT:I = 0x24028

.field private static final P2P_REMOVE_AND_REFORM_GROUP_STR:Ljava/lang/String; = "P2P-REMOVE-AND-REFORM-GROUP"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final PASSWORD_STR:Ljava/lang/String; = "PASSWORD"

.field public static final PERF_LOCK_EVENT:I = 0x24066

.field private static final PERF_LOCK_STR:Ljava/lang/String; = "PERF_LOCK"

.field public static final PERF_UNLOCK_EVENT:I = 0x24067

.field private static final PERF_UNLOCK_STR:Ljava/lang/String; = "PERF_UNLOCK"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final ReqPrefix:Ljava/lang/String; = "CTRL-REQ-"

.field private static final ReqPrefixLen:I

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final TX_FAIL_NOTIFICATION:Ljava/lang/String; = "TX_FAIL_NOTIFICATION"

.field private static final UNKNOWN:I = 0xe

.field private static final VDBG:Z = false

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static bssidPattern:Ljava/util/regex/Pattern; = null

.field private static eventLogCounter:I = 0x0

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern; = null

.field private static mAssociatedPattern:Ljava/util/regex/Pattern; = null

.field private static mCheck_Time:J = 0x0L

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern; = null

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern; = null

.field private static mHangedEventCounter:I = 0x0

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern; = null

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern; = null

.field private static mRequestPasswordPattern:Ljava/util/regex/Pattern; = null

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern; = null

.field private static macPattern:Ljava/util/regex/Pattern; = null

.field private static sRecvErrors:I = 0x0

.field private static ssidPattern:Ljava/util/regex/Pattern; = null

.field private static ssidRecord:Ljava/lang/String; = null

.field private static final szAkaInvalidSimEvent:Ljava/lang/String; = "INVALID-SIM"

.field private static final szReqAuthAkaEvent:Ljava/lang/String; = "AUTH_AKA-"

.field private static final szReqAuthGsmEvent:Ljava/lang/String; = "AUTH_SIM-"

.field private static final szReqIdCustmEvent:Ljava/lang/String; = "CUSTOMIZATION-"

.field private static final szReqIdSimEvent:Ljava/lang/String; = "IDENTITY_SIM-"


# instance fields
.field private bLFR:Z

.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStateMachine2:Lcom/android/internal/util/StateMachine;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private prevSupplicantState:Landroid/net/wifi/SupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->ssidRecord:Ljava/lang/String;

    .line 90
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 95
    const-string v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->ReqPrefixLen:I

    .line 105
    const-string v0, "AKA-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->AKAPrefixLen:I

    .line 128
    const-string v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    .line 160
    const-string v0, "RX-HS20-ANQP-ICON"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    .line 177
    sput v2, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 289
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    .line 299
    const-string v0, "bssid=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->bssidPattern:Ljava/util/regex/Pattern;

    .line 307
    const-string v0, " SSID=(.*)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->ssidPattern:Ljava/util/regex/Pattern;

    .line 310
    const-string v0, ".*((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->macPattern:Ljava/util/regex/Pattern;

    .line 321
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    .line 330
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    .line 341
    const-string v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    .line 351
    const-string v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    .line 365
    const-string v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    .line 373
    const-string v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    .line 377
    const-string v0, "PASSWORD-([0-9]+):Password needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    .line 676
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    .line 677
    sput v2, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 3
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v2, 0x0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->prevSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 670
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->bLFR:Z

    .line 700
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMonitor"

    const-string v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 702
    iget-object v0, p2, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    .line 703
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    .line 705
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    .line 707
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V

    .line 708
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 32
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 929
    sget-boolean v28, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v28, :cond_0

    .line 931
    if-eqz p1, :cond_0

    const-string v28, "CTRL-EVENT-BSS-ADDED"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 932
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "WifiMonitor:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " cnt="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " dispatchEvent: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 939
    :cond_0
    const-string v28, "AKA-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 940
    sget v28, Lcom/android/server/wifi/WifiMonitor;->AKAPrefixLen:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 942
    .local v15, "eventName0":Ljava/lang/String;
    const-string v28, "INVALID-SIM"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2406b

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 947
    .end local v15    # "eventName0":Ljava/lang/String;
    :cond_1
    const-string v28, "CTRL-REQ-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 949
    sget v28, Lcom/android/server/wifi/WifiMonitor;->ReqPrefixLen:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 952
    .restart local v15    # "eventName0":Ljava/lang/String;
    const/16 v24, -0x2

    .line 953
    .local v24, "netID":I
    const-string v28, "PASSWORD"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 954
    sget-object v28, Lcom/android/server/wifi/WifiMonitor;->mRequestPasswordPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 955
    .local v21, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 957
    const/16 v28, 0x1

    :try_start_0
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2406d

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 963
    const/16 v28, 0x0

    .line 1248
    .end local v15    # "eventName0":Ljava/lang/String;
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .end local v24    # "netID":I
    :goto_0
    return v28

    .line 958
    .restart local v15    # "eventName0":Ljava/lang/String;
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    .restart local v24    # "netID":I
    :catch_0
    move-exception v11

    .line 959
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/16 v24, -0x1

    .line 960
    const/16 v28, 0x0

    goto :goto_0

    .line 965
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v28, "WifiMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "didn\'t find SSID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .end local v21    # "match":Ljava/util/regex/Matcher;
    :cond_3
    :goto_1
    const/16 v28, 0x20

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    .line 985
    .local v23, "nameEnd0":I
    const/16 v28, 0x3a

    move/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 986
    .local v8, "MsgEnd":I
    move-object v6, v15

    .local v6, "MsgDetail":Ljava/lang/String;
    move-object v7, v6

    .line 987
    .local v7, "MsgDetail2":Ljava/lang/String;
    const/16 v28, -0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 988
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 989
    :cond_4
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_5

    .line 990
    const-string v28, "WifiMonitor"

    const-string v29, "[EAP-MSG] Received wpa_supplicant req with empty req name"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_5
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v8, v0, :cond_6

    .line 993
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 995
    :cond_6
    const-string v28, "AUTH_AKA-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    const-string v28, "AUTH_SIM-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 997
    const-string v28, "WifiMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[EAP-MSG] Req: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_7
    const-string v28, "IDENTITY_SIM-"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v29, v0

    const v30, 0x24068

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1012
    :goto_2
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 967
    .end local v6    # "MsgDetail":Ljava/lang/String;
    .end local v7    # "MsgDetail2":Ljava/lang/String;
    .end local v8    # "MsgEnd":I
    .end local v23    # "nameEnd0":I
    :cond_8
    const-string v28, "IDENTITY"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 968
    sget-object v28, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 969
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 971
    const/16 v28, 0x1

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2406d

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 977
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 972
    :catch_1
    move-exception v11

    .line 973
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/16 v24, -0x1

    .line 974
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 979
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const-string v28, "WifiMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "didn\'t find SSID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1002
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .restart local v6    # "MsgDetail":Ljava/lang/String;
    .restart local v7    # "MsgDetail2":Ljava/lang/String;
    .restart local v8    # "MsgEnd":I
    .restart local v23    # "nameEnd0":I
    :cond_a
    const-string v28, "CUSTOMIZATION-"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v29, v0

    const v30, 0x24069

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 1006
    :cond_b
    const-string v28, "AUTH_AKA-"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_c

    const-string v28, "AUTH_SIM-"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1008
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v29, v0

    const v30, 0x2406a

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 1011
    :cond_d
    const-string v28, "WifiMonitor"

    const-string v29, "[EAP-MSG] Unkown Req"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1016
    .end local v6    # "MsgDetail":Ljava/lang/String;
    .end local v7    # "MsgDetail2":Ljava/lang/String;
    .end local v8    # "MsgEnd":I
    .end local v15    # "eventName0":Ljava/lang/String;
    .end local v23    # "nameEnd0":I
    .end local v24    # "netID":I
    :cond_e
    const-string v28, "CTRL-EVENT-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_24

    .line 1017
    const-string v28, "WPA:"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    const-string v28, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-lez v28, :cond_10

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24007

    sget v30, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 1101
    :cond_f
    :goto_3
    sget v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1102
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1031
    :cond_10
    const-string v28, "WPS-SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24008

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_3

    .line 1033
    :cond_11
    const-string v28, "WPS-FAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 1034
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;)V

    goto :goto_3

    .line 1035
    :cond_12
    const-string v28, "WPS-OVERLAP-DETECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2400a

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_3

    .line 1037
    :cond_13
    const-string v28, "WPS-TIMEOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2400b

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_3

    .line 1039
    :cond_14
    const-string v28, "P2P"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 1040
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    goto :goto_3

    .line 1041
    :cond_15
    const-string v28, "AP"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 1042
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1045
    :cond_16
    const-string v28, "Associated with"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1046
    const-string v28, "WifiMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "WifiMonitor: Got associated with event from string: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedWithEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1050
    :cond_17
    const-string v28, "GAS-QUERY-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 1051
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleGasQueryEvents(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1052
    :cond_18
    const-string v28, "RX-HS20-ANQP-ICON"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24035

    sget v30, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1056
    :cond_19
    const-string v28, "HS20-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1057
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHs20Events(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1058
    :cond_1a
    const-string v28, "CTRL-REQ-"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 1059
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1060
    :cond_1b
    const-string v28, "Trying to associate with "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 1061
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1062
    :cond_1c
    const-string v28, "Associated with "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1063
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1065
    :cond_1d
    const-string v28, "PERF_LOCK"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v29, v0

    const v30, 0x24066

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1067
    :cond_1e
    const-string v28, "PERF_UNLOCK"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24067

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 1070
    :cond_1f
    const-string v28, "CMCC_REMINDER"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2406e

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 1074
    :cond_20
    const-string v28, "HS20_network_changed"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24071

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_3

    .line 1082
    :cond_21
    const-string v28, "BLACKLIST"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/server/wifi/WifiStateMachine;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1085
    const-string v28, "WifiMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NETWORK_SELECTION: received BLACKLIST event:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleBlacklistChange(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1089
    :cond_22
    const-string v28, "TX_FAIL_NOTIFICATION"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/server/wifi/WifiStateMachine;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1092
    const-string v28, "WifiMonitor"

    const-string v29, "received TX_FAIL_NOTIFICATION event"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-static {}, Lcom/android/server/wifi/WifiHtcOffload;->handleTxFailEvent()V

    goto/16 :goto_3

    .line 1099
    :cond_23
    sget-boolean v28, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v28, :cond_f

    const-string v28, "WifiMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "couldn\'t identify event type - "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1105
    :cond_24
    sget v28, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1106
    .local v14, "eventName":Ljava/lang/String;
    const/16 v28, 0x20

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    .line 1107
    .local v22, "nameEnd":I
    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_25

    .line 1108
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1109
    :cond_25
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v28

    if-nez v28, :cond_27

    .line 1110
    sget-boolean v28, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v28, :cond_26

    const-string v28, "WifiMonitor"

    const-string v29, "Received wpa_supplicant event with empty event name"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_26
    sget v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1112
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1118
    :cond_27
    const-string v28, "CONNECTED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 1119
    const/4 v12, 0x1

    .line 1148
    .local v12, "event":I
    :goto_4
    move-object/from16 v13, p1

    .line 1149
    .local v13, "eventData":Ljava/lang/String;
    const/16 v28, 0x7

    move/from16 v0, v28

    if-eq v12, v0, :cond_28

    const/16 v28, 0x5

    move/from16 v0, v28

    if-ne v12, v0, :cond_39

    .line 1150
    :cond_28
    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v13, v28, v29

    .line 1163
    :cond_29
    :goto_5
    const/16 v28, 0xa

    move/from16 v0, v28

    if-eq v12, v0, :cond_2a

    const/16 v28, 0xb

    move/from16 v0, v28

    if-ne v12, v0, :cond_40

    .line 1164
    :cond_2a
    const/16 v27, 0x0

    .line 1165
    .local v27, "substr":Ljava/lang/String;
    const/16 v25, -0x1

    .line 1166
    .local v25, "netId":I
    const-string v28, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 1167
    .local v18, "ind":I
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b

    .line 1168
    add-int/lit8 v28, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 1170
    :cond_2b
    if-eqz v27, :cond_3d

    .line 1171
    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1172
    .local v26, "status":[Ljava/lang/String;
    move-object/from16 v9, v26

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3d

    aget-object v19, v9, v16

    .line 1173
    .local v19, "key":Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "id="

    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v28

    if-eqz v28, :cond_3c

    .line 1174
    const/16 v17, 0x3

    .line 1175
    .local v17, "idx":I
    const/16 v25, 0x0

    .line 1176
    :goto_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_3c

    .line 1177
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1178
    .local v10, "c":C
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v10, v0, :cond_3c

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v10, v0, :cond_3c

    .line 1179
    mul-int/lit8 v25, v25, 0xa

    .line 1180
    add-int/lit8 v28, v10, -0x30

    add-int v25, v25, v28

    .line 1181
    add-int/lit8 v17, v17, 0x1

    .line 1185
    goto :goto_7

    .line 1120
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "c":C
    .end local v12    # "event":I
    .end local v13    # "eventData":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "idx":I
    .end local v18    # "ind":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "len$":I
    .end local v25    # "netId":I
    .end local v26    # "status":[Ljava/lang/String;
    .end local v27    # "substr":Ljava/lang/String;
    :cond_2c
    const-string v28, "DISCONNECTED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 1121
    const/4 v12, 0x2

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1122
    .end local v12    # "event":I
    :cond_2d
    const-string v28, "STATE-CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 1123
    const/4 v12, 0x3

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1124
    .end local v12    # "event":I
    :cond_2e
    const-string v28, "SCAN-RESULTS"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 1125
    const/4 v12, 0x4

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1126
    .end local v12    # "event":I
    :cond_2f
    const-string v28, "LINK-SPEED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_30

    .line 1127
    const/4 v12, 0x5

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1128
    .end local v12    # "event":I
    :cond_30
    const-string v28, "TERMINATING"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_31

    .line 1129
    const/4 v12, 0x6

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1130
    .end local v12    # "event":I
    :cond_31
    const-string v28, "DRIVER-STATE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_32

    .line 1131
    const/4 v12, 0x7

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1132
    .end local v12    # "event":I
    :cond_32
    const-string v28, "EAP-FAILURE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_33

    .line 1133
    const/16 v12, 0x8

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1134
    .end local v12    # "event":I
    :cond_33
    const-string v28, "ASSOC-REJECT"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 1135
    const/16 v12, 0x9

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1136
    .end local v12    # "event":I
    :cond_34
    const-string v28, "SSID-TEMP-DISABLED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 1137
    const/16 v12, 0xa

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1138
    .end local v12    # "event":I
    :cond_35
    const-string v28, "SSID-REENABLED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_36

    .line 1139
    const/16 v12, 0xb

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1140
    .end local v12    # "event":I
    :cond_36
    const-string v28, "BSS-ADDED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_37

    .line 1141
    const/16 v12, 0xc

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1142
    .end local v12    # "event":I
    :cond_37
    const-string v28, "BSS-REMOVED"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_38

    .line 1143
    const/16 v12, 0xd

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1146
    .end local v12    # "event":I
    :cond_38
    const/16 v12, 0xe

    .restart local v12    # "event":I
    goto/16 :goto_4

    .line 1151
    .restart local v13    # "eventData":Ljava/lang/String;
    :cond_39
    const/16 v28, 0x3

    move/from16 v0, v28

    if-eq v12, v0, :cond_3a

    const/16 v28, 0x8

    move/from16 v0, v28

    if-ne v12, v0, :cond_3b

    .line 1152
    :cond_3a
    const-string v28, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 1153
    .restart local v18    # "ind":I
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_29

    .line 1154
    add-int/lit8 v28, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1157
    .end local v18    # "ind":I
    :cond_3b
    const-string v28, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 1158
    .restart local v18    # "ind":I
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_29

    .line 1159
    add-int/lit8 v28, v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 1172
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "len$":I
    .restart local v25    # "netId":I
    .restart local v26    # "status":[Ljava/lang/String;
    .restart local v27    # "substr":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    .line 1189
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "len$":I
    .end local v26    # "status":[Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v29, v0

    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v12, v0, :cond_3f

    const v28, 0x2400d

    :goto_8
    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v28

    move/from16 v2, v25

    move/from16 v3, v30

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1246
    .end local v18    # "ind":I
    .end local v25    # "netId":I
    .end local v27    # "substr":Ljava/lang/String;
    :cond_3e
    :goto_9
    const/16 v28, 0x0

    sput v28, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    .line 1247
    sget v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1248
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1189
    .restart local v18    # "ind":I
    .restart local v25    # "netId":I
    .restart local v27    # "substr":Ljava/lang/String;
    :cond_3f
    const v28, 0x2400e

    goto :goto_8

    .line 1191
    .end local v18    # "ind":I
    .end local v25    # "netId":I
    .end local v27    # "substr":Ljava/lang/String;
    :cond_40
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v12, v0, :cond_41

    .line 1192
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;)V

    goto :goto_9

    .line 1193
    :cond_41
    const/16 v28, 0x7

    move/from16 v0, v28

    if-ne v12, v0, :cond_42

    .line 1194
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_9

    .line 1195
    :cond_42
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v12, v0, :cond_45

    .line 1200
    const-string v28, "recv error"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_43

    .line 1201
    sget v28, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_44

    .line 1202
    sget-boolean v28, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v28, :cond_43

    .line 1203
    const-string v28, "WifiMonitor"

    const-string v29, "too many recv errors, closing connection"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24002

    sget v30, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 1213
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1206
    :cond_44
    sget v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1207
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1214
    :cond_45
    const/16 v28, 0x8

    move/from16 v0, v28

    if-ne v12, v0, :cond_46

    .line 1215
    const-string v28, "EAP authentication failed"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 1216
    const-string v28, "WifiMonitor send auth failure (EAP_AUTH_FAILURE) "

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x24007

    sget v30, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto/16 :goto_9

    .line 1219
    :cond_46
    const/16 v28, 0x9

    move/from16 v0, v28

    if-ne v12, v0, :cond_49

    .line 1220
    sget-object v28, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 1221
    .restart local v21    # "match":Ljava/util/regex/Matcher;
    const-string v5, ""

    .line 1222
    .local v5, "BSSID":Ljava/lang/String;
    const/16 v26, -0x1

    .line 1223
    .local v26, "status":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v28

    if-nez v28, :cond_48

    .line 1224
    sget-boolean v28, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v28, :cond_47

    const-string v28, "WifiMonitor"

    const-string v29, "Assoc Reject: Could not parse assoc reject string"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_47
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wifi/WifiMonitor;->handleAssociateRejectEvent(Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v28, v0

    const v29, 0x2402b

    sget v30, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_9

    .line 1226
    :cond_48
    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1228
    const/16 v28, 0x2

    :try_start_2
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v26

    goto :goto_a

    .line 1229
    :catch_2
    move-exception v11

    .line 1230
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const/16 v26, -0x1

    goto :goto_a

    .line 1239
    .end local v5    # "BSSID":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v21    # "match":Ljava/util/regex/Matcher;
    .end local v26    # "status":I
    :cond_49
    const/16 v28, 0xc

    move/from16 v0, v28

    if-eq v12, v0, :cond_3e

    .line 1241
    const/16 v28, 0xd

    move/from16 v0, v28

    if-eq v12, v0, :cond_3e

    .line 1244
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_9
.end method

.method private getBSSIDFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1753
    const-string v2, "HTCRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiMonitor:getBSSIDFromString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->bssidPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1756
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1757
    const-string v2, "HTCRequest"

    const-string v3, "WifiMonitor:getBSSIDFromString Unable to find pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :goto_0
    return-object v0

    .line 1759
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1760
    const-string v2, "HTCRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiMonitor:getBSSIDFromString BSSID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFrequencyFromEventString(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1827
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getFrequencyFromString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v4, "freq=([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1831
    .local v2, "freqPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1832
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v1, -0x1

    .line 1834
    .local v1, "freq":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1836
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1837
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getFreqFromEventString() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :cond_0
    :goto_0
    return v1

    .line 1838
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HTCRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLocallyGeneratedInfoFromEventString(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1865
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getLocallyGeneratedInfoFromEventString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const-string v4, "locally_generated=([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1868
    .local v1, "localPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1870
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, -0x1

    .line 1872
    .local v2, "locallyGenerated":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1874
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1879
    :cond_0
    :goto_0
    return v2

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiMonitor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMacFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1777
    const-string v2, "HTCRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiMonitor:getMacFromString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const/4 v0, 0x0

    .line 1779
    .local v0, "mac":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->macPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1781
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1782
    const-string v2, "HTCRequest"

    const-string v3, "WifiMonitor:getMacFromString Unable to find pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :goto_0
    return-object v0

    .line 1784
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNetworkIdFromEventString(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1790
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getNetworkIdFromString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const-string v4, "id=([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1793
    .local v1, "idPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1794
    .local v2, "matcher":Ljava/util/regex/Matcher;
    const/4 v3, -0x1

    .line 1796
    .local v3, "networkId":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1797
    const-string v4, "HTCRequest"

    const-string v5, "WifiMonitor:getNetworkIdFromEventString()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1804
    :cond_0
    :goto_0
    return v3

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HTCRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getReasonFromEventString(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1808
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getReasonFromString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const-string v4, "reason=([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1812
    .local v3, "reasonPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1813
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, -0x1

    .line 1815
    .local v2, "reason":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1817
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1818
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getReasonFromEventString() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1823
    :cond_0
    :goto_0
    return v2

    .line 1819
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HTCRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSSIDFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1765
    const-string v2, "HTCRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiMonitor:getSSIDFromString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const-string v0, ""

    .line 1767
    .local v0, "SSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->ssidPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1768
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1769
    const-string v2, "HTCRequest"

    const-string v3, "WifiMonitor:getSSIDFromString Unable to find pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :goto_0
    return-object v0

    .line 1771
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getStatusCodeFromEventString(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1846
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getStatusCodeFromString "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    const-string v4, "status_code=([0-9]+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1849
    .local v3, "statusCodePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1850
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, -0x1

    .line 1852
    .local v2, "statusCode":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1854
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1855
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor:getStatusCodeFromEventString() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    :cond_0
    :goto_0
    return v2

    .line 1856
    :catch_0
    move-exception v0

    .line 1857
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HTCRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAssociateRejectEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1991
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getBSSIDFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, "BSSID":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getSSIDFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1994
    .local v3, "wifiSsid":Ljava/lang/String;
    const-string v4, ""

    if-ne v3, v4, :cond_0

    .line 1995
    sget-object v3, Lcom/android/server/wifi/WifiMonitor;->ssidRecord:Ljava/lang/String;

    .line 1998
    :cond_0
    const/4 v2, -0x1

    .line 2000
    .local v2, "networkId":I
    new-instance v1, Lcom/android/server/wifi/NetworkConnChangeResult;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/wifi/NetworkConnChangeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2001
    .local v1, "changeResult":Lcom/android/server/wifi/NetworkConnChangeResult;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getFrequencyFromEventString(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->freq:I

    .line 2002
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getStatusCodeFromEventString(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->reasonCode:I

    .line 2003
    iput-object v3, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->wifiSsid:Ljava/lang/String;

    .line 2005
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor::handleAssociateRejectEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    const-string v4, "HTCRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiMonitor::handleAssociateRejectEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkConnChangeResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v6, 0x2402d

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2009
    return-void
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 1349
    const/4 v0, 0x0

    .line 1350
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1351
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x20093

    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1357
    return-void

    .line 1354
    :cond_0
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAssociatedBSSIDEvent: didn\'t find BSSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAssociatedWithEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1892
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAssociatedWithEvent. Data= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getSSIDFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1897
    .local v1, "wifiSsid":Ljava/lang/String;
    new-instance v0, Lcom/android/server/wifi/NetworkConnChangeResult;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wifi/NetworkConnChangeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1899
    .local v0, "changeResult":Lcom/android/server/wifi/NetworkConnChangeResult;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getFrequencyFromEventString(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->freq:I

    .line 1900
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getMacFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->macAddress:Ljava/lang/String;

    .line 1901
    iput-object v1, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->wifiSsid:Ljava/lang/String;

    .line 1902
    iget-object v2, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->macAddress:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->BSSID:Ljava/lang/String;

    .line 1904
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAssociatedWithEvent. Parsed MAC Address ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->macAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAssociatedWithEvent. bLFR ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiMonitor;->bLFR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAssociatedWithEvent. wifiSsid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiMonitor;->bLFR:Z

    iput-boolean v2, v0, Lcom/android/server/wifi/NetworkConnChangeResult;->bLFR:Z

    .line 1908
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2402c

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1909
    return-void
.end method

.method private handleBlacklistChange(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2033
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    instance-of v3, v3, Lcom/android/server/wifi/WifiStateMachine;

    if-nez v3, :cond_1

    .line 2055
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    :try_start_0
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2038
    .local v1, "lines":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    if-eqz v3, :cond_0

    .line 2039
    const/4 v2, 0x0

    .line 2040
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "CLEAR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2041
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2406f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2049
    :goto_1
    if-eqz v2, :cond_0

    .line 2050
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2052
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "WifiMonitor"

    const-string v4, "handleBlacklistChange: NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2042
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "lines":[Ljava/lang/String;
    .restart local v2    # "m":Landroid/os/Message;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    aget-object v3, v1, v3

    const-string v4, "ADD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2043
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2406f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_1

    .line 2044
    :cond_3
    const/4 v3, 0x1

    aget-object v3, v1, v3

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2045
    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v4, 0x2406f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_1

    .line 2047
    :cond_4
    const-string v3, "WifiMonitor"

    const-string v4, "handleBlacklistChange: wrong parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1252
    if-nez p1, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMonitor;->checkHangedEvent()V

    .line 1261
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1264
    :cond_2
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24065

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleGasQueryEvents(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1512
    iget-object v10, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v10, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    const-string v10, "GAS-QUERY-START"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1514
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v9, 0x24033

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1515
    :cond_2
    const-string v10, "GAS-QUERY-DONE"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1516
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1517
    .local v2, "dataTokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1518
    .local v1, "bssid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1519
    .local v6, "success":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v7, v0, v3

    .line 1520
    .local v7, "token":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1521
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 1519
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1524
    :cond_4
    aget-object v10, v5, v9

    const-string v11, "addr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1525
    aget-object v1, v5, v8

    .line 1526
    goto :goto_2

    .line 1528
    :cond_5
    aget-object v10, v5, v9

    const-string v11, "result"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1529
    aget-object v10, v5, v8

    const-string v11, "SUCCESS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v6, v8

    .line 1530
    :goto_3
    goto :goto_2

    :cond_6
    move v6, v9

    .line 1529
    goto :goto_3

    .line 1533
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v10, 0x24034

    invoke-virtual {v8, v10, v6, v9, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1535
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "success":I
    :cond_8
    sget-boolean v8, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown GAS query event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1497
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "tokens":[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2402a

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1502
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24029

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleHs20Events(Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1543
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v5, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1544
    :cond_1
    const-string v5, "HS20-SUBSCRIPTION-REMEDIATION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1546
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v3, -0x1

    .line 1548
    .local v3, "method":I
    const/4 v4, 0x0

    .line 1549
    .local v4, "url":Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v9, :cond_2

    .line 1550
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1551
    aget-object v4, v1, v8

    .line 1553
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1554
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "method":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    const-string v5, "HS20-DEAUTH-IMMINENT-NOTICE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1556
    const/4 v0, -0x1

    .line 1557
    .local v0, "code":I
    const/4 v2, -0x1

    .line 1558
    .local v2, "delay":I
    const/4 v4, 0x0

    .line 1559
    .restart local v4    # "url":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1560
    .restart local v1    # "dataTokens":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 1561
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1562
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1563
    aget-object v4, v1, v9

    .line 1565
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403e

    invoke-virtual {v5, v6, v0, v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1567
    .end local v0    # "code":I
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v2    # "delay":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown HS20 event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 9
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1705
    const/4 v0, 0x0

    .line 1706
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1707
    .local v5, "networkId":I
    const/4 v6, 0x0

    .line 1708
    .local v6, "reason":I
    const/4 v2, -0x1

    .line 1709
    .local v2, "ind":I
    const/4 v3, 0x0

    .line 1711
    .local v3, "local":I
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_3

    .line 1712
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1713
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1714
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "WifiMonitor"

    const-string v8, "handleNetworkStateChange: Couldnt find BSSID in event string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v5, p2}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChangeEvent(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;ILjava/lang/String;)V

    .line 1728
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    .line 1748
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1716
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1718
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1719
    :catch_0
    move-exception v1

    .line 1720
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    goto :goto_0

    .line 1729
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_1

    .line 1730
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1731
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1732
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "WifiMonitor"

    const-string v8, "handleNetworkStateChange: Could not parse disconnect string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    goto :goto_1

    .line 1734
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1736
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1741
    :goto_3
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_2

    .line 1737
    :catch_1
    move-exception v1

    .line 1738
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_3

    .line 1742
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 1743
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 4
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1430
    const-string v1, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24015

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    const-string v1, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1433
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24016

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1434
    :cond_2
    const-string v1, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1435
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24025

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1436
    :cond_3
    const-string v1, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1437
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24017

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1439
    :cond_4
    const-string v1, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1440
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24019

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1441
    :cond_5
    const-string v1, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1442
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401a

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1443
    :cond_6
    const-string v1, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1444
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1445
    :cond_7
    const-string v1, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1446
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401c

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1447
    :cond_8
    const-string v1, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1448
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401d

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1449
    :cond_9
    const-string v1, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1450
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401e

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1451
    :cond_a
    const-string v1, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1452
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2401f

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1454
    :cond_b
    const-string v1, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1455
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24020

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1456
    :cond_c
    const-string v1, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1457
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24021

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1459
    :cond_d
    const-string v1, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1460
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24022

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1462
    :cond_e
    const-string v1, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1463
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24023

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1465
    :cond_f
    const-string v1, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1466
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24024

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1468
    :cond_10
    const-string v1, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1469
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24027

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1470
    :cond_11
    const-string v1, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1471
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1472
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 1473
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24026

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1475
    :cond_12
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null service resp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1479
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v1, "P2P-REMOVE-AND-REFORM-GROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1480
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24028

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1486
    :cond_14
    const-string v1, "P2P: CTRL-EVENT-DRIVER-STATE HANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1487
    const-string v1, "WifiMonitor"

    const-string v2, "Got HAGNED event from P2P, send HUNG to StateMachine"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x2400c

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "SSID":Ljava/lang/String;
    const/4 v4, -0x2

    .line 1577
    .local v4, "reason":I
    sget v6, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1578
    .local v5, "requestName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    const-string v6, "IDENTITY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1582
    sget-object v6, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1583
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1584
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1586
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1593
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400f

    sget v8, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual {v6, v7, v8, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1594
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const-string v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1595
    sget-object v6, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1596
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1597
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    .line 1599
    .local v1, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1600
    iput v11, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1601
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1602
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->challenges:[Ljava/lang/String;

    .line 1603
    iget-object v6, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24010

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1587
    .end local v1    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :catch_0
    move-exception v2

    .line 1588
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    .line 1589
    goto :goto_1

    .line 1591
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "didn\'t find SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1605
    :cond_4
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t parse SIM auth request - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1609
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_5
    sget-boolean v6, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t identify request type - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 21
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1622
    const-string v18, "HTCRequest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WifiMonitor:handleSupplicantStateChange():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->getSSIDFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1624
    .local v14, "tempSsid":Ljava/lang/String;
    const-string v18, "HTCRequest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WifiMonitor:handleSupplicantStateChange(): SSID"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string v18, ""

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_0

    .line 1626
    sput-object v14, Lcom/android/server/wifi/WifiMonitor;->ssidRecord:Ljava/lang/String;

    .line 1630
    :cond_0
    const/16 v17, 0x0

    .line 1631
    .local v17, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v18, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1632
    .local v7, "index":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    .line 1633
    add-int/lit8 v18, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v17

    .line 1636
    :cond_1
    const-string v18, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1638
    .local v4, "dataTokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1639
    .local v2, "BSSID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1640
    .local v10, "networkId":I
    const/4 v11, -0x1

    .line 1641
    .local v11, "newState":I
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_6

    aget-object v15, v3, v6

    .line 1642
    .local v15, "token":Ljava/lang/String;
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1643
    .local v9, "nameValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 1641
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1647
    :cond_3
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const-string v19, "BSSID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1648
    const/16 v18, 0x1

    aget-object v2, v9, v18

    .line 1649
    goto :goto_1

    .line 1654
    :cond_4
    const/16 v18, 0x1

    :try_start_0
    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1659
    .local v16, "value":I
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const-string v19, "id"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1660
    move/from16 v10, v16

    goto :goto_1

    .line 1655
    .end local v16    # "value":I
    :catch_0
    move-exception v5

    .line 1656
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1661
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "value":I
    :cond_5
    const/16 v18, 0x0

    aget-object v18, v9, v18

    const-string v19, "state"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1662
    move/from16 v11, v16

    goto :goto_1

    .line 1666
    .end local v9    # "nameValue":[Ljava/lang/String;
    .end local v15    # "token":Ljava/lang/String;
    .end local v16    # "value":I
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_7

    .line 1702
    .end local v3    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1668
    .restart local v3    # "arr$":[Ljava/lang/String;
    :cond_7
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1669
    .local v12, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_8

    aget-object v13, v3, v6

    .line 1670
    .local v13, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v11, :cond_c

    .line 1671
    move-object v12, v13

    .line 1675
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_8
    sget-object v18, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_9

    .line 1676
    const-string v18, "WifiMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid supplicant state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_9
    const-string v18, "WifiMonitor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WifiMonitor: prevSupplicantState ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->prevSupplicantState:Landroid/net/wifi/SupplicantState;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " newSupplicantState ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-static {v12}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1683
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiMonitor;->bLFR:Z

    .line 1685
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->prevSupplicantState:Landroid/net/wifi/SupplicantState;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    sget-object v18, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_d

    .line 1687
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiMonitor;->bLFR:Z

    .line 1698
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/wifi/WifiMonitor;->prevSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 1701
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1, v2, v12}, Lcom/android/server/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto/16 :goto_2

    .line 1669
    .restart local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1690
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->prevSupplicantState:Landroid/net/wifi/SupplicantState;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v18

    if-eqz v18, :cond_b

    sget-object v18, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiMonitor;->bLFR:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v18, v0

    const v19, 0x24070

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_4
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1340
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1341
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1345
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x2008d

    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1346
    return-void

    .line 1343
    :cond_0
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "didn\'t find BSSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v11, 0x24009

    const/4 v10, 0x0

    .line 1361
    const-string v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1362
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1363
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 1364
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1365
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1368
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1369
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1370
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    .line 1380
    move v4, v5

    .line 1384
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1385
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1386
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    .line 1396
    if-nez v4, :cond_1

    move v4, v0

    .line 1402
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v11, v10, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1404
    :goto_0
    return-void

    .line 1372
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x5

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1376
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x4

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1388
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1392
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x3

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1386
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 920
    const-string v0, "WifiMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method

.method private p2pError(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1408
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1409
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1410
    .local v3, "tokens":[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 1423
    :goto_0
    return-object v4

    .line 1411
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1412
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 1415
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1416
    sget-object v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    .line 1419
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 1423
    goto :goto_0

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method checkHangedEvent()V
    .locals 10

    .prologue
    .line 1273
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1274
    .local v0, "currentTime":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1275
    .local v2, "current_Time":J
    const-wide/16 v4, 0x0

    .line 1276
    .local v4, "duration":J
    const-string v1, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkHangedEvent: HangedEventCounter= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current_Time= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Check_Time= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    sget-wide v6, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    .line 1278
    sput-wide v2, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    sget-wide v6, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long v4, v6, v8

    .line 1282
    const-wide/16 v6, 0x18

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 1283
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    .line 1284
    sput-wide v2, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    goto :goto_0

    .line 1287
    :cond_2
    sget v1, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    .line 1288
    sget v1, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    .line 1289
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiMonitor;->mHangedEventCounter:I

    .line 1290
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/android/server/wifi/WifiMonitor;->mCheck_Time:J

    .line 1291
    const-string v1, "WifiMonitor"

    const-string v6, "checkHangedEvent: got HANGED event 3 times in 24hrs"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 711
    if-lez p1, :cond_0

    .line 712
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    goto :goto_0
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1306
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1309
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1335
    :cond_1
    :goto_0
    return-void

    .line 1313
    :sswitch_0
    const-string v0, "HTCRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiMonitor:handleNetworkStateChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1320
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1324
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1328
    :sswitch_3
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 736
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    .line 737
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V
    .locals 3
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "reason"    # I

    .prologue
    .line 1924
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1925
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1927
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1937
    :goto_0
    return-void

    .line 1930
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1932
    .restart local v0    # "m":Landroid/os/Message;
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiMonitor notify network disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1935
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifyNetworkStateChangeEvent(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1956
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    .line 1979
    :goto_0
    return-void

    .line 1961
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/wifi/WifiMonitor;->getNetworkIdFromEventString(Ljava/lang/String;)I

    move-result v2

    .line 1962
    .local v2, "networkId":I
    invoke-direct {p0, p4}, Lcom/android/server/wifi/WifiMonitor;->getBSSIDFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1963
    .local v0, "bssid":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/android/server/wifi/WifiMonitor;->getSSIDFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1965
    .local v3, "ssid":Ljava/lang/String;
    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 1966
    sget-object v3, Lcom/android/server/wifi/WifiMonitor;->ssidRecord:Ljava/lang/String;

    .line 1969
    :cond_1
    new-instance v1, Lcom/android/server/wifi/NetworkConnChangeResult;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/wifi/NetworkConnChangeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1971
    .local v1, "changeResult":Lcom/android/server/wifi/NetworkConnChangeResult;
    invoke-direct {p0, p4}, Lcom/android/server/wifi/WifiMonitor;->getReasonFromEventString(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->reasonCode:I

    .line 1972
    invoke-direct {p0, p4}, Lcom/android/server/wifi/WifiMonitor;->getLocallyGeneratedInfoFromEventString(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->locallyGenerated:I

    .line 1973
    invoke-direct {p0, p4}, Lcom/android/server/wifi/WifiMonitor;->getFrequencyFromEventString(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->freq:I

    .line 1974
    iput v2, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->networkId:I

    .line 1975
    iput-object v3, v1, Lcom/android/server/wifi/NetworkConnChangeResult;->wifiSsid:Ljava/lang/String;

    .line 1976
    const-string v4, "WifiMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyNetworkStateChange. wifiSsid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v4, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v6, 0x2402e

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/wifi/StateChangeResult;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2025
    return-void
.end method

.method public setStateMachine2(Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    .line 721
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 724
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    .line 728
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    .prologue
    .line 732
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    .line 733
    return-void
.end method
