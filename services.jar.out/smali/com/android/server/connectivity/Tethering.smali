.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field private static final CUSTOMIZE_BT_TETHERING_UI:Ljava/lang/String; = "ro.bt.tetheringUI"

.field private static final CUSTOMIZE_USB_TETHERING_UI:Ljava/lang/String; = "ro.usb.tetheringUI"

.field private static final CUSTOMIZE_WIFI_TETHERING_UI:Ljava/lang/String; = "ro.wifi.hotspotUI"

.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field private static final EVENT_PERMITTED_TETHER_EXTERNAL_REQUEST:I = 0x0

.field private static final EVENT_PERMITTED_TETHER_SETUP:I = 0x1

.field private static final EVENT_TETHER_USB_RETRY:I = 0x2

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field static final INTENT_PERIODIC_ENTITLEMENT_CHECK:Ljava/lang/String; = "com.htc.internal.periodic_entitlement_check"

.field public static final INTENT_TETHER_RESTRICTED_CHECK:Ljava/lang/String; = "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

.field private static final MAX_WAIT_CONNECTION_READY_TIME:I = 0x3c

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field public static final USB_TETHER_RESTRICTION:Ljava/lang/String; = "usb_tether_restriction"

.field private static final VDBG:Z = true

.field private static bTetherRestricted:Z

.field private static isChinaProject:Z

.field private static mFrisbeePid:I

