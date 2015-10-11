.class public final Lcom/android/server/wifi/WifiServiceImpl;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;,
        Lcom/android/server/wifi/WifiServiceImpl$Multicaster;,
        Lcom/android/server/wifi/WifiServiceImpl$DeathRecipient;,
        Lcom/android/server/wifi/WifiServiceImpl$LockList;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiLock;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;,
        Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;,
        Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_LEASE_RENEW:Ljava/lang/String; = "com.android.server.WifiManager.action.DHCP_LEASE_RENEW"

.field private static final ACTION_WIRELESS_SLEEP_TIME_END:Ljava/lang/String; = "com.android.server.WifiManager.action.SLEEP_TIME_END"

.field private static final ACTION_WIRELESS_SLEEP_TIME_START:Ljava/lang/String; = "com.android.server.WifiManager.action.SLEEP_TIME_START"

.field private static final ALWAYS_REMINDER:I = 0x3

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final DBG:Z = true

.field private static final DRIVER_POWER_MODE_BROWSER_ACTIVE:I = 0xb

.field private static final DRIVER_POWER_MODE_BROWSER_AUTO:I = 0xa

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_START:I = 0x1f

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_STOP:I = 0x1e

.field private static final DRIVER_POWER_MODE_WIFILOCK_ACQUIRE:I = 0x58

.field private static final DRIVER_POWER_MODE_WIFILOCK_RELEASE:I = 0x57

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field private static final HOTSPOT_MDN_RESTRICTION:Ljava/lang/String; = "hotspot_mdn_restriction"

.field private static final HOTSPOT_SPRINT_RESTRICTION:Ljava/lang/String; = "hotspot_sprint_restriction"

.field private static final KINETO_GANLITE_INTENT_ACTION_V2:Ljava/lang/String; = "com.kineto.smartwifi.WFCState"

.field private static final PROPERTY_ASSOCIATE_MODE:Ljava/lang/String; = "wlan.custom.assocmode"

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WIFI_ASSOCIATE_AUTO:I = 0x0

.field private static final WIFI_ASSOCIATE_MANUAL:I = 0x1

.field private static final WIFI_ASSOCIATE_MANUAL_PRECONFIG_ATT:I = 0x5

.field private static final WIFI_CAPTIVE_PORTAL_ENABLE:Ljava/lang/String; = "wifi_captive_portal_enable"

.field private static final WIFI_MDN_RESTRICTION:Ljava/lang/String; = "wifi_mdn_restriction"

.field private static final WIFI_SPRINT_RESTRICTION:Ljava/lang/String; = "wifi_sprint_restriction"

.field private static WLAN_DETECTION_TYPE_ATT:I

.field private static WLAN_DETECTION_TYPE_DISABLE:I

.field private static WLAN_DETECTION_TYPE_HTC:I


# instance fields
.field private IsWifiApStatePersist:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAutoEnableWifiApInDockMode:Z

.field private mAutoEnableWifiInDockMode:Z

.field final mBatchedScanSupported:Z

.field private final mBatchedScanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mChannelSwitchWorkAround:Z

.field private mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

.field mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEmergencyModeChanged:Z

.field private mEnableMHS:Z

.field private mEnablingWifiInterrupted:Z

.field private mForbiddenByExchangePolicy:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

.field private mInDockMode:Z

.field private mInterfaceName:Ljava/lang/String;

.field final mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

.field private mMhsPSRegState:I

.field private mMhsStatus:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private mNwService:Landroid/os/INetworkManagementService;

.field mObserver:Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;

.field private mPPPoE:Lcom/android/server/connectivity/PPPoE;

.field private mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreEmergencyModeChanged:Z

.field private mProcessingMHS:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWifiApMhsPermission:Z

.field private mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiEnabledByDock:Z

.field private mWifiEnabledNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

.field private final mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

.field final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

