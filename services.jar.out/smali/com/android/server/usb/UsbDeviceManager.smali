.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler;,
        Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final ACCESSORY_REQUEST_TIMEOUT:I = 0x2710

.field private static final ACCESSORY_START_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_accessory"

.field private static final ATSMODE_PATH:Ljava/lang/String; = "/sys/devices/platform/android_usb/ats"

.field private static final AUDIO_MODE_NONE:I = 0x0

.field private static final AUDIO_MODE_SOURCE:I = 0x1

.field private static final AUDIO_SOURCE_PCM_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_audio_source/pcm"

.field private static final BOOT_MODE_PROPERTY:Ljava/lang/String; = "ro.bootmode"

.field private static final DEBUG:Z = true

.field private static final FUNCTIONS_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/functions"

.field private static final HAL_PIXEL_FORMAT_BGRA_8888:I = 0x5

.field private static final HAL_PIXEL_FORMAT_RGBA_5551:I = 0x6

.field private static final HAL_PIXEL_FORMAT_RGB_565:I = 0x4

.field private static final HAL_PIXEL_FORMAT_RGB_888:I = 0x3

.field private static final HOST_OS_TYPE:Ljava/lang/String; = "/sys/devices/platform/android_usb/os_type"

.field private static final HSML_12_PIXEL_FORMAT_ARGB888:I = 0x0

.field private static final HSML_12_PIXEL_FORMAT_MAX:I = 0x5

.field private static final HSML_12_PIXEL_FORMAT_RGB555:I = 0x3

.field private static final HSML_12_PIXEL_FORMAT_RGB565:I = 0x2

.field private static final HSML_12_PIXEL_FORMAT_RGB888:I = 0x1

.field private static final HSML_PIXEL_FORMAT_ARGB888:I = 0x0

.field private static final HSML_PIXEL_FORMAT_MAX:I = 0x4

.field private static final HSML_PIXEL_FORMAT_RGB555:I = 0x2

.field private static final HSML_PIXEL_FORMAT_RGB565:I = 0x1

.field private static final HSM_DETECT_VAL_DISABLE:Ljava/lang/String; = "0"

.field private static final HSM_DETECT_VAL_ENABLE:Ljava/lang/String; = "1"

.field private static final HSM_DETECT_VAL_INIT:Ljava/lang/String; = "0"

.field private static final HTCMODE_COLOR_FORMAT_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_pixel_format"

.field private static final HTCMODE_EVENT_MAXFPS:I = 0xbbf

.field private static final HTCMODE_EVENT_STATE:I = 0xbbe

.field private static final HTCMODE_HEIGHT_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_height"

.field private static final HTCMODE_HSML_VER_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_projector2/client_ver"

.field private static final HTCMODE_MAXFPS_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_maxfps"

.field private static final HTCMODE_PATH:Ljava/lang/String; = "/sys/devices/platform/android_usb/usb_denied"

.field private static final HTCMODE_STATE_CONNECTED:I = 0x1

.field private static final HTCMODE_STATE_DISCONNECTED:I = 0x2

.field private static final HTCMODE_STATE_PROJECTING:I = 0x3

.field private static final HTCMODE_STATE_V1_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/htcmode"

.field private static final HTCMODE_STATE_V2_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/mirror_link"

.field private static final HTCMODE_WIDTH_PATH:Ljava/lang/String; = "/sys/devices/virtual/android_usb/android0/f_projector2/client_width"

.field private static final MASS_STORAGE_FILE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_mass_storage/lun/file"

.field private static final MSG_BOOT_COMPLETED:I = 0x4

.field private static final MSG_ENABLE_ADB:I = 0x1

.field private static final MSG_SET_CURRENT_FUNCTIONS:I = 0x2

.field private static final MSG_SET_CURRENT_FUNCTION_EXT:I = 0xb

.field private static final MSG_SYSTEM_READY:I = 0x3

.field private static final MSG_UPDATE_CONNECT2PC:I = 0xa

.field private static final MSG_UPDATE_HOST_CABLE:I = 0x7