.field private static final mNullRegexs:[Ljava/lang/String;


# instance fields
.field private final DEFAULT_ENTITLEMENT_RECHECK_TIMER:J

.field private DataRoaming:Z

.field private EntitlementCheck_cust:Z

.field public NoDefaultDnsServer_cust:Z

.field public final PROP_ENTITLEMENT_RECHECK_TIMER:Ljava/lang/String;

.field public TETHERING_GUARD_support:Z

.field public TetheringSpecific_cust:Ljava/lang/String;

.field private TetheringSupportIpv6_cust:I

.field public UseDefaultApn_cust:Z

.field private bDnaTransferModeEnable:Z

.field private dun_required:I

.field private htctm:Lcom/htc/service/HtcTelephonyManager;

.field private mBooted:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field mEntitlementCheckIntent:Landroid/app/PendingIntent;

.field private mFrisbeeRegex:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHotspotIconShown:Z

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field mObserver:Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;

.field private mPermittedTetherLock:Ljava/lang/Object;

.field private mPermittedTetherStatus:[I

.field private mPostponeSetUsbTether:Z

.field private mPreferredUpstreamMobileApn:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiDisplayRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherRequested:Z

.field private mV6enable:Z

.field private mWifiTetheredNotification:Landroid/app/Notification;

.field private mWifiTetheringIcon:I

.field private pDhcpRange:[Ljava/lang/String;

.field private prevCheckingPermissionMessage:Landroid/os/Message;

.field public sense_version:Ljava/lang/String;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 145
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 146
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 147
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 171
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "192.168.42.254"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "192.168.43.2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v4

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "192.168.49.2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "192.168.49.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 191
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    .line 203
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    .line 208
    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->isChinaProject:Z

    .line 243
    sput v3, Lcom/android/server/connectivity/Tethering;->mFrisbeePid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/os/Looper;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 263
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 151
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 197
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mV6enable:Z

    .line 198
    iput v5, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    .line 206
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    .line 207
    const-string v4, "NONE"

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    .line 210
    iput v7, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    .line 215
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    .line 216
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    .line 219
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    .line 223
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    .line 224
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mObserver:Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;

    .line 227
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->EntitlementCheck_cust:Z

    .line 229
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 230
    const-wide/32 v4, 0x5265c00

    iput-wide v4, p0, Lcom/android/server/connectivity/Tethering;->DEFAULT_ENTITLEMENT_RECHECK_TIMER:J

    .line 231
    const-string v4, "net.entitlement_check.timer"

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->PROP_ENTITLEMENT_RECHECK_TIMER:Ljava/lang/String;

    .line 242
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->bDnaTransferModeEnable:Z

    .line 246
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->UseDefaultApn_cust:Z

    .line 247
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->DataRoaming:Z

    .line 250
    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->NoDefaultDnsServer_cust:Z

    .line 253
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    .line 256
    iput v10, p0, Lcom/android/server/connectivity/Tethering;->dun_required:I

    .line 264
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 265
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 266
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 267
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 269
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 271
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 274
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 275
    new-instance v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v5, "TetherMaster"

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 276
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v4}, Lcom/android/internal/util/StateMachine;->start()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->htcTetherHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    .line 284
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 285
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Networking"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 286
    .local v1, "custReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "ipv6_tethering"

    const/4 v5, 0x7

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    .line 287
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: TetheringSupportIpv6_cust= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v4, "tethering_specific"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    .line 289
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: TetheringSpecific_cust= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isChinaRegion()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/connectivity/Tethering;->isChinaProject:Z

    .line 291
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: isChinaProject= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/connectivity/Tethering;->isChinaProject:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v4, "sense_version"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    .line 293
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: sense_version= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v4, "tethering_guard_support"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    .line 295
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: TETHERING_GUARD_support= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v4, "entitlement_check"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->EntitlementCheck_cust:Z

    .line 297
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: EntitlementCheck_cust= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->EntitlementCheck_cust:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v4, "use_default_apn"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->UseDefaultApn_cust:Z

    .line 299
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: UseDefaultApn_cust= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->UseDefaultApn_cust:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v4, "default_dns_server"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->NoDefaultDnsServer_cust:Z

    .line 301
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC_CUSTOMIZATION: DefaultDnsServer_cust= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->NoDefaultDnsServer_cust:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "custManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v1    # "custReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    new-instance v4, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 324
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v4, :cond_1

    .line 337
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->EntitlementCheck_cust:Z

    if-eqz v4, :cond_0

    .line 342
    const-string v4, "com.htc.internal.periodic_entitlement_check"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    :cond_0
    new-instance v4, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mObserver:Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;

    .line 346
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/net/ConnectivityManager;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mObserver:Lcom/android/server/connectivity/Tethering$TetheringPermissionObserver;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 347
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherInit()V

    .line 353
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->UseDefaultApn_cust:Z

    if-eqz v4, :cond_2

    .line 354
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 361
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 362
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "com.htc.net.conn.tethering_dun_required"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 368
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v4, v4

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v9, :cond_4

    .line 369
    :cond_3
    sget-object v4, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 373
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 376
    new-array v4, v10, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 377
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v5, "8.8.8.8"

    aput-object v5, v4, v7

    .line 378
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v5, "8.8.4.4"

    aput-object v5, v4, v9

    .line 381
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    const-string v5, "6.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    const-string v5, "desire6.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 382
    :cond_5
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v4, "com.htc.hotspot.ASSOCLIST"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 386
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    const-string v5, "VERIZON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 387
    const v4, 0x302008f

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    .line 394
    :goto_1
    return-void

    .line 303
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "Tethering"

    const-string v5, "cannot read customization value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 389
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :cond_7
    const v4, 0x30200b4

    iput v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    goto :goto_1
.end method

.method private IfaceToPermitted(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3069
    const/4 v0, -0x1

    .line 3070
    .local v0, "lanIf":I
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 3071
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3072
    const/4 v0, 0x1

    .line 3079
    :cond_0
    :goto_0
    return v0

    .line 3073
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3074
    const/4 v0, 0x0

    goto :goto_0

    .line 3075
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3076
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private IsSupportFastDormancy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3193
    const-string v1, "1"

    const-string v2, "ro.ril.fast.dormancy.rule"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3199
    :cond_0
    :goto_0
    return v0

    .line 3195
    :cond_1
    const-string v1, "1"

    const-string v2, "ro.ril.enable.pre_r8fd"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3199
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private PermittedToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "lanIf"    # I

    .prologue
    .line 3037
    add-int/lit8 v0, p1, 0x1

    .line 3038
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 3046
    const-string v1, "unkown"

    .line 3047
    :goto_0
    return-object v1

    .line 3040
    :pswitch_0
    const-string v1, "usb"

    goto :goto_0

    .line 3042
    :pswitch_1
    const-string v1, "hotspot"

    goto :goto_0

    .line 3044
    :pswitch_2
    const-string v1, "bt"

    goto :goto_0

    .line 3038
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->IfaceToPermitted(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->EntitlementCheck_cust:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getEntitlementCheckTimer()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # J

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->scheduleEntitlementCheckExpiredAlarm(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->DataRoaming:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->DataRoaming:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->dun_required:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/server/connectivity/Tethering;->dun_required:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->hTCtetherUsb(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/connectivity/Tethering;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->pDhcpRange:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/connectivity/Tethering;Landroid/app/AlarmManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/app/AlarmManager;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->clearWaitingAlarm(Landroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->notifyToDisableGarbageFilter(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->setFastDormancyDisable(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->setMultiRABThrottling(I)V

    return-void
.end method

.method static synthetic access$7502(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mV6enable:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/android/server/connectivity/Tethering;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/connectivity/Tethering;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # [I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->internal_htcRequestPermittedTether([I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showWifiTetheredNotification(I)V

    return-void
.end method

.method private clearTetheredNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 764
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 766
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 769
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 771
    :cond_0
    return-void
.end method

.method private clearWaitingAlarm(Landroid/app/AlarmManager;)V
    .locals 3
    .param p1, "aMgr"    # Landroid/app/AlarmManager;

    .prologue
    .line 3149
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 3150
    move-object v0, p1

    .line 3151
    .local v0, "am":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 3152
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "am":Landroid/app/AlarmManager;
    check-cast v0, Landroid/app/AlarmManager;

    .line 3154
    .restart local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3155
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 3156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 3158
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private clearWifiTetheredNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2820
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2822
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 2823
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2825
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    .line 2827
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 12
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 972
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configureUsbIface("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-array v5, v8, [Ljava/lang/String;

    .line 977
    .local v5, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 982
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 983
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 984
    const/4 v6, 0x0

    .line 986
    .local v6, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 987
    if-eqz v6, :cond_0

    .line 988
    const-string v9, "192.168.42.129"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 989
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 990
    if-eqz p1, :cond_1

    .line 991
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 995
    :goto_1
    const-string v9, "running"

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 996
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 982
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 978
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 979
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return v8

    .line 993
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v7    # "len$":I
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 998
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 999
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1005
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private getAssocCount()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2830
    const/4 v2, 0x0

    .line 2833
    .local v2, "count":I
    const/4 v0, 0x0

    .line 2835
    .local v0, "assoclist":Ljava/lang/String;
    :try_start_0
    const-string v8, "wifi"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 2836
    .local v6, "wifib":Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 2837
    .local v5, "wifiService":Landroid/net/wifi/IWifiManager;
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getAssocListStr()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2841
    .end local v5    # "wifiService":Landroid/net/wifi/IWifiManager;
    .end local v6    # "wifib":Landroid/os/IBinder;
    :goto_0
    if-nez v0, :cond_1

    .line 2856
    :cond_0
    :goto_1
    return v7

    .line 2838
    :catch_0
    move-exception v3

    .line 2839
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAssocCount(): Could not getAssocList, :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2844
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2845
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 2848
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2851
    .local v1, "clientNumber":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v7, v2

    .line 2856
    goto :goto_1

    .line 2852
    :catch_1
    move-exception v3

    .line 2853
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAssocCount(): parse error :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getEntitlementCheckTimer()J
    .locals 9

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 3120
    const-string v6, "net.entitlement_check.timer"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3121
    .local v1, "timer":Ljava/lang/String;
    const-wide/32 v4, 0x5265c00

    .line 3123
    .local v4, "t":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 3128
    :goto_0
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    .line 3131
    .local v2, "ret":J
    :cond_0
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entitlement Check timer is set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    return-wide v2

    .line 3124
    .end local v2    # "ret":J
    :catch_0
    move-exception v0

    .line 3125
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception on getEntitlementCheckTimer timer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hTCtetherUsb(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const-string v0, "Tethering"

    const-string v1, "Retry to tetherUsb again to avoid timing issue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 927
    :cond_0
    return-void
.end method

.method private htcPermittedTetherInit()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2900
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    .line 2901
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    .line 2902
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2903
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v2, v1, v0

    .line 2902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2905
    :cond_0
    return-void
.end method

.method private htcPermittedTetherReset(Ljava/lang/String;)V
    .locals 5
    .param p1, "internalIface"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 3107
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v1, :cond_0

    .line 3108
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->IfaceToPermitted(Ljava/lang/String;)I

    move-result v0

    .line 3109
    .local v0, "index":I
    if-ltz v0, :cond_1

    if-ge v0, v4, :cond_1

    .line 3110
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htcPermittedTetherReset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aput v4, v1, v0

    .line 3116
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 3113
    .restart local v0    # "index":I
    :cond_1
    const-string v1, "Tethering"

    const-string v2, "htcPermittedTetherReset fail: unknown iface"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private htcTetherHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2861
    new-instance v0, Lcom/android/server/connectivity/Tethering$1;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V

    return-object v0
.end method

.method private internal_htcRequestPermittedTether([I)V
    .locals 6
    .param p1, "statusArray"    # [I

    .prologue
    .line 2948
    const-string v4, "com.htc.tetheringguard"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isPackageExist(Ljava/lang/String;)Z

    move-result v2

    .line 2949
    .local v2, "tetherGuardExist":Z
    const-string v4, "com.htc.sense.tetheringguard"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isPackageExist(Ljava/lang/String;)Z

    move-result v3

    .line 2951
    .local v3, "tetherGuardExist2":Z
    if-nez v2, :cond_0

    if-eqz v3, :cond_3

    .line 2952
    :cond_0
    const-string v4, "Tethering"

    const-string v5, "Tethering calling TetherGuard ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2954
    .local v1, "requestIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 2955
    const-string v4, "com.htc.tetheringguard"

    const-string v5, "com.htc.tetheringguard.mService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2959
    :goto_0
    const-string v4, "status"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2960
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2961
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 2962
    const-string v4, "Tethering"

    const-string v5, "Tethering call TetherGuard done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    .end local v0    # "name":Landroid/content/ComponentName;
    .end local v1    # "requestIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 2957
    .restart local v1    # "requestIntent":Landroid/content/Intent;
    :cond_1
    const-string v4, "com.htc.sense.tetheringguard"

    const-string v5, "com.htc.sense.tetheringguard.mService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2964
    .restart local v0    # "name":Landroid/content/ComponentName;
    :cond_2
    const-string v4, "Tethering"

    const-string v5, "Fail start TetherGuard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2967
    .end local v0    # "name":Landroid/content/ComponentName;
    .end local v1    # "requestIntent":Landroid/content/Intent;
    :cond_3
    const-string v4, "Tethering"

    const-string v5, "Can\'t get TetherGuard package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isPackageExist(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2972
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2973
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 2975
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2979
    :goto_0
    if-eqz v2, :cond_0

    .line 2980
    const/4 v3, 0x1

    .line 2982
    :goto_1
    return v3

    .line 2976
    :catch_0
    move-exception v0

    .line 2977
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageInfo error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2982
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 477
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 479
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 476
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 480
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isUsbTethered()Z
    .locals 6

    .prologue
    .line 3052
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v5

    .line 3053
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3054
    .local v2, "ifaces":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3055
    .local v1, "iface":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3056
    .local v3, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v3, :cond_0

    .line 3057
    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3058
    check-cast v1, Ljava/lang/String;

    .end local v1    # "iface":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3059
    const/4 v4, 0x1

    monitor-exit v5

    .line 3065
    .end local v3    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :goto_0
    return v4

    .line 3064
    :cond_1
    monitor-exit v5

    .line 3065
    const/4 v4, 0x0

    goto :goto_0

    .line 3064
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ifaces":Ljava/util/Set;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private notifyToDisableGarbageFilter(I)V
    .locals 6
    .param p1, "disable"    # I

    .prologue
    .line 3163
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    .line 3164
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3165
    .local v2, "value":Landroid/os/Bundle;
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3166
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    const-string v4, "passHotSpotState"

    invoke-virtual {v3, v4, v2}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3167
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disable garbage filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3171
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "value":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 3168
    :catch_0
    move-exception v0

    .line 3169
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "Tethering"

    const-string v4, "Disable garbage filter - Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private scheduleEntitlementCheckExpiredAlarm(J)V
    .locals 7
    .param p1, "timeToTrigger"    # J

    .prologue
    .line 3136
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3137
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 3138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.internal.periodic_entitlement_check"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3139
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    .line 3143
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "Tethering"

    const-string v3, "Set alarm to wake up entitlement check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementCheckIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3146
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 15

    .prologue
    .line 626
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    iput-object v12, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 627
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isDnaTransferModeEnable()Z

    move-result v12

    if-nez v12, :cond_0

    .line 716
    :goto_0
    return-void

    .line 631
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v2, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v5, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 636
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 637
    .local v10, "usbTethered":Z
    const/4 v3, 0x0

    .line 639
    .local v3, "bluetoothTethered":Z
    iget-object v13, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v13

    .line 640
    :try_start_0
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 641
    .local v8, "ifaces":Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 642
    .local v7, "iface":Ljava/lang/Object;
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 643
    .local v9, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v9, :cond_1

    .line 644
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 645
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "ifaces":Ljava/util/Set;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 646
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "iface":Ljava/lang/Object;
    .restart local v8    # "ifaces":Ljava/util/Set;
    .restart local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 647
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 648
    .restart local v7    # "iface":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 649
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 650
    const/4 v10, 0x1

    .line 656
    :cond_4
    :goto_2
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 651
    .restart local v7    # "iface":Ljava/lang/Object;
    :cond_5
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 652
    const/4 v11, 0x1

    goto :goto_2

    .line 653
    :cond_6
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {p0, v12}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 654
    const/4 v3, 0x1

    goto :goto_2

    .line 660
    .end local v7    # "iface":Ljava/lang/Object;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v4, "broadcast":Landroid/content/Intent;
    const/high16 v12, 0x24000000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    const-string v12, "availableArray"

    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 666
    const-string v12, "activeArray"

    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 667
    const-string v12, "erroredArray"

    invoke-virtual {v4, v12, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 669
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 671
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendTetherStateChangedBroadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    const-string v13, "6.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->sense_version:Ljava/lang/String;

    const-string v13, "desire6.0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 698
    :cond_8
    if-eqz v11, :cond_b

    .line 699
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    .line 700
    iget v12, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    if-eqz v12, :cond_a

    .line 701
    iget v12, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheringIcon:I

    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->showWifiTetheredNotification(I)V

    .line 710
    :cond_9
    :goto_3
    if-eqz v3, :cond_c

    .line 711
    const v12, 0x1080695

    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 703
    :cond_a
    const v12, 0x1080698

    invoke-direct {p0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_3

    .line 706
    :cond_b
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering;->mHotspotIconShown:Z

    .line 707
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearWifiTetheredNotification()V

    goto :goto_3

    .line 713
    :cond_c
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_0
.end method

.method private setFastDormancyDisable(I)V
    .locals 4
    .param p1, "enabled"    # I

    .prologue
    .line 3175
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->IsSupportFastDormancy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3176
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFastDormancyDisable enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    .line 3180
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_1

    .line 3182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetFastDormancy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3190
    :cond_0
    :goto_0
    return-void

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Tethering"

    const-string v2, "exception on htctm.requestSetFastDormancy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3187
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v1, "Tethering"

    const-string v2, "Could not get htcPhoneInterface!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMultiRABThrottling(I)V
    .locals 4
    .param p1, "enabled"    # I

    .prologue
    .line 3204
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMultiRABThrottling enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    .line 3207
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    if-eqz v1, :cond_0

    .line 3209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V

    .line 3210
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->htctm:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/htc/service/HtcTelephonyManager;->requestSetMultiRABTrafficThrottling(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3217
    :goto_0
    return-void

    .line 3211
    :catch_0
    move-exception v0

    .line 3212
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Tethering"

    const-string v2, "exception on htctm.requestSetMultiRABTrafficThrottling"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3215
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const-string v1, "Tethering"

    const-string v2, "Could not get htcPhoneInterface!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showTetheredNotification(I)V
    .locals 14
    .param p1, "icon"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 719
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 721
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eq v0, p1, :cond_0

    .line 729
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 733
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 734
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 737
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 740
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 741
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x1040549

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 742
    .local v10, "title":Ljava/lang/CharSequence;
    const v0, 0x104054a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 745
    .local v6, "message":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v0, :cond_3

    .line 746
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 747
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/app/Notification;->when:J

    .line 749
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 750
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 751
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 752
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 753
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->visibility:I

    .line 754
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1060058

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 756
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 757
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-string v1, "status"

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private showWifiTetheredNotification(I)V
    .locals 12
    .param p1, "icon"    # I

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 2741
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2742
    const-string v0, "Tethering"

    const-string v1, "WiFiDisplay, not showTetheredNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :cond_0
    :goto_0
    return-void

    .line 2747
    :cond_1
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTC_CUSTOMIZATION: TetheringSpecific_cust= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 2750
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v8, :cond_0

    .line 2754
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 2755
    .local v10, "r":Landroid/content/res/Resources;
    const-string v11, ""

    .line 2756
    .local v11, "title":Ljava/lang/CharSequence;
    const-string v7, ""

    .line 2758
    .local v7, "message":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getAssocCount()I

    move-result v6

    .line 2759
    .local v6, "count":I
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    const-string v1, "VERIZON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2761
    const v0, 0x30701ec

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 2777
    :goto_1
    const/4 v0, 0x1

    if-eq v6, v0, :cond_7

    .line 2778
    const v0, 0x30701ee

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v10, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2783
    :goto_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    if-eqz v0, :cond_9

    .line 2784
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi icon change: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-ne v0, p1, :cond_8

    .line 2786
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iput-object v7, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2787
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v11, v7, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2788
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 2762
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2764
    const v0, 0x3070175

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1

    .line 2765
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    const-string v1, "HUTCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2767
    const v0, 0x3070176

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto/16 :goto_1

    .line 2768
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    const-string v1, "TMOUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2770
    const v0, 0x30701eb

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto/16 :goto_1

    .line 2771
    :cond_5
    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->isChinaProject:Z

    if-eqz v0, :cond_6

    .line 2772
    const v0, 0x30701ed

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wi-Fi"

    const-string v3, "WLAN"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 2774
    :cond_6
    const v0, 0x30701ed

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 2780
    :cond_7
    const v0, 0x30701ef

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v10, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 2792
    :cond_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2796
    :cond_9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2797
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.htc.WifiRouter"

    const-string v1, "com.htc.WifiRouter.Intro"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2798
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2800
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 2803
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    if-nez v0, :cond_a

    .line 2804
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    .line 2805
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 2807
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 2808
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 2809
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2810
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->TetheringSpecific_cust:Ljava/lang/String;

    const-string v1, "VERIZON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    if-lt v6, v0, :cond_b

    .line 2811
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iput-object v7, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2813
    :goto_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2815
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 2812
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetheredNotification:Landroid/app/Notification;

    iput-object v11, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_3
.end method

.method private tetherUsb(Z)Z
    .locals 12
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    .line 933
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tetherUsb "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-array v4, v8, [Ljava/lang/String;

    .line 937
    .local v4, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 946
    const-string v7, "sys.usb.tethering"

    .line 947
    .local v7, "usbSysctlKey":Ljava/lang/String;
    const-string v9, "sys.usb.tethering"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    if-eqz p1, :cond_0

    .line 950
    const-string v9, "sys.usb.tethering"

    const-string v10, "true"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2

    .line 955
    .local v3, "iface":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 956
    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 957
    .local v6, "result":I
    :goto_1
    if-nez v6, :cond_2

    .line 959
    const/4 v8, 0x1

    .line 966
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "result":I
    .end local v7    # "usbSysctlKey":Ljava/lang/String;
    :goto_2
    return v8

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 956
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v7    # "usbSysctlKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 954
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v3    # "iface":Ljava/lang/String;
    :cond_3
    const-string v9, "Tethering"

    const-string v10, "unable start or stop USB tethering"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method TetherV6Support(Ljava/lang/String;)Z
    .locals 4
    .param p1, "CheckingIface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2688
    if-nez p1, :cond_0

    .line 2689
    const-string v1, "Tethering"

    const-string v2, "TetherV6Support(): Error input interface can\'t be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :goto_0
    return v0

    .line 2692
    :cond_0
    iget v2, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 2693
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mV6enable:Z

    move v0, v1

    .line 2694
    goto :goto_0

    .line 2695
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2696
    iget v2, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_4

    .line 2697
    const-string v1, "Tethering"

    const-string v2, "Not support hotspot v6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2700
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2701
    iget v2, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 2702
    const-string v1, "Tethering"

    const-string v2, "Not support BT tethering v6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2705
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2706
    iget v2, p0, Lcom/android/server/connectivity/Tethering;->TetheringSupportIpv6_cust:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 2707
    const-string v1, "Tethering"

    const-string v2, "Not support USB tethering v6"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2711
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mV6enable:Z

    move v0, v1

    .line 2712
    goto :goto_0
.end method

.method public checkDunRequired()V
    .locals 5

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x4

    .line 1130
    iget v1, p0, Lcom/android/server/connectivity/Tethering;->dun_required:I

    .line 1133
    .local v1, "secureSetting":I
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 1134
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1135
    const-string v2, "Tethering"

    const-string v4, "WifiDisplayAPEnable, force to DUN not required"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v1, 0x0

    .line 1144
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1146
    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1147
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v3

    .line 1150
    .local v0, "requiredApn":I
    :cond_1
    if-ne v0, v3, :cond_6

    .line 1151
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1152
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1177
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1138
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->DataRoaming:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->UseDefaultApn_cust:Z

    if-eqz v2, :cond_0

    .line 1139
    const-string v2, "Tethering"

    const-string v4, "Data roaming, force to DUN not required"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const/4 v1, 0x0

    goto :goto_0

    .line 1154
    .restart local v0    # "requiredApn":I
    :cond_3
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1155
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1157
    :cond_4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1158
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1172
    .end local v0    # "requiredApn":I
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1173
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 1177
    :goto_4
    monitor-exit v4

    .line 1178
    return-void

    .line 1161
    .restart local v0    # "requiredApn":I
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1162
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1164
    :cond_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1165
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_8
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1168
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1175
    .end local v0    # "requiredApn":I
    :cond_9
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2663
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2684
    :goto_0
    return-void

    .line 2671
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2672
    :try_start_0
    const-string v3, "mUpstreamIfaceTypes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2674
    .local v1, "netType":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2682
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netType":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2677
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2678
    const-string v3, "Tether state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2680
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2682
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1222
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1224
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1225
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1226
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1227
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1228
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1231
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1232
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1233
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1234
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 605
    const/4 v1, 0x0

    .line 606
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 608
    if-nez v1, :cond_0

    .line 609
    const-string v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v2, 0x1

    monitor-exit v3

    .line 613
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1062
    const/4 v0, 0x1

    .line 1064
    .local v0, "blBluetooth":Z
    :try_start_0
    const-string v3, "ro.bt.tetheringUI"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 1068
    :goto_0
    if-nez v0, :cond_0

    .line 1069
    const-string v2, "Tethering"

    const-string v3, "getTetherableBluetoothRegexs: no regexs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 1073
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v2

    .line 1064
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "Exception happened when get SystemProperties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1202
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1203
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1204
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1205
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1206
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1209
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1210
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1211
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1212
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1214
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1011
    const/4 v0, 0x1

    .line 1013
    .local v0, "blUsb":Z
    :try_start_0
    const-string v3, "ro.usb.tetheringUI"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 1017
    :goto_0
    if-nez v0, :cond_0

    .line 1018
    const-string v2, "Tethering"

    const-string v3, "getTetherableUsbRegexs: no regexs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v2

    .line 1013
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1014
    :catch_0
    move-exception v1

    .line 1015
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "Exception happened when get SystemProperties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1027
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 1028
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTetherableWifiRegexs(), caller PID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", myPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiDisplayRegexs:[Ljava/lang/String;

    .line 1057
    :goto_0
    return-object v2

    .line 1034
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isDnaTransferModeEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1035
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1036
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get FrisbeeRegex(call by system), myPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mFrisbeeRegex:[Ljava/lang/String;

    goto :goto_0

    .line 1038
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    sget v4, Lcom/android/server/connectivity/Tethering;->mFrisbeePid:I

    if-ne v2, v4, :cond_2

    sget v2, Lcom/android/server/connectivity/Tethering;->mFrisbeePid:I

    if-ltz v2, :cond_2

    .line 1039
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get FrisbeeRegex(call by Frisbee AP)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/connectivity/Tethering;->mFrisbeePid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mFrisbeeRegex:[Ljava/lang/String;

    goto :goto_0

    .line 1046
    :cond_2
    const/4 v0, 0x1

    .line 1048
    .local v0, "blWifi":Z
    :try_start_0
    const-string v2, "ro.wifi.hotspotUI"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v3, :cond_4

    move v0, v3

    .line 1052
    :goto_1
    if-nez v0, :cond_3

    .line 1053
    const-string v2, "Tethering"

    const-string v3, "getTetherableWifiRegexs: no regexs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    sget-object v2, Lcom/android/server/connectivity/Tethering;->mNullRegexs:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 1057
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    goto :goto_0

    .line 1048
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "Exception happened when get SystemProperties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1184
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1185
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1186
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1187
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1188
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1191
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1192
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1193
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1194
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1196
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 1113
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1114
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 1115
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1116
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1117
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    monitor-exit v4

    .line 1121
    return-object v2

    .line 1120
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public htcPermittedTetherAllow(Ljava/lang/String;)Z
    .locals 5
    .param p1, "internalIface"    # Ljava/lang/String;

    .prologue
    .line 3083
    const/4 v1, 0x1

    .line 3084
    .local v1, "value":Z
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v2, :cond_2

    .line 3086
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 3087
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3088
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3089
    const/4 v2, 0x1

    .line 3103
    :goto_0
    return v2

    .line 3093
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->IfaceToPermitted(Ljava/lang/String;)I

    move-result v0

    .line 3094
    .local v0, "index":I
    if-ltz v0, :cond_3

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 3095
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    .line 3096
    const/4 v1, 0x0

    .line 3101
    :cond_1
    :goto_1
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcPermittedTetherAllow: internalIface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , allow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "index":I
    :cond_2
    move v2, v1

    .line 3103
    goto :goto_0

    .line 3099
    .restart local v0    # "index":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public htcRequestPermittedTether(Ljava/lang/String;)Z
    .locals 9
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 2908
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION: TETHERING_GUARD_support= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v5, :cond_4

    .line 2910
    const/4 v5, 0x3

    new-array v1, v5, [I

    .line 2912
    .local v1, "requestList":[I
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    array-length v6, v1

    invoke-static {v5, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2913
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permitted Tether request - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const-string v5, "usb"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2916
    aput v8, v1, v3

    .line 2926
    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    .line 2928
    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering;->mBooted:Z

    if-eqz v3, :cond_3

    .line 2929
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    move v3, v4

    .line 2943
    .end local v1    # "requestList":[I
    :goto_2
    return v3

    .line 2917
    .restart local v1    # "requestList":[I
    :cond_0
    const-string v5, "hotspot"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2918
    aput v8, v1, v4

    goto :goto_0

    .line 2919
    :cond_1
    const-string v5, "bt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2920
    aput v8, v1, v8

    goto :goto_0

    .line 2922
    :cond_2
    const-string v4, "Tethering"

    const-string v5, "htcRequestPermittedTether: input type not support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2931
    :cond_3
    const/16 v2, 0x3c

    .line 2933
    .local v2, "wait_time":I
    :try_start_0
    const-string v3, "net.wait_available.time"

    const/16 v5, 0x3c

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2934
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device don\'t boot complete wait "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2938
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;

    mul-int/lit16 v6, v2, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2935
    :catch_0
    move-exception v0

    .line 2936
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Tethering"

    const-string v5, "Exception at SystemProperties.getInt(PROP_WAIT_AVAILABLE_TIME)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2942
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "requestList":[I
    .end local v2    # "wait_time":I
    :cond_4
    const-string v4, "Tethering"

    const-string v5, "htcRequestPermittedTether: TetheringGuard not support"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public htcSetUsbTethering(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2883
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2885
    const-string v0, "net.usb0.isharing.host"

    const-string v1, "win"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ncm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    const-string v0, "Tethering"

    const-string v1, "Skip TetherGaurd trigger for MirrorLink case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 2895
    :goto_0
    return v0

    .line 2890
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    .line 2891
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request permission before SetUsbTethering, mPostponeSetUsbTether = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/String;)Z

    .line 2893
    const/4 v0, 0x0

    goto :goto_0

    .line 2895
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    goto :goto_0
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 520
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 523
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 524
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 527
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    const/4 v0, 0x1

    .line 529
    const/4 v2, 0x1

    .line 531
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    const/4 v0, 0x1

    .line 534
    :cond_2
    if-nez v0, :cond_3

    .line 535
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    monitor-exit v4

    .line 548
    :goto_0
    return-void

    .line 539
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 540
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_4

    .line 541
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") reported as added, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit v4

    goto :goto_0

    .line 547
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 544
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 545
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 547
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 470
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceLinkStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 472
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 551
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interfaceRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 554
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    .line 556
    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v2

    .line 563
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 561
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 435
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 438
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const/4 v0, 0x1

    .line 447
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    monitor-exit v4

    .line 467
    :goto_1
    return-void

    .line 441
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    const/4 v0, 0x1

    .line 443
    const/4 v2, 0x1

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 450
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_5

    .line 451
    if-nez v1, :cond_4

    .line 452
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 453
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 466
    :cond_4
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 457
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_5
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 460
    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore interface down for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 461
    :cond_6
    if-eqz v1, :cond_4

    .line 462
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 463
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public internal_htcSetupPermittedTether()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3004
    const/4 v6, 0x0

    .line 3006
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/ConnectivityManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3007
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3009
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3010
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 3011
    const-string v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permitted Tether update - USB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 3013
    const-string v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permitted Tether update - WIFI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v2

    .line 3015
    const-string v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permitted Tether update - BT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3020
    if-eqz v6, :cond_0

    .line 3021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3025
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v0, v0, v8

    if-eq v0, v10, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v0, v0, v8

    if-ne v0, v11, :cond_3

    .line 3034
    :cond_1
    :goto_1
    return-void

    .line 3016
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3017
    :catch_0
    move-exception v7

    .line 3018
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3020
    if-eqz v6, :cond_0

    .line 3021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3020
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 3021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 3028
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I

    aget v0, v0, v8

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isUsbTethered()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3031
    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    .line 3033
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    goto :goto_1
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 513
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 515
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 512
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 516
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isDnaTransferModeEnable()Z
    .locals 1

    .prologue
    .line 3221
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->bDnaTransferModeEnable:Z

    return v0
.end method

.method public isUsbTetheringRestricted()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2731
    const/4 v0, 0x0

    .line 2732
    .local v0, "restricted":Z
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_tether_restriction"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 2733
    :goto_0
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTetherRestricted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    return v0

    :cond_0
    move v0, v2

    .line 2732
    goto :goto_0
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 485
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    .line 486
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    const-string v4, "Tethering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WiFiDisplayApEnabled- softapconcurrent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wifi.softapconcurrent.interface"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / iface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-eqz p1, :cond_0

    const-string v4, "wifi.softapconcurrent.interface"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 506
    :goto_0
    return v4

    :cond_0
    move v4, v6

    .line 491
    goto :goto_0

    .line 495
    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v7

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isDnaTransferModeEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 498
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mFrisbeeRegex:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 499
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v7

    move v4, v5

    goto :goto_0

    .line 498
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "regex":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 504
    .restart local v3    # "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit v7

    move v4, v5

    goto :goto_0

    .line 503
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 506
    .end local v3    # "regex":Ljava/lang/String;
    :cond_5
    monitor-exit v7

    move v4, v6

    goto :goto_0

    .line 507
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setDnaTransferModeEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 3225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    sput v3, Lcom/android/server/connectivity/Tethering;->mFrisbeePid:I

    .line 3226
    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDnaTransferModeEnable enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,CallingPid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/connectivity/Tethering;->mFrisbeePid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    const-string v0, "net.frisbee.enabled"

    .line 3229
    .local v0, "FRISBEE_ENABLE":Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "1"

    .line 3230
    .local v2, "strEnable":Ljava/lang/String;
    :goto_0
    const-string v3, "net.frisbee.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3234
    .end local v2    # "strEnable":Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->bDnaTransferModeEnable:Z

    .line 3235
    return-void

    .line 3229
    :cond_0
    :try_start_1
    const-string v2, "0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3231
    :catch_0
    move-exception v1

    .line 3232
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Tethering"

    const-string v4, "exception on setDnaTransferModeEnable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setUsbTethering(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1077
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbTethering("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 1080
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isUsbTetheringRestricted()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    .line 1081
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    if-eqz v1, :cond_0

    const-string v1, "Tethering"

    const-string v2, "setUsbTethering: usb data already restricted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1089
    if-eqz p1, :cond_2

    :try_start_0
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    if-nez v1, :cond_2

    .line 1091
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_1

    .line 1092
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)Z

    .line 1107
    :goto_0
    monitor-exit v2

    .line 1108
    return v4

    .line 1094
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 1095
    const-string v1, "rndis"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1099
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mPostponeSetUsbTether:Z

    .line 1101
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)Z

    .line 1102
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_3

    .line 1103
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1105
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setUsbTetheringRestricted(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2717
    const-string v1, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTetherRestricted enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    sput-boolean p1, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    .line 2719
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tether_restriction"

    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2721
    .local v0, "responseIntent":Landroid/content/Intent;
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->bTetherRestricted:Z

    if-eqz v1, :cond_1

    .line 2722
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    .line 2723
    const-string v1, "allowed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2727
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2728
    return-void

    .end local v0    # "responseIntent":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 2719
    goto :goto_0

    .line 2725
    .restart local v0    # "responseIntent":Landroid/content/Intent;
    :cond_1
    const-string v1, "allowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 566
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 569
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 570
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    if-nez v1, :cond_0

    .line 572
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v2, 0x1

    .line 580
    :goto_0
    return v2

    .line 570
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 575
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v2, 0x4

    goto :goto_0

    .line 579
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 580
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 584
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v1, 0x0

    .line 586
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 587
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 588
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    if-nez v1, :cond_0

    .line 590
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v2, 0x1

    .line 601
    :goto_0
    return v2

    .line 588
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 593
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v2, 0x4

    goto :goto_0

    .line 598
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->htcPermittedTetherReset(Ljava/lang/String;)V

    .line 600
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 601
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 11

    .prologue
    .line 403
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070010

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070011

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070016

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 412
    .local v3, "ifaceTypes":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v8, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 414
    .local v1, "i":I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v10

    .line 418
    :try_start_0
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 419
    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 420
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 421
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 423
    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiDisplayRegexs:[Ljava/lang/String;

    .line 426
    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mFrisbeeRegex:[Ljava/lang/String;

    .line 428
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 432
    return-void

    .line 428
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