.field private scanRequestCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiServiceImpl;->WLAN_DETECTION_TYPE_DISABLE:I

    .line 357
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/WifiServiceImpl;->WLAN_DETECTION_TYPE_HTC:I

    .line 358
    const/4 v0, 0x2

    sput v0, Lcom/android/server/wifi/WifiServiceImpl;->WLAN_DETECTION_TYPE_ATT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 583
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 215
    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$LockList;

    invoke-direct {v3, p0, v5}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$1;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    .line 235
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    .line 249
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mForbiddenByExchangePolicy:Z

    .line 254
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    .line 255
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPreEmergencyModeChanged:Z

    .line 270
    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    .line 277
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 279
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mConfiguredNetworks:Ljava/util/HashMap;

    .line 299
    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mObserver:Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;

    .line 300
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    .line 301
    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 302
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    .line 303
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    .line 304
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I

    .line 305
    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsPSRegState:I

    .line 309
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mChannelSwitchWorkAround:Z

    .line 318
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 333
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiApInDockMode:Z

    .line 334
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z

    .line 335
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInDockMode:Z

    .line 336
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledByDock:Z

    .line 340
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->IsWifiApStatePersist:Z

    .line 361
    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$1;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 387
    iput-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    .line 892
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    .line 2126
    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$3;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiServiceImpl$3;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 584
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    .line 586
    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    .line 588
    new-instance v3, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 589
    new-instance v3, Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInterfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 590
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Lcom/android/server/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 591
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 592
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 594
    new-instance v3, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 595
    new-instance v3, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 597
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 598
    .local v2, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 599
    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    .line 600
    new-instance v3, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;

    .line 601
    new-instance v3, Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 604
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/WirelessDisplayManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    .line 609
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 610
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    .line 611
    new-instance v3, Lcom/android/server/connectivity/PPPoE;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/connectivity/PPPoE;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPPPoE:Lcom/android/server/connectivity/PPPoE;

    .line 613
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPPPoE:Lcom/android/server/connectivity/PPPoE;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    .line 626
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->parseXMLListHandler()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    .line 632
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    .line 633
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .line 637
    new-instance v3, Lcom/android/server/wifi/HtcWifiWanDetect;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/android/server/wifi/HtcWifiWanDetect;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Messenger;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    .line 640
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error registering observer :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiServiceImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->updateDevicePolicy()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPreEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPreEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mForbiddenByExchangePolicy:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiServiceImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->checkHtcCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/htc/service/WirelessDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkWifiApRemindDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiServiceImpl;Lcom/htc/service/WirelessDisplayManager;)Lcom/htc/service/WirelessDisplayManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/htc/service/WirelessDisplayManager;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnablingWifiInterrupted:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnablingWifiInterrupted:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInDockMode:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiServiceImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/WifiServiceImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiServiceImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiServiceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getPersistedWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsPSRegState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifi/WifiServiceImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p1, "x1"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsPSRegState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z
    .locals 6
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    .line 2377
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1700(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 2381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2383
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 2384
    iget v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 2396
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    const/4 v1, 0x1

    .line 2401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v1

    .line 2386
    :pswitch_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2398
    :catch_0
    move-exception v0

    .line 2399
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 2401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2389
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2401
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2393
    :pswitch_2
    :try_start_3
    iget v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 3219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3220
    .local v1, "parcel":Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3221
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3223
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3225
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 3224
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private checkHtcCustomization(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3159
    const-string v1, "content://customization_settings/SettingTable/application_Wifihotspot"

    .line 3161
    .local v1, "customize_uri":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiServiceImpl;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    if-eqz v0, :cond_0

    .line 3164
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 3166
    :cond_0
    return-void
.end method

.method private checkWifiApMhs(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2939
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    if-nez v2, :cond_0

    if-ne p1, v0, :cond_0

    .line 2946
    :goto_0
    return v0

    .line 2941
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2942
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    .line 2943
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    move v0, v1

    .line 2944
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2946
    goto :goto_0
.end method

.method private checkWifiApRemindDialog()Z
    .locals 10

    .prologue
    const v9, 0x2600a

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3078
    const/4 v2, -0x1

    .line 3080
    .local v2, "showDialog":I
    const-string v3, "net.frisbee.enabled"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3081
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 3082
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSoftapMonitorStarted(Z)V

    .line 3083
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v9, v3, v5, v7}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3116
    :goto_1
    return v4

    :cond_0
    move v3, v5

    .line 3083
    goto :goto_0

    .line 3087
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHotspotRemindType()I

    move-result v3

    if-ne v3, v8, :cond_2

    .line 3089
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hotspot_power_mode_remind"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 3090
    const-string v3, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWifiApRemindDialog flag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3097
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getHotspotRemindType()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 3099
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.hotspot.SETUP_POWER_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3100
    .local v1, "newIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3101
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3105
    .end local v1    # "newIntent":Landroid/content/Intent;
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setMhsUiProcessing(Z)V

    move v4, v5

    .line 3106
    goto :goto_1

    .line 3091
    :catch_0
    move-exception v0

    .line 3092
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .line 3093
    const-string v3, "WifiService"

    const-string v6, "checkWifiApRemindDialog exception"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3102
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 3103
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkWifiApRemindDialog startActivity exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    if-nez v3, :cond_4

    .line 3109
    const-string v3, "WifiService"

    const-string v4, "MHS permission is not allowed, should not enter here"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/WifiStateMachine;->setMhsUiProcessing(Z)V

    move v4, v5

    .line 3111
    goto/16 :goto_1

    .line 3113
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 3114
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setSoftapMonitorStarted(Z)V

    .line 3115
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_4
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v9, v3, v5, v7}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_5
    move v3, v5

    goto :goto_4
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method private enforceMdmPermission()V
    .locals 3

    .prologue
    .line 3451
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_HTC_MDM_API"

    const-string v2, "Need MDN device management permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    return-void
.end method

.method private enforceReadCredentialPermission()V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_WIFI_CREDENTIAL"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private enforceSprintPermission()V
    .locals 3

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    const-string v2, "Need Sprint device management permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3169
    const/4 v1, 0x0

    .line 3170
    .local v1, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3215
    :cond_0
    :goto_0
    return-object v2

    .line 3173
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3176
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 3177
    const-string v0, "WifiService"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3180
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 3181
    const-string v0, "WifiService"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3183
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3185
    :cond_3
    const/4 v7, 0x0

    .line 3186
    goto :goto_0

    .line 3188
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3189
    .local v10, "nValueIdx":I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 3190
    const-string v0, "WifiService"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3194
    :cond_5
    const/4 v7, 0x0

    .line 3195
    goto :goto_0

    .line 3197
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3198
    const/4 v8, 0x0

    .line 3199
    .local v8, "data":[B
    const/4 v6, 0x0

    .line 3202
    .local v6, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 3203
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiServiceImpl;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3208
    if-eqz v7, :cond_8

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3212
    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_1
    move-object v2, v6

    .line 3215
    goto :goto_0

    .line 3204
    :catch_0
    move-exception v9

    .line 3205
    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3206
    const/4 v6, 0x0

    .line 3208
    if-eqz v7, :cond_8

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3212
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 3208
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_b

    .line 3209
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3210
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3212
    :cond_a
    const/4 v7, 0x0

    :cond_b
    throw v0
.end method

.method private getPersistedDockWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3780
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3782
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "dock_hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 3786
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 3782
    goto :goto_0

    .line 3783
    :catch_0
    move-exception v1

    .line 3784
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "dock_hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3785
    const-string v2, "WifiService"

    const-string v4, "DockWifi- set DOCK_HOTSPOT_ON to 0 in getPersistedDockWifiApEnabled"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3786
    goto :goto_0
.end method

.method private getPersistedWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2864
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2866
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 2871
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 2866
    goto :goto_0

    .line 2867
    :catch_0
    move-exception v1

    .line 2868
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2869
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2870
    const-string v2, "hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 2871
    goto :goto_0
.end method

.method private getPersistedWifiAssociateMode()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3975
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3980
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getWlanDetectionType()I

    move-result v3

    sget v4, Lcom/android/server/wifi/WifiServiceImpl;->WLAN_DETECTION_TYPE_ATT:I

    if-ne v3, v4, :cond_0

    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3982
    const/4 v2, 0x5

    .line 3989
    :goto_0
    return v2

    .line 3985
    :cond_0
    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3986
    :catch_0
    move-exception v1

    .line 3987
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wlan.custom.assocmode"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    const-string v3, "wifi_associate_manual"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getPersistedWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2836
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2838
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "wifi_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2839
    .local v2, "gWifiOn":I
    if-eqz v2, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .line 2842
    .end local v2    # "gWifiOn":I
    :cond_0
    :goto_0
    return v3

    .line 2840
    :catch_0
    move-exception v1

    .line 2841
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "wifi_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getSysHibernateMode()Z
    .locals 3

    .prologue
    .line 3292
    const-string v1, "sys.shutdown.hibernate.mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3293
    .local v0, "isOn":Z
    return v0
.end method

.method private getVzwAvoidBadConnectionEnabled()Z
    .locals 4

    .prologue
    .line 3635
    const-string v1, "WifiService"

    const-string v2, "getVzwAvoidBadConnectionEnabled()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->getVzwAvoidBadConnectionEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3640
    :goto_0
    return v1

    .line 3638
    :catch_0
    move-exception v0

    .line 3639
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVzwAvoidBadConnectionEnabled() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCurrentProfile(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1798
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1799
    .local v0, "currentUser":I
    if-ne p1, v0, :cond_0

    .line 1808
    :goto_0
    return v4

    .line 1802
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1803
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1804
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .line 1808
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isHotspotRestrictedFunction()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3442
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3443
    .local v0, "content":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 3444
    .local v1, "restricted":Z
    const-string v4, "hotspot_sprint_restriction"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 3445
    :goto_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSprintHotspotRestricted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    return v1

    :cond_0
    move v1, v3

    .line 3444
    goto :goto_0
.end method

.method private isMdmHotspotRestrictedFunction()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3509
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3510
    .local v0, "content":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 3511
    .local v1, "restricted":Z
    const-string v4, "hotspot_mdn_restriction"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 3512
    :goto_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMdmHotspotRestricted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    return v1

    :cond_0
    move v1, v3

    .line 3511
    goto :goto_0
.end method

.method private isMdmWifiRestrictedFunction()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3490
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3491
    .local v0, "content":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 3492
    .local v1, "restricted":Z
    const-string v4, "wifi_mdn_restriction"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 3493
    :goto_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMdmWifiRestricted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    return v1

    :cond_0
    move v1, v3

    .line 3492
    goto :goto_0
.end method

.method private isOwner(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    .line 1817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1818
    .local v2, "ident":J
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1820
    .local v6, "userId":I
    const/4 v1, 0x0

    .line 1821
    .local v1, "ownerUser":I
    if-ne v6, v1, :cond_0

    .line 1833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v7

    .line 1824
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 1825
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1826
    .local v4, "profile":Landroid/content/pm/UserInfo;
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_1

    .line 1833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1830
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v7, 0x0

    .line 1833
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private isWifiRestrictedFunction()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3423
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3424
    .local v0, "content":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 3425
    .local v1, "restricted":Z
    const-string v4, "wifi_sprint_restriction"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 3426
    :goto_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSprintWifiRestricted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    return v1

    :cond_0
    move v1, v3

    .line 3425
    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2357
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2364
    :goto_0
    return-void

    .line 2361
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 2
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2367
    iget v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2374
    :goto_0
    return-void

    .line 2371
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3229
    const-string v8, "usermanagement"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 3230
    .local v7, "usermanagementList":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 3232
    const-string v4, "plenty_set1"

    .line 3233
    .local v4, "key_plenty":Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3235
    .local v6, "usermanagement":Landroid/os/Bundle;
    const-string v1, "max_connection"

    .line 3236
    .local v1, "KEY_MAX_CONNECTION":Ljava/lang/String;
    const-string v0, "connection_array"

    .line 3238
    .local v0, "KEY_CONNECTION_ARRAY":Ljava/lang/String;
    const-string v5, "0"

    .line 3239
    .local v5, "max_connection":Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3240
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3241
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get max_connection:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotspot_max_connection"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3252
    :goto_0
    const-string v2, "0"

    .line 3253
    .local v2, "connection_array":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3254
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3255
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get connection_array:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hotspot_connection_array"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3266
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->updateCustomization()V

    .line 3268
    .end local v0    # "KEY_CONNECTION_ARRAY":Ljava/lang/String;
    .end local v1    # "KEY_MAX_CONNECTION":Ljava/lang/String;
    .end local v2    # "connection_array":Ljava/lang/String;
    .end local v4    # "key_plenty":Ljava/lang/String;
    .end local v5    # "max_connection":Ljava/lang/String;
    .end local v6    # "usermanagement":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 3245
    .restart local v0    # "KEY_CONNECTION_ARRAY":Ljava/lang/String;
    .restart local v1    # "KEY_MAX_CONNECTION":Ljava/lang/String;
    .restart local v4    # "key_plenty":Ljava/lang/String;
    .restart local v5    # "max_connection":Ljava/lang/String;
    .restart local v6    # "usermanagement":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 3246
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing max_connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3249
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v8, "WifiService"

    const-string v9, "Can\'t get max_connection"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3259
    .restart local v2    # "connection_array":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 3260
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing connection_array: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3263
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v8, "WifiService"

    const-string v9, "Can\'t get connection_array"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseXMLListHandler()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 3297
    const/4 v3, 0x0

    .line 3298
    .local v3, "fileReader":Ljava/io/FileReader;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3300
    .local v9, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 3301
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 3303
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileReader;

    const-string v11, "/system/etc/wifienablenotifylist.xml"

    invoke-direct {v4, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3305
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 3306
    .local v5, "isPkgTag":Z
    const/4 v6, 0x0

    .line 3308
    .local v6, "isWhiteTag":Z
    :try_start_1
    invoke-interface {v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3309
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 3310
    .local v1, "eventType":I
    :goto_0
    if-eq v14, v1, :cond_4

    .line 3311
    packed-switch v1, :pswitch_data_0

    .line 3350
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 3313
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3314
    .local v7, "strTag":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3315
    const-string v11, "WhiteList"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3316
    const/4 v6, 0x1

    goto :goto_1

    .line 3317
    :cond_1
    const-string v11, "Package"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3318
    const/4 v5, 0x1

    goto :goto_1

    .line 3325
    .end local v7    # "strTag":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3326
    .restart local v7    # "strTag":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3327
    const-string v11, "WhiteList"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3328
    const/4 v6, 0x0

    goto :goto_1

    .line 3329
    :cond_2
    const-string v11, "Package"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3330
    const/4 v5, 0x0

    goto :goto_1

    .line 3337
    .end local v7    # "strTag":Ljava/lang/String;
    :pswitch_2
    if-ne v14, v5, :cond_0

    .line 3338
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 3339
    .local v8, "strText":Ljava/lang/String;
    if-ne v14, v6, :cond_0

    .line 3340
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3341
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WifiEnabledNotificationList: WhiteList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 3352
    .end local v1    # "eventType":I
    .end local v8    # "strText":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 3353
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "isPkgTag":Z
    .end local v6    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3354
    const-string v11, "WifiService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3356
    if-eqz v3, :cond_3

    .line 3358
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v9

    .line 3356
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isPkgTag":Z
    .restart local v6    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v4, :cond_6

    .line 3358
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 3361
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 3359
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 3360
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v11, "WifiService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 3361
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 3359
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "isPkgTag":Z
    .end local v6    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 3360
    const-string v11, "WifiService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3356
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v3, :cond_5

    .line 3358
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 3361
    :cond_5
    :goto_5
    throw v11

    .line 3359
    :catch_3
    move-exception v0

    .line 3360
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v12, "WifiService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 3356
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isPkgTag":Z
    .restart local v6    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 3352
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "isPkgTag":Z
    .end local v6    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v0

    goto :goto_2

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isPkgTag":Z
    .restart local v6    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 3311
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private persistDockWifiApEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3798
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3801
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "dock_hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3802
    return-void

    .line 3799
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3801
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistDockWifiEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3791
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3794
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "dock_wifi_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3795
    return-void

    .line 3792
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3794
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistWifiAPEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2855
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2857
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2858
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->IsWifiApStatePersist:Z

    if-eqz v1, :cond_0

    .line 2859
    const-string v2, "hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2861
    :cond_0
    return-void

    .line 2859
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistWifiAssociateMode(I)V
    .locals 3
    .param p1, "isManual"    # I

    .prologue
    .line 3994
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3995
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3996
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3997
    const-string v1, "wlan.custom.assocmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    const-string v1, "wifi_associate_manual"

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3999
    return-void
.end method

.method private persistWifiOffloadEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 4162
    if-eqz p1, :cond_0

    .line 4163
    const-string v0, "WifiService"

    const-string v1, "WifiOffload: persistWifiOffloadEnabled 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    :goto_0
    return-void

    .line 4165
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "WifiOffload: persistWifiOffloadEnabled 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerDockModeReceiver()V
    .locals 4

    .prologue
    .line 3737
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->isSupportDockWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3738
    const-string v0, "WifiService"

    const-string v1, "DockWifi - Add ACTION_DOCK_EVENT (wifi) receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$8;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$8;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3777
    :goto_0
    return-void

    .line 3759
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "DockWifi - Add ACTION_DOCK_EVENT (hotspot) receiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$9;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$9;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 2168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2169
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2170
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2171
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2172
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2173
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2174
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2175
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2176
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2177
    return-void
.end method

.method private registerForHtcFeature()V
    .locals 3

    .prologue
    .line 2661
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2662
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2663
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2664
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2665
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2667
    const-string v1, "com.htc.admin.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2670
    const-string v1, "com.htc.hotspot.connectionrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2671
    const-string v1, "com.htc.wifi.action.WIFI_AP_DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2672
    const-string v1, "com.htc.wifi.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2674
    const-string v1, "com.htc.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2676
    const-string v1, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2678
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2681
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2684
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiServiceImpl$5;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2833
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    .prologue
    .line 2154
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$4;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    .line 2162
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2165
    return-void
.end method

.method private registerGanLiteV2Receiver()V
    .locals 4

    .prologue
    .line 4190
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$10;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$10;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.kineto.smartwifi.WFCState"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4222
    return-void
.end method

.method private registerMhsReceiver()V
    .locals 4

    .prologue
    .line 3071
    const-string v0, "WifiService"

    const-string v1, "registerMhsReceiver++"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I

    .line 3073
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mObserver:Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;

    .line 3074
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/ConnectivityManager;->CONTENT_URI_WIFI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mObserver:Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3075
    return-void
.end method

.method private registerQuickPowerRecevier()V
    .locals 4

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$6;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$6;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3690
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$7;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$7;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3729
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 2442
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$2000(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-result-object v1

    .line 2444
    .local v1, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2448
    .local v0, "hadLock":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2450
    .local v2, "ident":J
    if-eqz v0, :cond_0

    .line 2451
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 2452
    iget v4, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 2463
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2467
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    :goto_2
    return v0

    .line 2446
    .end local v0    # "hadLock":Z
    .end local v2    # "ident":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2454
    .restart local v0    # "hadLock":Z
    .restart local v2    # "ident":J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2465
    :catch_0
    move-exception v4

    .line 2467
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2457
    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2467
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2460
    :pswitch_2
    :try_start_3
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    .line 2582
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 2584
    .local v2, "removed":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    const-string v3, "WifiService"

    const-string v4, "removeMulticasterLocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    if-eqz v2, :cond_0

    .line 2587
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->unlinkDeathRecipient()V

    .line 2589
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2590
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 2593
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2595
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2598
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    :goto_0
    return-void

    .line 2596
    :catch_0
    move-exception v3

    .line 2598
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private resolveBatchedScannersLocked()V
    .locals 21

    .prologue
    .line 977
    new-instance v15, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v15}, Landroid/net/wifi/BatchedScanSettings;-><init>()V

    .line 978
    .local v15, "setting":Landroid/net/wifi/BatchedScanSettings;
    const/4 v13, 0x0

    .line 979
    .local v13, "responsibleWorkSource":Landroid/os/WorkSource;
    const/4 v12, 0x0

    .line 980
    .local v12, "responsibleUid":I
    const-wide/16 v10, 0x0

    .line 982
    .local v10, "responsibleCsph":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v16 .. v20}, Lcom/android/server/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    .line 1052
    :goto_0
    return-void

    .line 986
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    .line 987
    .local v9, "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    iget-object v14, v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 994
    .local v14, "s":Landroid/net/wifi/BatchedScanSettings;
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 996
    :cond_2
    const/16 v2, 0x14

    .line 1004
    .local v2, "currentChannelCount":I
    :cond_3
    :goto_2
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 1005
    const/16 v3, 0x1e

    .line 1009
    .local v3, "currentScanInterval":I
    :goto_3
    mul-int/lit16 v0, v2, 0xe10

    move/from16 v16, v0

    div-int v16, v16, v3

    move/from16 v0, v16

    int-to-double v4, v0

    .line 1011
    .local v4, "currentCsph":D
    cmpl-double v16, v4, v10

    if-lez v16, :cond_4

    .line 1012
    iget v12, v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->uid:I

    .line 1013
    iget-object v13, v9, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 1014
    move-wide v10, v4

    .line 1017
    :cond_4
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 1019
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 1021
    :cond_5
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 1024
    :cond_6
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 1026
    :cond_7
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 1028
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 1030
    :cond_8
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    iget v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 1033
    :cond_9
    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 1035
    :cond_a
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_11

    .line 1036
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_1

    .line 1037
    :cond_b
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 1038
    :cond_c
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1039
    .local v6, "i":Ljava/lang/String;
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 998
    .end local v2    # "currentChannelCount":I
    .end local v3    # "currentScanInterval":I
    .end local v4    # "currentCsph":D
    .end local v6    # "i":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_e
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1000
    .restart local v2    # "currentChannelCount":I
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    const-string v17, "A"

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    add-int/lit8 v2, v2, 0x8

    .line 1001
    :cond_f
    iget-object v0, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    const-string v17, "B"

    invoke-interface/range {v16 .. v17}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v2, v2, 0xa

    goto/16 :goto_2

    .line 1007
    :cond_10
    iget v3, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .restart local v3    # "currentScanInterval":I
    goto/16 :goto_3

    .line 1043
    .restart local v4    # "currentCsph":D
    :cond_11
    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    iget-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-eqz v16, :cond_1

    .line 1044
    :cond_12
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    goto/16 :goto_1

    .line 1049
    .end local v2    # "currentChannelCount":I
    .end local v3    # "currentScanInterval":I
    .end local v4    # "currentCsph":D
    .end local v9    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    .end local v14    # "s":Landroid/net/wifi/BatchedScanSettings;
    :cond_13
    invoke-virtual {v15}, Landroid/net/wifi/BatchedScanSettings;->constrain()V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    double-to-int v0, v10

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v12, v1, v13}, Lcom/android/server/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    goto/16 :goto_0
.end method

.method private setHotspotRestrictedFunction(Z)Z
    .locals 6
    .param p1, "restricted"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3431
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3432
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSprintHotspotRestricted(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    const-string v4, "hotspot_sprint_restriction"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3434
    if-ne p1, v2, :cond_0

    .line 3435
    const-string v1, "WifiService"

    const-string v4, "setSprintHotspotRestricted(true), disable hotspot"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3438
    :cond_0
    return v2

    :cond_1
    move v1, v3

    .line 3433
    goto :goto_0
.end method

.method private setMdmHotspotRestrictedFunction(Z)Z
    .locals 6
    .param p1, "restricted"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3498
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3499
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMdmHotspotRestricted(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    const-string v4, "hotspot_mdn_restriction"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3501
    if-ne p1, v2, :cond_0

    .line 3502
    const-string v1, "WifiService"

    const-string v4, "setMdmHotspotRestricted(true), disable hotspot"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3505
    :cond_0
    return v2

    :cond_1
    move v1, v3

    .line 3500
    goto :goto_0
.end method

.method private setMdmWifiRestrictedFunction(Z)Z
    .locals 6
    .param p1, "restricted"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3479
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3480
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMdmWifiRestricted(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    const-string v4, "wifi_mdn_restriction"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3482
    if-ne p1, v2, :cond_0

    .line 3483
    const-string v1, "WifiService"

    const-string v4, "setMdmWifiRestricted(true), disable wifi"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 3486
    :cond_0
    return v2

    :cond_1
    move v1, v3

    .line 3481
    goto :goto_0
.end method

.method private setParameterMHS(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3121
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    .line 3122
    iput-object p2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 3123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    .line 3124
    return-void
.end method

.method private setVzwAvoidBadConnectionEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3607
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVzwAvoidBadConnectionEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/HtcWifiWanDetect;->setVzwAvoidBadConnectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    const/4 v1, 0x1

    .line 3613
    :goto_0
    return v1

    .line 3611
    :catch_0
    move-exception v0

    .line 3612
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVzwAvoidBadConnectionEnabled() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setWifiApEnableInDockMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3841
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3842
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 3845
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode return due to hotspot already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3857
    :goto_0
    return-void

    .line 3848
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 3849
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 3850
    .local v0, "WifiState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3851
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode turn off Wifi then enable hotspot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 3855
    .end local v0    # "WifiState":I
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method

.method private setWifiApStatePersist(Z)V
    .locals 3
    .param p1, "persist"    # Z

    .prologue
    .line 2849
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setWifiApStatePersist] IsWifiApStatePersist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->IsWifiApStatePersist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", persist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->IsWifiApStatePersist:Z

    .line 2851
    return-void
.end method

.method private setWifiEnableInDockMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3860
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3861
    if-ne p1, v3, :cond_4

    .line 3862
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3863
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    :goto_0
    return-void

    .line 3866
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledByDock:Z

    .line 3867
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 3868
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode turn off hotspot then enable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3871
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 3874
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 3875
    :cond_5
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledByDock:Z

    goto :goto_0

    .line 3879
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledByDock:Z

    if-eqz v1, :cond_9

    .line 3880
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 3881
    .local v0, "suppState":Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_8

    .line 3884
    :cond_7
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 3892
    .end local v0    # "suppState":Landroid/net/wifi/SupplicantState;
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledByDock:Z

    goto/16 :goto_0

    .line 3887
    .restart local v0    # "suppState":Landroid/net/wifi/SupplicantState;
    :cond_8
    const-string v1, "WifiService"

    const-string v2, "DockWifi - We don\'t turn off wifi due to Wifi is connecting or connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3890
    .end local v0    # "suppState":Landroid/net/wifi/SupplicantState;
    :cond_9
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - We don\'t turn off wifi due to mWifiEnabledByDock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledByDock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setWifiRestrictedFunction(Z)Z
    .locals 6
    .param p1, "restricted"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3412
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3413
    .local v0, "content":Landroid/content/ContentResolver;
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSprintWifiRestricted(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    const-string v4, "wifi_sprint_restriction"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3415
    if-ne p1, v2, :cond_0

    .line 3416
    const-string v1, "WifiService"

    const-string v4, "setSprintWifiRestricted(true), disable wifi"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 3419
    :cond_0
    return v2

    :cond_1
    move v1, v3

    .line 3414
    goto :goto_0
.end method

.method private stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    monitor-enter v4

    .line 961
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    .line 962
    .local v2, "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {p1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    if-eqz p1, :cond_0

    .line 967
    .end local v2    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    .line 968
    .restart local v2    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 973
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 970
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 971
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->resolveBatchedScannersLocked()V

    .line 973
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    return-void
.end method

.method private updateDevicePolicy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4266
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 4267
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 4268
    .local v0, "allowStatus":I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDevicePolicy Exchange policy allowStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    if-nez v0, :cond_0

    .line 4270
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 4271
    invoke-virtual {p0, v6, v5}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4272
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mForbiddenByExchangePolicy:Z

    .line 4277
    :goto_0
    return-void

    .line 4275
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mForbiddenByExchangePolicy:Z

    goto :goto_0
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .locals 1

    .prologue
    .line 4177
    const/4 v0, 0x1

    return v0
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .locals 1

    .prologue
    .line 4183
    const/4 v0, 0x1

    return v0
.end method

.method public RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3906
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNotificationController;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetAutoInterworking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 3926
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3927
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HS20: SetAutoInterworking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->SetAutoInterworking(Z)V

    .line 3929
    return-void
.end method

.method public SetSignInStatus(II)Z
    .locals 1
    .param p1, "netId"    # I
    .param p2, "value"    # I

    .prologue
    .line 3945
    const/4 v0, 0x0

    return v0
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2538
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 2540
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireMulticastLock pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 2543
    :try_start_0
    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    .line 2544
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 2550
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2553
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2555
    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2558
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2560
    :goto_0
    return-void

    .line 2550
    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2556
    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catch_0
    move-exception v3

    .line 2558
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 2333
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 2337
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2341
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2342
    const/4 p4, 0x0

    .line 2344
    :cond_1
    if-eqz p4, :cond_2

    .line 2345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    .line 2347
    :cond_2
    if-nez p4, :cond_3

    .line 2348
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 2350
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;-><init>(Lcom/android/server/wifi/WifiServiceImpl;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2351
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v2

    .line 2352
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2353
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOpenNetworkToBlockedList(Ljava/lang/String;)I
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiNotificationController;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 1669
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1670
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1672
    const-string v1, "addOrUpdateNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v0, :cond_0

    .line 1676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1680
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1688
    :goto_1
    return v0

    .line 1678
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto :goto_0

    .line 1683
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1687
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1998
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2000
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 2001
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 653
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->setWiFiSIMAuthenticationEnabled(Z)V

    .line 658
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getPersistedWifiAssociateMode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 659
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setAssociationManual(I)Z

    .line 664
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    .line 665
    .local v1, "wifiEnabled":Z
    const-string v5, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    const-string v2, "enabled"

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForScanModeChange()V

    .line 669
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wifi/WifiServiceImpl$2;

    invoke-direct {v5, p0}, Lcom/android/server/wifi/WifiServiceImpl$2;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 726
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForBroadcasts()V

    .line 731
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerForHtcFeature()V

    .line 733
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerMhsReceiver()V

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->parseXMLListHandler()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    .line 746
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerDockModeReceiver()V

    .line 752
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerQuickPowerRecevier()V

    .line 755
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiController;->start()V

    .line 759
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->updateProfile()V

    .line 761
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getPersistedWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    .line 763
    .local v0, "wifiApEnabled":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 764
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 768
    invoke-virtual {p0, v8, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 769
    const-string v2, "WifiService"

    const-string v5, "setWifiApEnabledMhsRequest return false when boot. Set persistWifiAPEnabled to false"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 781
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;Landroid/os/Messenger;)Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 787
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mHtcWifiControlRoamOffload:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->initializeRoamOffloadObject(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)V

    .line 794
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v4}, Lcom/android/server/wifi/HtcWifiWanDetect;->getWanDetectionEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWanDetectionEnabled(Z)Z

    .line 795
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->isVzwAvoidBadConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 796
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v4}, Lcom/android/server/wifi/HtcWifiWanDetect;->getVzwAvoidBadConnectionEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/HtcWifiWanDetect;->setVzwAvoidBadConnectionEnabled(Z)V

    .line 801
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 806
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->registerGanLiteV2Receiver()V

    .line 809
    return-void

    .line 665
    .end local v0    # "wifiApEnabled":Z
    :cond_3
    const-string v2, "disabled"

    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 761
    goto :goto_1

    .line 773
    .restart local v0    # "wifiApEnabled":Z
    :cond_5
    invoke-virtual {p0, v8, v0}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_2

    .line 779
    :cond_6
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto :goto_2
.end method

.method public checkWifiApEnabledMhsRequest()I
    .locals 2

    .prologue
    .line 3134
    const-string v0, "WifiService"

    const-string v1, "checkWifiApEnabledMhsRequest:"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3143
    :goto_0
    return v0

    .line 3137
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getMhsUiProcessing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 3139
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 3140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3142
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->internal_htcSetupPermittedTether()V

    .line 3143
    iget v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2008
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2010
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearBlacklist()V

    .line 2011
    return-void
.end method

.method public decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 3272
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3273
    const-string v0, "WifiService"

    const-string v1, "Permission Denied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    .end local p1    # "enc":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "enc":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1747
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1748
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1752
    :goto_0
    return v0

    .line 1751
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 1577
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1578
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1579
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_0

    .line 2183
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    :goto_0
    return-void

    .line 2188
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Wi-Fi is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2189
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Stay-awake conditions: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "stay_on_while_plugged_in"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2192
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mMulticastEnabled "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastEnabled:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mMulticastDisabled "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2199
    const-string v14, "Latest scan results:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v13

    .line 2201
    .local v13, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2202
    .local v10, "nowMs":J
    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_4

    .line 2203
    const-string v14, "    BSSID              Frequency  RSSI    Age      SSID                                 Flags"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2205
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 2206
    .local v12, "r":Landroid/net/wifi/ScanResult;
    const-wide/16 v6, 0x0

    .line 2207
    .local v6, "ageSec":J
    const-wide/16 v4, 0x0

    .line 2208
    .local v4, "ageMilli":J
    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v14, v10, v14

    if-lez v14, :cond_1

    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 2209
    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v6, v14, v16

    .line 2210
    iget-wide v14, v12, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    rem-long v4, v14, v16

    .line 2212
    :cond_1
    const-string v8, " "

    .line 2213
    .local v8, "candidate":Ljava/lang/String;
    iget v14, v12, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    if-lez v14, :cond_2

    const-string v8, "+"

    .line 2214
    :cond_2
    const-string v15, "  %17s  %9d  %5d  %3d.%03d%s   %-32s  %s\n"

    const/16 v14, 0x8

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, v14

    const/4 v14, 0x1

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x2

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v16, v14

    const/4 v14, 0x5

    aput-object v8, v16, v14

    const/16 v17, 0x6

    iget-object v14, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v14, :cond_3

    const-string v14, ""

    :goto_2
    aput-object v14, v16, v17

    const/4 v14, 0x7

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v16, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_1

    :cond_3
    iget-object v14, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 2224
    .end local v4    # "ageMilli":J
    .end local v6    # "ageSec":J
    .end local v8    # "candidate":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "r":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2225
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Locks acquired: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksAcquired:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full high perf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksAcquired:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " scan"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2228
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Locks released: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullLocksReleased:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mFullHighPerfLocksReleased:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " full high perf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/WifiServiceImpl;->mScanLocksReleased:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " scan"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2232
    const-string v14, "Locks held:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v14, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1100(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiWatchdogStateMachine:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2236
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2238
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 2625
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2626
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableAggressiveHandover(I)V

    .line 2627
    return-void
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1722
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1723
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 1728
    :goto_0
    return v0

    .line 1727
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 4347
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enablePowerActiveForFotaDownload enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getCallingPid()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4349
    .local v2, "ident":J
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enablePowerActiveForFotaDownload enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getCallingPid()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    const/4 v0, 0x0

    .line 4351
    .local v0, "bRtn":Z
    if-eqz p1, :cond_0

    .line 4352
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4353
    const-string v1, "WifiService"

    const-string v4, "enable PowerActive for FOTA download"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    :goto_0
    return v0

    .line 4355
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v4, 0x1e

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4356
    const-string v1, "WifiService"

    const-string v4, "disable PowerActive for FOTA download"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePowerActiveMode(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 4325
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enablePowerActiveMode enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getCallingPid()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4327
    .local v2, "ident":J
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enablePowerActiveMode enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getCallingPid()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    const/4 v0, 0x0

    .line 4330
    .local v0, "bRtn":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4331
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 4332
    const-string v4, "wifi_pwr_active_mode"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4333
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4334
    const-string v4, "WifiService"

    const-string v5, "Enable Actvie mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4341
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4343
    return v0

    .line 4336
    :cond_0
    :try_start_1
    const-string v4, "wifi_pwr_active_mode"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4337
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4338
    const-string v4, "WifiService"

    const-string v5, "disable Actvie mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4341
    .end local v1    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2088
    if-nez p1, :cond_0

    .line 2089
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteAddress cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2092
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    .line 2093
    .local v0, "params":Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 2094
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;->enable:Z

    .line 2095
    new-instance v1, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiServiceImpl$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2096
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2100
    if-nez p1, :cond_0

    .line 2101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remoteMacAddress cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 2105
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 2615
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2616
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 2617
    return-void
.end method

.method public encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 3282
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 3283
    const-string v0, "WifiService"

    const-string v1, "Permission Denied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    .end local p1    # "enc":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "enc":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2325
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2330
    :goto_0
    return-void

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAggressiveHandover()I
    .locals 1

    .prologue
    .line 2630
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2631
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAggressiveHandover()I

    move-result v0

    return v0
.end method

.method public getAllowScansWithTraffic()I
    .locals 1

    .prologue
    .line 2640
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2641
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAllowScansWithTraffic()I

    move-result v0

    return v0
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2887
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2888
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssociationManual()I
    .locals 1

    .prologue
    .line 4002
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPersistAssociateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getAutoInterworkingState()Z
    .locals 1

    .prologue
    .line 3922
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getAutoInterworkingState()Z

    move-result v0

    return v0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 934
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 948
    :goto_0
    return-object v4

    .line 935
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 936
    .local v2, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 937
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 939
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 941
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 943
    :cond_1
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 944
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 946
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetBatchedScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 948
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getCaptivePortalState()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3958
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3960
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_captive_portal_enable"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 3964
    :goto_0
    return v2

    .line 3960
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3961
    :catch_0
    move-exception v1

    .line 3963
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_captive_portal_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 830
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetChannelList(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 834
    :goto_0
    return-object v0

    .line 833
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2876
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2877
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2122
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2123
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1638
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1639
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConfiguredNetworks(ILcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 1644
    :goto_0
    return-object v0

    .line 1643
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 1761
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1766
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2647
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 2648
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetConnectionStatistics(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v0

    .line 2652
    :goto_0
    return-object v0

    .line 2651
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 7

    .prologue
    .line 1926
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1927
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 1929
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    new-instance v4, Landroid/net/DhcpInfo;

    invoke-direct {v4}, Landroid/net/DhcpInfo;-><init>()V

    .line 1931
    .local v4, "info":Landroid/net/DhcpInfo;
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 1933
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->ipAddress:I

    .line 1937
    iget-object v6, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->netmask:I

    .line 1941
    :cond_0
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    if-eqz v6, :cond_1

    .line 1942
    iget-object v6, v0, Landroid/net/DhcpResults;->gateway:Ljava/net/InetAddress;

    check-cast v6, Ljava/net/Inet4Address;

    invoke-static {v6}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->gateway:I

    .line 1945
    :cond_1
    const/4 v2, 0x0

    .line 1946
    .local v2, "dnsFound":I
    iget-object v6, v0, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1947
    .local v1, "dns":Ljava/net/InetAddress;
    instance-of v6, v1, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 1948
    if-nez v2, :cond_5

    .line 1949
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns1:I

    .line 1953
    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    .line 1956
    :cond_3
    iget-object v5, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 1957
    .local v5, "serverAddress":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_4

    .line 1958
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->serverAddress:I

    .line 1960
    :cond_4
    iget v6, v0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v6, v4, Landroid/net/DhcpInfo;->leaseDuration:I

    .line 1962
    return-object v4

    .line 1951
    .restart local v1    # "dns":Ljava/net/InetAddress;
    :cond_5
    check-cast v1, Ljava/net/Inet4Address;

    .end local v1    # "dns":Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v6

    iput v6, v4, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_0
.end method

.method public getDockWifiApAutoEnabled()Z
    .locals 3

    .prologue
    .line 3816
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3818
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiApAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 3

    .prologue
    .line 3834
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3836
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1463
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getDongleScanList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEapSimAkaSlot()I
    .locals 1

    .prologue
    .line 3525
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3526
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getEapSimAkaSlot()I

    move-result v0

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1903
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1904
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getHotspotNumAllowedChannels()I
    .locals 1

    .prologue
    .line 2928
    const/16 v0, 0xb

    return v0
.end method

.method public getHotspotState()I
    .locals 1

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1059
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetHotspotState()I

    move-result v0

    return v0
.end method

.method public getHtcNewSenseWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1542
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHTCWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1543
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    return-object v0
.end method

.method public getHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1515
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1520
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->getHTCWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1521
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1522
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1526
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1527
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1528
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1532
    :goto_1
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1533
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1534
    return-object v0

    .line 1524
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1530
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMostPreferredNetwork()I
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getMostPreferredNetwork()I

    move-result v0

    return v0
.end method

.method public getOpenNetworkBlockedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3910
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNotificationController;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 1

    .prologue
    .line 4317
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPPPoE:Lcom/android/server/connectivity/PPPoE;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PPPoE;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1653
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceReadCredentialPermission()V

    .line 1654
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1655
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetPrivilegedConfiguredNetwork(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 1659
    :goto_0
    return-object v0

    .line 1658
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2881
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2882
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getRequestedList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1776
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1777
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1778
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1780
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1782
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v4

    .line 1784
    :cond_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->isCurrentProfile(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1785
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1787
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 1789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    .line 1601
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1602
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetSupportedFeatures(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 1606
    :goto_0
    return v0

    .line 1605
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVFAutoJoin(I)I
    .locals 7
    .param p1, "netID"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4058
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4059
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVFAutoJoin netID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4060
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4061
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p1, :cond_0

    .line 4062
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"VodafoneWiFi\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4063
    const-string v4, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4064
    const-string v3, "WifiService"

    const-string v4, "VodafoneWiFi: auto-join"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return v2

    .line 4068
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string v2, "WifiService"

    const-string v4, "VodafoneWiFi: NO auto-join"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4069
    goto :goto_0

    .line 4072
    :cond_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"Free_Swisscom_Auto_Login\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4073
    const-string v4, "persist.sys.wifi.vf.FSC.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4074
    const-string v3, "WifiService"

    const-string v4, "Free_Swisscom_Auto_Login: auto-join"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4078
    :cond_4
    const-string v2, "WifiService"

    const-string v4, "Free_Swisscom_Auto_Login: NO auto-join"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4079
    goto :goto_0

    .line 4082
    :cond_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"Swisscom_Auto_Login\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4083
    const-string v4, "persist.sys.wifi.vf.SC.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 4086
    goto :goto_0

    .line 4088
    :cond_6
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"SFR WiFi Mobile\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4089
    const-string v4, "persist.sys.wifi.vf.SFRM.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4090
    const-string v3, "WifiService"

    const-string v4, "SFR WiFi Mobile: auto-join"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4094
    :cond_7
    const-string v2, "WifiService"

    const-string v4, "SFR WiFi Mobile: NO auto-join"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4095
    goto/16 :goto_0

    .line 4098
    :cond_8
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "\"SFR wifi public\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4099
    const-string v4, "persist.sys.wifi.vf.SFRP.auto"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4100
    const-string v3, "WifiService"

    const-string v4, "SFR wifi public: auto-join"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4104
    :cond_9
    const-string v2, "WifiService"

    const-string v4, "SFR wifi public: NO auto-join"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4105
    goto/16 :goto_0
.end method

.method public getVerboseLoggingLevel()I
    .locals 1

    .prologue
    .line 2620
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2621
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getVerboseLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getWanDetectionEnabled()Z
    .locals 4

    .prologue
    .line 3619
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->isVzwAvoidBadConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3620
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getVzwAvoidBadConnectionEnabled()Z

    move-result v1

    .line 3629
    :goto_0
    return v1

    .line 3624
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "getWanDetectionEnabled()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->getWanDetectionEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 3627
    :catch_0
    move-exception v0

    .line 3628
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWanDetectionEnabled() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1504
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1505
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1391
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiBatteryUsageHint()J
    .locals 8

    .prologue
    .line 4379
    const-string v1, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4380
    .local v0, "InterfaceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 4381
    .local v2, "total":J
    return-wide v2
.end method

.method public getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1484
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1302
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v0

    return-object v0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 3

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    if-eqz v0, :cond_0

    .line 4150
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiHtcOffload;->getWifiOffloadEnabled()Z

    move-result v0

    .line 4152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/HtcWifiSettingsUtil;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 2112
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2113
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2114
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mClientHandler:Lcom/android/server/wifi/WifiServiceImpl$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWifidisplayApEnabled()Z

    move-result v0

    return v0
.end method

.method public getWifidisplayApState()I
    .locals 1

    .prologue
    .line 1412
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1413
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifidisplayApState()I

    move-result v0

    return v0
.end method

.method public getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1399
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 906
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 2523
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 2525
    const-string v0, "WifiService"

    const-string v1, "initializeMulticastFiltering"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2529
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2530
    monitor-exit v1

    .line 2535
    :goto_0
    return-void

    .line 2532
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 2534
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public internal_htcSetupPermittedTether()V
    .locals 8

    .prologue
    .line 3016
    const/4 v6, 0x0

    .line 3018
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/net/ConnectivityManager;->CONTENT_URI_WIFI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3019
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3021
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I

    .line 3022
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHS Permitted Tether update - WIFI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    if-eqz v6, :cond_0

    .line 3027
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3030
    :cond_0
    :goto_0
    return-void

    .line 3023
    :catch_0
    move-exception v7

    .line 3024
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3026
    if-eqz v6, :cond_0

    .line 3027
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3026
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 3027
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 1

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupportDualBand()Z

    move-result v0

    return v0
.end method

.method public isHotspotRestricted()Z
    .locals 1

    .prologue
    .line 3407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3408
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isHotspotRestrictedFunction()Z

    move-result v0

    return v0
.end method

.method public isMdmHotspotRestricted()Z
    .locals 1

    .prologue
    .line 3474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3475
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMdmHotspotRestrictedFunction()Z

    move-result v0

    return v0
.end method

.method public isMdmWifiRestricted()Z
    .locals 1

    .prologue
    .line 3462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3463
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMdmWifiRestrictedFunction()Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2603
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2605
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2606
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    .line 1569
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1570
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public isSupport5GHotspot()Z
    .locals 1

    .prologue
    .line 3369
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3370
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupport5GHotspot()Z

    move-result v0

    return v0
.end method

.method public isSupportApSta()Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupportApSta()Z

    move-result v0

    return v0
.end method

.method public isSupportHS20()Z
    .locals 1

    .prologue
    .line 3918
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->isSupportHS20()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isWifiEnableNotifyPackageName(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4246
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 4259
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 4250
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 4254
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiEnabledNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4255
    .local v1, "pack":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 4259
    .end local v1    # "pack":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 4246
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isWifiRestricted()Z
    .locals 1

    .prologue
    .line 3395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3396
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiRestrictedFunction()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 817
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 821
    :goto_0
    return v0

    .line 820
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 900
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->requestBatchedScanPoll()V

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 1593
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1594
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1595
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 1585
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1586
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1587
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 7

    .prologue
    .line 2563
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMulticastChangePermission()V

    .line 2565
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseMulticastLock pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2568
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 2569
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticastDisabled:I

    .line 2570
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2571
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2572
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;

    .line 2573
    .local v1, "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2574
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->removeMulticasterLocked(II)V

    .line 2571
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2577
    .end local v1    # "m":Lcom/android/server/wifi/WifiServiceImpl$Multicaster;
    :cond_1
    monitor-exit v5

    .line 2578
    return-void

    .line 2577
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v1

    .line 2435
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1699
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1701
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->isOwner(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1702
    const-string v1, "WifiService"

    const-string v2, "Remove is not authorized for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :goto_0
    return v0

    .line 1706
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 1707
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_0

    .line 1709
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 7

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetLinkLayerStats(Lcom/android/internal/util/AsyncChannel;)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v6

    .line 1619
    .local v6, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v6, :cond_0

    .line 1621
    new-instance v0, Landroid/net/wifi/WifiActivityEnergyInfo;

    .end local v0    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    const/4 v1, 0x3

    iget v2, v6, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    iget v3, v6, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    iget v4, v6, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    iget v5, v6, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    sub-int/2addr v4, v5

    iget v5, v6, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(IIIII)V

    .restart local v0    # "energyInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_0
    move-object v1, v0

    .line 1629
    .end local v6    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :goto_0
    return-object v1

    .line 1628
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x0

    .line 914
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 915
    if-eqz p3, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    .line 919
    invoke-virtual {p3}, Landroid/os/WorkSource;->clearNames()V

    .line 921
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v3, :cond_1

    .line 929
    :goto_0
    return v2

    .line 922
    :cond_1
    new-instance v1, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v1, p1}, Landroid/net/wifi/BatchedScanSettings;-><init>(Landroid/net/wifi/BatchedScanSettings;)V

    .line 923
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .local v1, "requested":Landroid/net/wifi/BatchedScanSettings;
    invoke-virtual {v1}, Landroid/net/wifi/BatchedScanSettings;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_0

    .line 924
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :cond_2
    new-instance v0, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;-><init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 925
    .local v0, "r":Lcom/android/server/wifi/WifiServiceImpl$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    monitor-enter v3

    .line 926
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->resolveBatchedScannersLocked()V

    .line 928
    monitor-exit v3

    .line 929
    const/4 v2, 0x1

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_0

    .line 928
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resetDhcpConfig()V
    .locals 3

    .prologue
    .line 2896
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2899
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->resetDhcpConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2901
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2903
    return-void

    .line 2901
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public retryLanDetection()Z
    .locals 4

    .prologue
    .line 3565
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3566
    const-string v1, "WifiService"

    const-string v2, "retryLanDetection"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->retryLanDetection()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3572
    :goto_0
    return v1

    .line 3570
    :catch_0
    move-exception v0

    .line 3571
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryLanDetection() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retryWanDetection()Z
    .locals 4

    .prologue
    .line 3577
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3578
    const-string v1, "WifiService"

    const-string v2, "retryWanDetection"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->retryWanDetection()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3584
    :goto_0
    return v1

    .line 3582
    :catch_0
    move-exception v0

    .line 3583
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryWanDetection() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 1845
    const/4 v0, 0x1

    .line 1846
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1847
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 1848
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 1851
    :goto_0
    return v1

    .line 1850
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 2635
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2636
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setAllowScansWithTraffic(I)V

    .line 2637
    return-void
.end method

.method public setAssociationManual(I)Z
    .locals 3
    .param p1, "isManual"    # I

    .prologue
    const/4 v2, 0x1

    .line 4006
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4007
    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 4009
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setAssociationManual(Z)Z

    .line 4013
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAssociateMode(I)V

    .line 4014
    return v2

    .line 4011
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setAssociationManual(Z)Z

    goto :goto_0
.end method

.method public setCaptivePortalState(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3950
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAPTIVE PORTAL: setCaptivePortalState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3952
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "wifi_captive_portal_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3954
    return-void

    .line 3952
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCmccTimer(Z)Z
    .locals 2
    .param p1, "isTimerOn"    # Z

    .prologue
    .line 4116
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->setCmccTimer(Z)Z

    move-result v0

    .line 4117
    .local v0, "bRtn":Z
    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1865
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1868
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1870
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1874
    return-void

    .line 1872
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3805
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3807
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiApAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiApInDockMode:Z

    .line 3809
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->persistDockWifiApEnabled(Z)V

    .line 3810
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 3811
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnableInDockMode(Z)V

    .line 3812
    :cond_0
    return v3
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3823
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 3824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3825
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z

    .line 3827
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->persistDockWifiEnabled(Z)V

    .line 3828
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 3829
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnableInDockMode(Z)V

    .line 3830
    :cond_0
    return v3
.end method

.method public setEapSimAkaSlot(I)Z
    .locals 1
    .param p1, "slot"    # I

    .prologue
    .line 3521
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setEapSimAkaSlot(I)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1886
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1887
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1888
    :cond_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1892
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setHotspotAutoChannel(I)V
    .locals 3
    .param p1, "autoChannel"    # I

    .prologue
    .line 2932
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotspotAutoChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHotspotAutoChannel(I)V

    .line 2934
    return-void
.end method

.method public setHotspotRestricted(Z)Z
    .locals 1
    .param p1, "restricted"    # Z

    .prologue
    .line 3400
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceSprintPermission()V

    .line 3401
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3402
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setHotspotRestrictedFunction(Z)Z

    .line 3403
    const/4 v0, 0x1

    return v0
.end method

.method public setHtcNewSenseWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2914
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2915
    const-string v0, "WifiService"

    const-string v1, "setHtcNewSenseWifiApConfiguration enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHTCWifiAPConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2906
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2907
    const-string v0, "WifiService"

    const-string v1, "setHtcWifiApConfiguration enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setHTCWifiAPConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setMdmHotspotRestricted(Z)Z
    .locals 1
    .param p1, "restricted"    # Z

    .prologue
    .line 3467
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMdmPermission()V

    .line 3468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3469
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setMdmHotspotRestrictedFunction(Z)Z

    .line 3470
    const/4 v0, 0x1

    return v0
.end method

.method public setMdmWifiRestricted(Z)Z
    .locals 1
    .param p1, "restricted"    # Z

    .prologue
    .line 3455
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceMdmPermission()V

    .line 3456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3457
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setMdmWifiRestrictedFunction(Z)Z

    .line 3458
    const/4 v0, 0x1

    return v0
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setMostPreferredNetwork(I)Z

    move-result v0

    return v0
.end method

.method public setPersistWifiApEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 4125
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 4126
    return-void
.end method

.method public setVFAutoJoin(ZI)Z
    .locals 5
    .param p1, "isAutojoin"    # Z
    .param p2, "netID"    # I

    .prologue
    .line 4019
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4020
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVFAutoJoin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    if-eqz p1, :cond_5

    .line 4022
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4023
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p2, :cond_0

    .line 4024
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VF SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " auto-join: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4025
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"VodafoneWiFi\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4026
    const-string v2, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Free_Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4028
    const-string v2, "persist.sys.wifi.vf.FSC.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4029
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4030
    const-string v2, "persist.sys.wifi.vf.SC.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4031
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR WiFi Mobile\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4032
    const-string v2, "persist.sys.wifi.vf.SFRM.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    :cond_4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR wifi public\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4034
    const-string v2, "persist.sys.wifi.vf.SFRP.auto"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4038
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4039
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_6

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p2, :cond_6

    .line 4040
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VF SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " auto-join: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"VodafoneWiFi\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4042
    const-string v2, "persist.sys.wifi.vf.VFWiFi.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    :cond_7
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Free_Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4044
    const-string v2, "persist.sys.wifi.vf.FSC.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    :cond_8
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"Swisscom_Auto_Login\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4046
    const-string v2, "persist.sys.wifi.vf.SC.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    :cond_9
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR WiFi Mobile\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4048
    const-string v2, "persist.sys.wifi.vf.SFRM.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    :cond_a
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\"SFR wifi public\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4050
    const-string v2, "persist.sys.wifi.vf.SFRP.auto"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4054
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    const/4 v2, 0x1

    return v2
.end method

.method public setVzwAvoidBadConnectionDialogEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3553
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVzwAvoidBadConnectionDialogEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/HtcWifiWanDetect;->setVzwAvoidBadConnectionDialogEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3556
    const/4 v1, 0x1

    .line 3559
    :goto_0
    return v1

    .line 3557
    :catch_0
    move-exception v0

    .line 3558
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVzwAvoidBadConnectionDialogEnabled() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWanDetectionDialogEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3536
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->isVzwAvoidBadConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3537
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setVzwAvoidBadConnectionDialogEnabled(Z)Z

    move-result v1

    .line 3547
    :goto_0
    return v1

    .line 3541
    :cond_0
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWanDetectionDialogEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWanDetectionDialogEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3544
    const/4 v1, 0x1

    goto :goto_0

    .line 3545
    :catch_0
    move-exception v0

    .line 3546
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWanDetectionDialogEnabled() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWanDetectionEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 3590
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->isVzwAvoidBadConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3591
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setVzwAvoidBadConnectionEnabled(Z)Z

    move-result v1

    .line 3601
    :goto_0
    return v1

    .line 3595
    :cond_0
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWanDetectionEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/HtcWifiWanDetect;->setSettingsWanDetectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3598
    const/4 v1, 0x1

    goto :goto_0

    .line 3599
    :catch_0
    move-exception v0

    .line 3600
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWanDetectionEnabled() Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3601
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1553
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1554
    if-nez p1, :cond_0

    .line 1561
    :goto_0
    return-void

    .line 1556
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1559
    :cond_1
    const-string v0, "WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 9
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1313
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiApEnabled enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getCallingPid()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->IsUpdatingWifiState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1318
    const-string v5, "WifiService"

    const-string v6, "Updating WifiState.... sleep 1 s"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->checkWifiApMhs(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1327
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1379
    :goto_1
    return-void

    .line 1332
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p2, :cond_2

    .line 1333
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    .line 1334
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    .line 1335
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEnableMHS:Z

    .line 1336
    iput-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 1345
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 1347
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1350
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isHotspotRestrictedFunction()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMdmHotspotRestrictedFunction()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    if-ne p2, v3, :cond_4

    const-string v5, "net.frisbee.enabled"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1351
    const-string v3, "WifiService"

    const-string v4, "Forbidden by mHotspotRestricted"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1358
    :cond_4
    if-ne p2, v3, :cond_5

    .line 1359
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1360
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 1361
    .local v0, "allowStatus":I
    if-nez v0, :cond_5

    .line 1362
    const-string v3, "WifiService"

    const-string v4, "Forbidden by Exchange policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1368
    .end local v0    # "allowStatus":I
    .end local v1    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    .line 1369
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1370
    .local v2, "um":Landroid/os/UserManager;
    const-string v5, "no_config_tethering"

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1371
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1374
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1375
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v6, 0x2600a

    if-eqz p2, :cond_8

    :goto_2
    invoke-virtual {v5, v6, v3, v4, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_8
    move v3, v4

    goto :goto_2

    .line 1377
    :cond_9
    const-string v3, "WifiService"

    const-string v4, "Invalid WifiConfiguration"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1321
    .end local v2    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 8
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2951
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabledMhsRequest enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getCallingPid()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 3011
    :goto_0
    return v2

    .line 2955
    :cond_0
    if-ne p2, v2, :cond_1

    .line 2956
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 2957
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 2958
    .local v0, "allowStatus":I
    if-nez v0, :cond_1

    .line 2959
    const-string v2, "WifiService"

    const-string v4, "Forbidden by Exchange policy"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2960
    goto :goto_0

    .line 2965
    .end local v0    # "allowStatus":I
    .end local v1    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isHotspotRestrictedFunction()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMdmHotspotRestrictedFunction()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-ne p2, v2, :cond_3

    const-string v4, "net.frisbee.enabled"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2966
    const-string v2, "WifiService"

    const-string v4, "Forbidden by mHotspotRestricted"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2967
    goto :goto_0

    .line 2971
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 2973
    const-string v4, "net.frisbee.enabled"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2974
    const-string v4, "WifiService"

    const-string v5, "ignore MHS for Frisbee"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setParameterMHS(ZLandroid/net/wifi/WifiConfiguration;)V

    .line 2976
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    .line 2977
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    .line 2978
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->checkWifiApRemindDialog()Z

    goto :goto_0

    .line 2982
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    if-ne v4, v2, :cond_5

    if-ne p2, v2, :cond_5

    .line 2983
    const-string v2, "WifiService"

    const-string v4, "MHS is processing"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2984
    goto :goto_0

    .line 2986
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isMHSEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez p2, :cond_6

    .line 2987
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    .line 2988
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z

    .line 2989
    invoke-virtual {p0, v7, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 2997
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->IsUpdatingWifiState()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2998
    const-string v2, "WifiService"

    const-string v4, "Updating WifiState.... don\'t try to do MHS hotspot"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2999
    goto/16 :goto_0

    .line 3003
    :cond_7
    invoke-direct {p0, p2, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setParameterMHS(ZLandroid/net/wifi/WifiConfiguration;)V

    .line 3004
    iget-object v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->setMhsUiProcessing(Z)V

    .line 3006
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    .line 3007
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mCm:Landroid/net/ConnectivityManager;

    const-string v4, "hotspot"

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(Ljava/lang/String;)Z

    .line 3008
    const-string v2, "WifiService"

    const-string v4, "MHS HTC_PERMITTED_TETHER_PROGRASSING"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z

    move v2, v3

    .line 3011
    goto/16 :goto_0
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2922
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 2923
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    .line 2924
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1488
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1489
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1493
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1494
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I

    .line 1495
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 1
    .param p1, "channel"    # I
    .param p2, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1443
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z
    .locals 1
    .param p1, "channel"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "guest_key"    # [B
    .param p4, "transId"    # I

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceAccessPermission()V

    .line 1448
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1479
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->setWifiDisplayUnscan(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setWifiEnableNotify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "labelStr"    # Ljava/lang/String;

    .prologue
    .line 4231
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 4232
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4233
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnableNotify: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", labelStr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4235
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v2, 0x26014

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4236
    .local v0, "msg":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4237
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4238
    const/4 v1, 0x1

    .line 4241
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return v1

    .line 4240
    :cond_0
    :try_start_1
    const-string v1, "WifiService"

    const-string v2, "setWifiEnableNotify: Wifi Toggle already Enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4241
    const/4 v1, 0x0

    goto :goto_0

    .line 4231
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 11
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1105
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWifiEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const-string v8, "WifiService"

    const-string v9, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-ne p1, v7, :cond_0

    .line 1114
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1115
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 1116
    .local v0, "allowStatus":I
    if-nez v0, :cond_0

    .line 1117
    const-string v7, "WifiService"

    const-string v8, "Forbidden by Exchange policy"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    .end local v0    # "allowStatus":I
    .end local v1    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    monitor-exit p0

    return v6

    .line 1126
    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v8}, Lcom/android/server/wifi/HtcWifiWanDetect;->isVzwAvoidBadConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    .line 1129
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mHtcWifiWanDetect:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v8, p1}, Lcom/android/server/wifi/HtcWifiWanDetect;->setWanDetectionDialogEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1145
    :goto_1
    if-nez p1, :cond_1

    :try_start_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifidisplayApEnabled()Z

    move-result v3

    .line 1147
    .local v3, "wifiApEnabled":Z
    if-eqz v3, :cond_1

    .line 1148
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1149
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 1156
    .end local v3    # "wifiApEnabled":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isWifiRestrictedFunction()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->isMdmWifiRestrictedFunction()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    if-ne p1, v7, :cond_4

    .line 1157
    const-string v7, "WifiService"

    const-string v8, "Forbidden by mWifiRestricted"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 1130
    :catch_0
    move-exception v2

    .line 1131
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWanDetectionDialogEnabled() Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1139
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->setCmccNotiFlag(Z)V

    goto :goto_1

    .line 1166
    :cond_4
    if-ne p1, v7, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v6

    const/16 v8, 0xd

    if-eq v6, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v6

    const/16 v8, 0xc

    if-ne v6, v8, :cond_6

    .line 1167
    :cond_5
    const-string v6, "WifiService"

    const-string v8, "setWifiEnabled=true, hotspot is on, turn off hotspot firstly!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1174
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    if-ne v6, v7, :cond_7

    .line 1175
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiSettingsStore;->SetWifiStatePersist(Z)V

    .line 1186
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v4

    .line 1188
    .local v4, "ident":J
    :try_start_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v6

    if-nez v6, :cond_8

    .line 1218
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto/16 :goto_0

    .line 1177
    .end local v4    # "ident":J
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiSettingsStore;->SetWifiStatePersist(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1196
    .restart local v4    # "ident":J
    :cond_8
    :try_start_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v6, v6, Lcom/android/server/wifi/WifiStateMachine;->mRcsOnline:Z

    if-ne v6, v7, :cond_9

    if-nez p1, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    sget-object v8, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v6, v8, :cond_9

    .line 1200
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->CmccRmsSender()V

    .line 1205
    :cond_9
    if-nez p1, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v6, v6, Lcom/android/server/wifi/WifiStateMachine;->mSilentHungEnabled:Z

    if-ne v6, v7, :cond_a

    .line 1211
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v8, 0x200ff

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1218
    :cond_a
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Lcom/android/server/wifi/WifiStateMachine;->UpdatingWifiState(Z)V

    .line 1229
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v8, 0x26008

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    move v6, v7

    .line 1230
    goto/16 :goto_0

    .line 1218
    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public setWifiEnabledPersist(ZZ)Z
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "persist"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1235
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1236
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabledPersist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " persist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string v3, "WifiService"

    const-string v4, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getWifidisplayApEnabled()Z

    move-result v2

    .line 1245
    .local v2, "wifiApEnabled":Z
    if-eqz v2, :cond_0

    .line 1246
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1247
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiServiceImpl;->persistWifiAPEnabled(Z)V

    .line 1251
    .end local v2    # "wifiApEnabled":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/WifiSettingsStore;->SetWifiStatePersist(Z)V

    .line 1260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1262
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 1282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    :goto_0
    return v6

    .line 1269
    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiStateMachine;->mSilentHungEnabled:Z

    if-ne v3, v6, :cond_2

    .line 1275
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const v4, 0x200ff

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1286
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26008

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1282
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 4135
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    if-eqz v0, :cond_0

    .line 4136
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-static {p1}, Lcom/android/server/wifi/WifiHtcOffload;->handleWifiOffloadEnable(Z)Z

    move-result v0

    .line 4138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_on"

    invoke-static {v0, v1, p1}, Lcom/android/server/wifi/HtcWifiSettingsUtil;->setGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setWifiPowerSavingMode(I)Z
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 4362
    const/4 v0, 0x0

    .line 4363
    .local v0, "bRtn":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4364
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4365
    const-string v1, "WifiService"

    const-string v2, "do not let wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    :goto_0
    return v0

    .line 4367
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 4368
    const-string v1, "WifiService"

    const-string v2, "allow wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiRestricted(Z)Z
    .locals 1
    .param p1, "restricted"    # Z

    .prologue
    .line 3388
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceSprintPermission()V

    .line 3389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 3390
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiRestrictedFunction(Z)Z

    .line 3391
    const/4 v0, 0x1

    return v0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1428
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifidisplayApEnabled enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1431
    return-void
.end method

.method public declared-synchronized setWifidisplayEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1422
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public startDongleScan()V
    .locals 1

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1453
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->startDongleScan()V

    .line 1454
    return-void
.end method

.method public startDongleSingleCscan(I)V
    .locals 1
    .param p1, "channel"    # I

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1458
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startDongleSingleCscan(I)V

    .line 1459
    return-void
.end method

.method public startDongleWakeUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1467
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 1468
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startDongleWakeUp(Ljava/lang/String;)V

    .line 1469
    return-void
.end method

.method public startNetworkSelection(Z)V
    .locals 2
    .param p1, "reconnect"    # Z

    .prologue
    .line 4156
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    if-nez v0, :cond_0

    .line 4159
    :goto_0
    return-void

    .line 4157
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "[ScoreAP] + startNetworkSelection by CNE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-static {p1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->handleStartNetworkSelection(Z)V

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 4307
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPPPoE:Lcom/android/server/connectivity/PPPoE;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PPPoE;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 4308
    return-void
.end method

.method public startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "settings"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 847
    if-eqz p1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_HARDWARE"

    const-string v3, "LocationHardware"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance v0, Landroid/net/wifi/ScanSettings;

    invoke-direct {v0, p1}, Landroid/net/wifi/ScanSettings;-><init>(Landroid/net/wifi/ScanSettings;)V

    .line 852
    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .local v0, "settings":Landroid/net/wifi/ScanSettings;
    invoke-virtual {v0}, Landroid/net/wifi/ScanSettings;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 853
    const-string v1, "WifiService"

    const-string v2, "invalid scan setting"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 865
    .end local v0    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :goto_0
    return-void

    .end local p1    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local v0    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_0
    move-object p1, v0

    .line 857
    .end local v0    # "settings":Landroid/net/wifi/ScanSettings;
    .restart local p1    # "settings":Landroid/net/wifi/ScanSettings;
    :cond_1
    if-eqz p2, :cond_2

    .line 858
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWorkSourcePermission()V

    .line 861
    invoke-virtual {p2}, Landroid/os/WorkSource;->clearNames()V

    .line 863
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiServiceImpl;->scanRequestCounter:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto :goto_0
.end method

.method public startWifi()V
    .locals 2

    .prologue
    .line 1970
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1976
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1978
    return-void
.end method

.method public startWifiOffload(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    if-eqz v0, :cond_0

    .line 4143
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-static {p1}, Lcom/android/server/wifi/WifiHtcOffload;->handleStartWifiOffload(Z)Z

    move-result v0

    .line 4145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1404
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return-void

    .line 1404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceChangePermission()V

    .line 954
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 1

    .prologue
    .line 4312
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mPPPoE:Lcom/android/server/connectivity/PPPoE;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PPPoE;->stopPPPOE()V

    .line 4313
    return-void
.end method

.method public stopWifi()V
    .locals 2

    .prologue
    .line 1985
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->enforceConnectivityInternalPermission()V

    .line 1990
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1991
    return-void
.end method

.method public declared-synchronized stopWpsRegistrar()V
    .locals 1

    .prologue
    .line 1408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->stopWpsRegistrar()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    monitor-exit p0

    return-void

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 2406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2407
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2408
    .local v3, "pid":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2409
    const/4 p2, 0x0

    .line 2411
    :cond_0
    if-eqz p2, :cond_1

    .line 2412
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiServiceImpl;->enforceWakeSourcePermission(II)V

    .line 2414
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2416
    .local v0, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2417
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1800(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 2418
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 2419
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2425
    .end local v2    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2426
    :catch_0
    move-exception v6

    .line 2428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2430
    :goto_0
    return-void

    .line 2421
    .restart local v2    # "index":I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->access$1900(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 2422
    .local v5, "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 2423
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 2424
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiServiceImpl;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    .line 2425
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2423
    :cond_3
    :try_start_4
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2428
    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public updateWifiState()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4284
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getPersistedWifiApEnabled()Z

    move-result v0

    .line 4286
    .local v0, "wifiApEnabled":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiServiceImpl;->getPersistedWifiEnabled()Z

    move-result v1

    .line 4287
    .local v1, "wifiEnabled":Z
    const-string v5, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiService updating with Wi-Fi "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    const-string v2, "enabled"

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " and Hotspot "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    if-eqz v0, :cond_5

    .line 4293
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    if-ne v2, v3, :cond_3

    .line 4294
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApStatePersist(Z)V

    .line 4298
    :goto_2
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 4303
    :cond_0
    :goto_4
    return-void

    .line 4287
    :cond_1
    const-string v2, "disabled"

    goto :goto_0

    :cond_2
    const-string v2, "disabled"

    goto :goto_1

    .line 4296
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApStatePersist(Z)V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 4298
    goto :goto_3

    .line 4300
    :cond_5
    if-eqz v1, :cond_0

    .line 4301
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiServiceImpl;->mEmergencyModeChanged:Z

    if-nez v2, :cond_6

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    goto :goto_4

    :cond_6
    move v3, v4

    goto :goto_5
.end method