.field private static final MSG_UPDATE_HOST_MODE:I = 0x6

.field private static final MSG_UPDATE_HTCMODE:I = 0x8

.field private static final MSG_UPDATE_PERF_LOCK:I = 0xd

.field private static final MSG_UPDATE_PROJECTOR1:I = 0xc

.field private static final MSG_UPDATE_PROJECTOR2:I = 0x9

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_USER_SWITCHED:I = 0x5

.field private static final RNDIS_ETH_ADDR_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/f_rndis/ethaddr"

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String;

.field private static final UIS_PROP_HOST_INTF:Ljava/lang/String; = "net.usb0.isharing.host"

.field private static final UIS_PROP_HOST_INTF2:Ljava/lang/String; = "net.usb0.isharing.host2"

.field private static final UIS_PROP_HSM_DETECT:Ljava/lang/String; = "persist.sys.usb.hsm_detect"

.field private static final UIS_PROP_MPDEC_FORCE_SINGLE:Ljava/lang/String; = "sys.mpctl.single"

.field private static final UIS_PROP_OPERATOR:Ljava/lang/String; = "ro.cdma.home.operator.alpha"

.field private static final UIS_PROP_PRODUCT:Ljava/lang/String; = "ro.build.product"

.field private static final UIS_PROP_SENSE_VER:Ljava/lang/String; = "ro.build.sense.version"

.field private static final UPDATE_DELAY:I = 0x3e8

.field private static final USB_CONNECT2PC_PATH:Ljava/lang/String; = "/sys/class/switch/usb_connect2pc/state"

.field private static final USB_CONN_PC_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_connect2pc"

.field private static final USB_DIAG_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/usb_diag"

.field private static final USB_HOST_CABLE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final USB_HOST_MODE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/platform/msm_otg"

.field private static final USB_HOST_MODE_MATCH2:Ljava/lang/String; = "DEVPATH=/devices/msm_dwc3/f9200000.dwc3"

.field private static final USB_HSML_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/prj2_status"

.field private static final USB_PERF_LOCK_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/USB_PERF"

.field private static final USB_SCSI_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/scsi_cmd"

.field private static final USB_STATE_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"

.field private static final bADD_DISABLE_CPU1:Z = false

.field private static final cACM_CFG_MAC_ON:I = 0x3

.field private static final cACM_CFG_NONE:I = 0x0

.field private static final cDEFAULT_KERNEL_FUNCTIONS_ADB_MTP:Ljava/lang/String; = "mtp,adb,mass_storage"

.field private static final cszHSM_NEW_PID_SUPPORT:Ljava/lang/String; = "/sys/module/g_android/parameters/hsm_newpid"

.field private static miAcmEnabledCfg:I


# instance fields
.field private bAddPerfMonitor:Z

.field private isSpecificProduct:I

.field private mAccessoryModeRequestTime:J

.field private mAccessoryStrings:[Ljava/lang/String;

.field private mAcmEnabled:Z

.field private mAdbEnabled:Z

.field private mAdbNotificationShown:Z

.field private mAudioSourceEnabled:Z

.field private mBootCompleted:Z

.field private mConnect2Pc:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

.field private mDefaultKernelFunctions:Ljava/lang/String;

.field private mDiagEnabled:Z

.field private mDiagMdmEnabled:Z

.field private mDiagState:I

.field private mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field private final mHasUsbAccessory:Z

.field private mHostCable:I

.field private mHtc_Mode:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLock:Ljava/lang/Object;

.field private mModemEnabled:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private mProjector1StateIsPlug:Z

.field private mProjector2State:I

.field private mSerialEnabled:Z

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbPerfLock:I

.field private mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

.field mUsbnetService2:Lcom/android/server/UsbnetService;

.field mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

.field private mUseUsbNotification:Z

.field private mbSmartUsb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x3

    sput v0, Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager;->bAddPerfMonitor:Z

    .line 221
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 231
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I

    .line 233
    iput v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I

    .line 234
    iput v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbPerfLock:I

    .line 241
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    .line 242
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    .line 243
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService2:Lcom/android/server/UsbnetService;

    .line 245
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 255
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    .line 256
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z

    .line 257
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z

    .line 258
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z

    .line 266
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    .line 267
    iput v5, p0, Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I

    .line 268
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 269
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 290
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 1984
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 403
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 405
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 406
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.usb.accessory"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 407
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 409
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->readOemUsbOverrideConfig()V

    .line 411
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 412
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "[USBNET][UsbDeviceManager] mHandler = new UsbHandler done"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "accessory attached at boot"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 419
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 422
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 423
    .local v2, "secureAdbEnabled":Z
    const-string v3, "1"

    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 425
    .local v0, "dataEncrypted":Z
    if-eqz v2, :cond_2

    const-string v3, "1"

    const-string v6, "ro.sf"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 426
    :goto_0
    if-eqz v2, :cond_3

    const-string v3, "1"

    const-string v6, "ro.atsdebug"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v4

    .line 428
    :goto_1
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 429
    new-instance v3, Lcom/android/server/usb/UsbDebuggingManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    .line 432
    :cond_1
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "Usbnet Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v3, Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-direct {v3, p1, v8}, Lcom/htc/net/usbnet/UsbnetStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    .line 434
    new-instance v3, Lcom/android/server/UsbnetService;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetStateTracker:Lcom/htc/net/usbnet/UsbnetStateTracker;

    invoke-direct {v3, p1, v4}, Lcom/android/server/UsbnetService;-><init>(Landroid/content/Context;Lcom/htc/net/usbnet/UsbnetStateTracker;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService2:Lcom/android/server/UsbnetService;

    .line 435
    const-string v3, "usbnet"

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService2:Lcom/android/server/UsbnetService;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 436
    return-void

    :cond_2
    move v2, v5

    .line 425
    goto :goto_0

    :cond_3
    move v2, v5

    .line 426
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbPerfLock:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbPerfLock:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mbSmartUsb:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I

    return p1
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I

    return v0
.end method

.method static synthetic access$1602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 84
    sput p0, Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I

    return p0
.end method

.method static synthetic access$1700(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->needsOemUsbOverride()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method static synthetic access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->bAddPerfMonitor:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/usb/UsbDeviceManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->updateFlingerOptions(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/htc/net/usbnet/IUsbnetController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbDeviceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/usb/UsbDeviceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mDiagState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    .end local p1    # "function":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 564
    .restart local p1    # "function":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 568
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object p1, p0

    .line 570
    goto :goto_0
.end method

.method private static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 597
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private htcmode_get_attribute(Ljava/lang/String;)I
    .locals 4
    .param p1, "szAttrFileName"    # Ljava/lang/String;

    .prologue
    .line 2007
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2012
    :goto_0
    return v1

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, "sEx":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static initRndisAddress()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 540
    const/4 v0, 0x6

    .line 541
    .local v0, "ETH_ALEN":I
    const/4 v7, 0x6

    new-array v2, v7, [I

    .line 543
    .local v2, "address":[I
    aput v12, v2, v11

    .line 545
    const-string v7, "ro.serialno"

    const-string v8, "1234567890ABCDEF"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, "serial":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 548
    .local v6, "serialLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 549
    rem-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    xor-int/2addr v8, v9

    aput v8, v2, v7

    .line 548
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 551
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aget v10, v2, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aget v10, v2, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    aget v10, v2, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aget v10, v2, v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    aget v10, v2, v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v15

    const/4 v10, 0x5

    const/4 v11, 0x5

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "addrString":Ljava/lang/String;
    :try_start_0
    const-string v7, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_1
    return-void

    .line 555
    :catch_0
    move-exception v3

    .line 556
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeGetAudioMode()I
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private needsOemUsbOverride()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1882
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return v1

    .line 1884
    :cond_1
    const-string v2, "ro.bootmode"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "usbFunctions"    # Ljava/lang/String;

    .prologue
    .line 1889
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 1903
    .end local p1    # "usbFunctions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1891
    .restart local p1    # "usbFunctions":Ljava/lang/String;
    :cond_1
    const-string v4, "ro.bootmode"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "bootMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1894
    .local v2, "overrides":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 1895
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1896
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1897
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM USB override: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object p1, v4

    goto :goto_0
.end method

.method private readOemUsbOverrideConfig()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1860
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1863
    .local v2, "configList":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1864
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 1865
    .local v1, "config":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1866
    .local v4, "items":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 1867
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 1868
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    .line 1870
    :cond_0
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1871
    .local v6, "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_1

    .line 1872
    new-instance v6, Ljava/util/LinkedList;

    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1873
    .restart local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mOemModeMap:Ljava/util/Map;

    aget-object v8, v4, v10

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    :cond_1
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x1

    aget-object v8, v4, v8

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1864
    .end local v6    # "overrideList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1879
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_3
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 574
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 576
    aget-object v4, v3, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 577
    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 575
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-nez v4, :cond_2

    .line 581
    const-string v4, "none"

    .line 593
    :goto_1
    return-object v4

    .line 583
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 585
    aget-object v2, v3, v1

    .line 586
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 588
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 593
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private startAccessoryMode()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 512
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v5, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 515
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAudioMode()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 517
    .local v1, "enableAudio":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_4

    move v0, v3

    .line 520
    .local v0, "enableAccessory":Z
    :goto_2
    const/4 v2, 0x0

    .line 522
    .local v2, "functions":Ljava/lang/String;
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 523
    const-string v2, "accessory,audio_source"

    .line 531
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J

    .line 533
    invoke-virtual {p0, v2, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v0    # "enableAccessory":Z
    .end local v1    # "enableAudio":Z
    .end local v2    # "functions":Ljava/lang/String;
    :cond_3
    move v1, v4

    .line 515
    goto :goto_1

    .restart local v1    # "enableAudio":Z
    :cond_4
    move v0, v4

    .line 517
    goto :goto_2

    .line 525
    .restart local v0    # "enableAccessory":Z
    .restart local v2    # "functions":Ljava/lang/String;
    :cond_5
    if-eqz v0, :cond_6

    .line 526
    const-string v2, "accessory"

    goto :goto_3

    .line 527
    :cond_6
    if-eqz v1, :cond_2

    .line 528
    const-string v2, "audio_source"

    goto :goto_3
.end method

.method private updateFlingerOptions(I)I
    .locals 12
    .param p1, "state"    # I

    .prologue
    .line 2018
    :try_start_0
    const-string v9, "SurfaceFlinger"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2019
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 2020
    const-string v7, "android.ui.ISurfaceComposer"

    .line 2021
    .local v7, "szDescriptor":Ljava/lang/String;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2023
    .local v1, "data":Landroid/os/Parcel;
    const-string v9, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2026
    const/4 v4, 0x0

    .line 2029
    .local v4, "iHSML_Version12":I
    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/class/android_usb/android0/f_projector2/client_ver"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2035
    :goto_0
    :try_start_2
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HSML] updateFlingerOptions: iHSML_Version12="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const-string v9, "/sys/devices/virtual/android_usb/android0/f_projector2/client_width"

    invoke-direct {p0, v9}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v8

    .line 2038
    .local v8, "width":I
    if-gez v8, :cond_1

    .line 2095
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v4    # "iHSML_Version12":I
    .end local v7    # "szDescriptor":Ljava/lang/String;
    .end local v8    # "width":I
    :goto_1
    return v8

    .line 2030
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "iHSML_Version12":I
    .restart local v7    # "szDescriptor":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2031
    .local v6, "sEx":Ljava/io/FileNotFoundException;
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "[HSML] This kernel does not have HSML Ver1.2 support"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2089
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    .end local v4    # "iHSML_Version12":I
    .end local v6    # "sEx":Ljava/io/FileNotFoundException;
    .end local v7    # "szDescriptor":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 2091
    .local v6, "sEx":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "[HSML] RemoteException"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2095
    .end local v6    # "sEx":Landroid/os/RemoteException;
    :cond_0
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 2032
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "iHSML_Version12":I
    .restart local v7    # "szDescriptor":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 2033
    .local v6, "sEx":Ljava/lang/Exception;
    :try_start_3
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v10, "[HSML] HTCMODE_HSML_VER_PATH: "

    invoke-static {v9, v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2040
    .end local v6    # "sEx":Ljava/lang/Exception;
    .restart local v8    # "width":I
    :cond_1
    const-string v9, "/sys/devices/virtual/android_usb/android0/f_projector2/client_height"

    invoke-direct {p0, v9}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v3

    .line 2041
    .local v3, "height":I
    if-gez v3, :cond_2

    move v8, v3

    .line 2042
    goto :goto_1

    .line 2043
    :cond_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2044
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2046
    const-string v9, "/sys/devices/virtual/android_usb/android0/f_projector2/client_pixel_format"

    invoke-direct {p0, v9}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v0

    .line 2047
    .local v0, "colorFormat":I
    if-gez v0, :cond_3

    move v8, v0

    .line 2048
    goto :goto_1

    .line 2050
    :cond_3
    if-nez v4, :cond_4

    .line 2053
    const/4 v9, 0x1

    if-lt v0, v9, :cond_4

    const/4 v9, 0x4

    if-gt v0, v9, :cond_4

    .line 2055
    add-int/lit8 v0, v0, 0x1

    .line 2058
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 2077
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HSML] Unsupport pixel format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :goto_3
    const-string v9, "/sys/devices/virtual/android_usb/android0/f_projector2/client_maxfps"

    invoke-direct {p0, v9}, Lcom/android/server/usb/UsbDeviceManager;->htcmode_get_attribute(Ljava/lang/String;)I

    move-result v5

    .line 2082
    .local v5, "maxfps":I
    if-gez v5, :cond_5

    move v8, v5

    .line 2083
    goto :goto_1

    .line 2060
    .end local v5    # "maxfps":I
    :pswitch_0
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 2064
    :pswitch_1
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 2068
    :pswitch_2
    const/4 v9, 0x6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 2073
    :pswitch_3
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 2084
    .restart local v5    # "maxfps":I
    :cond_5
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2085
    const/16 v9, 0xbbe

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v2, v9, v1, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2058
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 1
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 1910
    :cond_0
    return-void
.end method

.method public bCheckSuppFunc(Ljava/lang/String;)Z
    .locals 4
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1800
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBNET] bCheckSuppFunc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    if-nez p1, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return v0

    .line 1805
    :cond_1
    const-string v1, "ipt_enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ipt_disable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ipt_connected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1808
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearUsbDebuggingKeys()V
    .locals 2

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->clearUsbDebuggingKeys()V

    .line 1973
    return-void

    .line 1970
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot clear Usb Debugging keys, UsbDebuggingManager not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public denyUsbDebugging()V
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDebuggingManager;->denyUsbDebugging()V

    .line 1916
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    if-eqz v0, :cond_1

    .line 1980
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDebuggingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 1982
    :cond_1
    return-void
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getUsbDriveStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1952
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "[USBNET] getUsbDriveStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v2, :cond_0

    .line 1954
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :goto_0
    return v1

    .line 1959
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v2}, Lcom/htc/net/usbnet/IUsbnetController;->getUsbDriveStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1960
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "sEx":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1931
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "[USBNET] getUsbStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v2, :cond_0

    .line 1933
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :goto_0
    return v1

    .line 1938
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v2}, Lcom/htc/net/usbnet/IUsbnetController;->getUsbStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    .local v0, "sEx":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1814
    const/4 v0, -0x1

    .line 1816
    .local v0, "iParam":I
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] isFunctionEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    if-nez p1, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return v2

    .line 1821
    :cond_1
    const-string v3, "ipt_enable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1822
    const/4 v0, 0x1

    .line 1828
    :cond_2
    :goto_1
    if-ltz v0, :cond_0

    .line 1830
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    if-nez v3, :cond_5

    .line 1831
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to connect to usbnet service!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1823
    :cond_3
    const-string v3, "ipt_disable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1824
    const/4 v0, 0x0

    goto :goto_1

    .line 1825
    :cond_4
    const-string v3, "ipt_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1826
    const/4 v0, 0x2

    goto :goto_1

    .line 1835
    :cond_5
    :try_start_0
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] mUsbnetService.UsbMiscControl_IPT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    invoke-interface {v3, v0}, Lcom/htc/net/usbnet/IUsbnetController;->UsbMiscControl_IPT(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1837
    :catch_0
    move-exception v1

    .line 1838
    .local v1, "sEx":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 1785
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 1786
    .local v0, "currentAccessory":Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_0

    .line 1787
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no accessory attached"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1789
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match current accessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1793
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1795
    .end local v1    # "error":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;)V

    .line 1796
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public setCurrentFunctionExt(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "bParam"    # Z

    .prologue
    .line 1919
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunctionExt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") bParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    if-eqz p1, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    .line 1922
    :cond_0
    return-void
.end method

.method public setCurrentFunctions(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 1846
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentFunctions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    .line 1848
    return-void
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMassStorageBackingFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1851
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1853
    :cond_0
    :try_start_0
    const-string v1, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-static {v1, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    :goto_0
    return-void

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to write to /sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUsbDriveStatus(Z)Z
    .locals 3
    .param p1, "bAllowUsb"    # Z

    .prologue
    .line 1946
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] setUsbDriveStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v0, "setUsbDriveStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctionExt(Ljava/lang/String;Z)V

    .line 1948
    const/4 v0, 0x1

    return v0
.end method

.method public setUsbStatus(Z)Z
    .locals 3
    .param p1, "bAllowUsb"    # Z

    .prologue
    .line 1925
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] setUsbStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const-string v0, "setUsbStatus"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctionExt(Ljava/lang/String;Z)V

    .line 1927
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .locals 13

    .prologue
    const/16 v12, 0x2000

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 451
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v8, "systemReady"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, "massStorageSupported":Z
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v4

    .line 460
    .local v4, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 461
    .local v3, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v6

    .line 462
    :goto_0
    if-nez v1, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z

    .line 466
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "adb_enabled"

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z

    if-eqz v9, :cond_3

    :goto_2
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_3
    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I

    if-eqz v5, :cond_4

    .line 475
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 476
    .local v2, "powerManager":Landroid/os/PowerManager;
    iget v5, p0, Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I

    packed-switch v5, :pswitch_data_0

    .line 496
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "[USBNET] It is not specific product"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    :goto_4
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v5, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 504
    new-instance v5, Landroid/content/IntentFilter;

    sget-object v6, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_ON:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 505
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v6, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_OFF:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 508
    const-string v5, "usbnet"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/net/usbnet/IUsbnetController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;

    .line 509
    return-void

    :cond_1
    move v1, v7

    .line 461
    goto :goto_0

    :cond_2
    move v5, v7

    .line 462
    goto :goto_1

    :cond_3
    move v6, v7

    .line 466
    goto :goto_2

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "ADB_ENABLED is restricted."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 478
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    :pswitch_0
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "[USBNET] It is specific product1, get PowerManager service and set CPU_FREQ_HIGHEST"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-eqz v2, :cond_0

    .line 483
    const/4 v5, 0x5

    const-string v6, "UsbDeviceManager"

    invoke-virtual {v2, v12, v5, v6}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 484
    const v5, 0x8000

    const-string v6, "UsbDeviceManager"

    invoke-virtual {v2, v5, v10, v6}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    goto :goto_4

    .line 488
    :pswitch_1
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "[USBNET] It is specific product2, get PowerManager service and set CPU_FREQ_MEDIUM"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-eqz v2, :cond_0

    .line 491
    const-string v5, "UsbDeviceManager"

    invoke-virtual {v2, v12, v11, v5}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 492
    const v5, 0x8000

    const-string v6, "UsbDeviceManager"

    invoke-virtual {v2, v5, v10, v6}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    goto :goto_4

    .line 500
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_4
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v6, "[USBNET] It is not specific product"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
