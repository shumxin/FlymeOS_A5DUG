.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$PMS2Handler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$QuickBootReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_OOBE_TIMEOUT:Ljava/lang/String; = "com.htc.oobe.OOBE_TIMEOUT"

.field private static final ATT_OOBE_R2G_HOME_ACTIVITY:Ljava/lang/String; = "com.synchronoss.dcs.att.r2g.DCSMainActivity"

.field private static final ATT_OOBE_R2G_PACKAGE_NAME:Ljava/lang/String; = "com.synchronoss.dcs.att.r2g"

.field private static final CPU_LOCK_MASK:I = 0xf000

.field private static final DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final DEBUG_SECURITY_ON:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_DESKDOCK_DIM_SCREEN_VALUE:I = 0xa

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DESKDOCK_DIM_SCREEN:Ljava/lang/String; = "deskdock_dim_screen"

.field private static final DESKDOCK_MILLISECOND_PER_UNIT:I = 0xea60

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static DISABLE_LOW_POWER_MODE:Z = false

.field private static final HTC_OOBE_HOME_ACTIVITY:Ljava/lang/String; = "com.htc.android.htcsetupwizard.MainActivity"

.field private static final HTC_OOBE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final HTC_OOBE_USER_OPERATED:Ljava/lang/String; = "OOBE_USER_OPERATED"

.field private static final MSG_CHECK_IF_OOBE_STATUS_FINISHED:I = 0xa

.field private static final MSG_CHECK_IF_OOBE_STATUS_FINISHED_TIMEOUT:I = 0xb

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SCREEN_OFF:I = 0x1

.field private static final MSG_SEND_CLEAR_SCREEN_TIMEOUT_TASK:I = 0x8

.field private static final MSG_SEND_PSENSOR_NEAR_MONITOR_TIMEOUT_TASK:I = 0xc

.field private static final MSG_USER_ACTIVITY_EVENT_TIMEOUT:I = 0x9

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final OOBE_DEFAULT:I = -0x1

.field private static final OOBE_FINISH:I = 0x1

.field private static final OOBE_PROP_FINISH:I = 0x1

.field private static final OOBE_PROP_UNFINISH:I = 0x0

.field private static final OOBE_UNFINISH:I = 0x0

.field private static final POWER_HINT_INTERACTION:I = 0x2

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field private static final SCREEN_AUTO_BRIGHTNESS_MAX:Ljava/lang/String; = "screen_auto_brightness_max"

.field private static final SCREEN_ENTER_DIM_IN_DONGLE_MODE:I = 0x32c8

.field private static final SCREEN_ENTER_DIM_IN_MIRROR_OR_MIRACAST_MODE:I = 0x493e0

.field private static final SEND_CLEAR_SCREEN_TIMEOUT_DELAY_VALUE:I = 0x0

.field private static final SYS_PROP_OOBE_DONE:Ljava/lang/String; = "persist.sys.pms.oobe.done"

.field private static final SYS_PROP_OOBE_OPERATED:Ljava/lang/String; = "persist.sys.pms.oobe.operated"

.field private static final TAG:Ljava/lang/String; = "PMS"

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z = false

.field private static WAIT_FOR_SUSPEND_TO_COMPLETE:I = 0x0

.field private static final WAKEFULNESS_ASLEEP:I = 0x0

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKEFULNESS_DOZING:I = 0x3

.field private static final WAKEFULNESS_DREAMING:I = 0x2

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static doneNativeSetAutoSuspend:Z

.field private static forceScreenDim:Z

.field private static mCondition:Landroid/os/ConditionVariable;

.field private static mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

.field private static startGoToSleepByShutdown:Z


# instance fields
.field private final DEFAULT_OOBE_MONITOR_TIMEOUT:I

.field private final DEFAULT_PSENSOR_NEAR_MONITOR_MAX_TIMEOUT:I

.field private final DEFAULT_SYSTEM_TIMEOUT:I

.field private mADTalkingDetected:Z

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBootAnimationCount:I

.field private mBootCompleted:Z

.field private mClearScreenTimeoutTask:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCpuFreqMaxCount:I

.field private mCpuFreqMinCount:I

.field private mCpuNumMaxCount:I

.field private mCpuNumMinCount:I

.field private mCpuPerfCount:I

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDeskModeEnabled:Z

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHasSetTimeout:Z

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingOOBESuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private final mHtcCpuCtrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

.field private mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

.field private mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

.field private mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

.field private mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

.field private mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

.field private mInteractive:Z

.field private mInteractiveChanging:Z

.field private mIsPowered:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastSleepTime:J

.field private mLastUserActivityEvent:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mOOBEInstalled:Z

.field private final mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mPMS2Handler:Landroid/os/Handler;

.field private mPMS2HandlerThread:Landroid/os/HandlerThread;

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerSaverHandler:Landroid/os/Handler;

.field private mPreScreenDimDuration:I

.field private mPreScreenOffTimeout:I

.field private mPreUserActivitySummary:I

.field private mPreWakefulness:I

.field private mProximityPositive:Z

.field private mQuickbootEnabled:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenAutoBrightnessPercentageSetting:I

.field private mScreenAutoBrightnessPercentageSettingDefault:I

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenOffDelayForDeskDock:I

.field private mScreenOffTimeoutSetting:I

.field private mScreenTimeout_Always:I

.field private mScreenTimeout_Once:I

.field private mScreenTimeout_System:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mShutdownCalled:Z

.field private final mShutdownLock:Ljava/lang/Object;

.field private mSleepTimeoutSetting:I

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mUserActivitySummary:I

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mWakeLockSummary:I

.field private mWakeLockSummaryLog:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakefulness:I

.field private mWakefulnessLog:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

.field private mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

.field private runHtcPowerSaverCheck:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    .line 596
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/power/PowerManagerService;->WAIT_FOR_SUSPEND_TO_COMPLETE:I

    .line 597
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mCondition:Landroid/os/ConditionVariable;

    .line 599
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->startGoToSleepByShutdown:Z

    .line 600
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->doneNativeSetAutoSuspend:Z

    .line 608
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    .line 690
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 694
    sput-boolean v1, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 796
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 331
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    .line 407
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 439
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 444
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 449
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 455
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 458
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 461
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 464
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    .line 513
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    .line 514
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    .line 515
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    .line 516
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    .line 518
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 539
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mBootAnimationCount:I

    .line 543
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    .line 544
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    .line 573
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    .line 589
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_SYSTEM_TIMEOUT:I

    .line 590
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 591
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    .line 592
    const v0, 0xea60

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 598
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownLock:Ljava/lang/Object;

    .line 603
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mShutdownCalled:Z

    .line 604
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mQuickbootEnabled:Z

    .line 612
    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityEvent:I

    .line 620
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    .line 622
    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    .line 627
    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    .line 633
    new-instance v0, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    .line 650
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 656
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    .line 658
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    .line 682
    const v0, 0x36ee80

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_OOBE_MONITOR_TIMEOUT:I

    .line 686
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    .line 698
    const v0, 0x6ddd00

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->DEFAULT_PSENSOR_NEAR_MONITOR_MAX_TIMEOUT:I

    .line 702
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 703
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

    .line 3308
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 4181
    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    .line 797
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 798
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PMS"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 800
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 801
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 803
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 806
    const-string v0, "PowerManagerService.OOBE"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 808
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 809
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 814
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    .line 817
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->nativeInit()V

    .line 818
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V

    .line 819
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V

    .line 820
    monitor-exit v1

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcPowerSaver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/power/PowerManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/power/PowerManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/power/PowerManagerService;[B[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wipeSystemInternal([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10700(Lcom/android/server/power/PowerManagerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->customizeScreenOffDelayLocked(IIZ)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->informEndCallInternal()V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->informOOBEStatusChangeInternal(Z)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessPercentageSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->fetchCurrentBrightnessValueInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getProximitySensorActiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->watchdogInternal()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    return-wide v0
.end method

.method static synthetic access$11600(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/WorkSource;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireHtcCpuCtrlInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/android/server/power/PowerManagerService;->WAIT_FOR_SUSPEND_TO_COMPLETE:I

    return v0
.end method

.method static synthetic access$11800(Lcom/android/server/power/PowerManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/power/PowerManagerService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$1476(Lcom/android/server/power/PowerManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->cancelPsensorNearMonitorMsg()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerService;JI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;JIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->screenStateNotifier(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->checkIfOOBEStatusFinished(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startMonitorOOBEStatus()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mQuickbootEnabled:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->startGoToSleepByShutdown:Z

    return v0
.end method

.method static synthetic access$3502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 110
    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->startGoToSleepByShutdown:Z

    return p0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->doneNativeSetAutoSuspend:Z

    return v0
.end method

.method static synthetic access$3602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 110
    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->doneNativeSetAutoSuspend:Z

    return p0
.end method

.method static synthetic access$3700()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z

    return p1
.end method

.method static synthetic access$4000()Lcom/android/server/power/HtcPMSExtension;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    return-object v0
.end method

.method static synthetic access$4100()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    return p1
.end method

.method static synthetic access$4300(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeSetProximityStateWithScreenOff(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearForceScreenOnFlag()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V

    return-void
.end method

.method static synthetic access$4602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 110
    sput-boolean p0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/HtcDongleMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$5300(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuMode(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isOOBEDoneInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;JIII)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->runHtcPowerSaverCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/power/PowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleScreenShot()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleNotifyScreenOffForWifi()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleSandman()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->sendClearScreenTimeoutTask(II)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handleUserActivityEventTimeout()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startShutdownDevice()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->handlePsensorNearMonitorTimeout()V

    return-void
.end method

.method static synthetic access$7600(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$7900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 110
    invoke-direct/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/power/PowerManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$8702(Lcom/android/server/power/PowerManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$8800(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mShutdownCalled:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mShutdownCalled:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isForceScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needTurnOnScreenByPowerKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/power/PowerManagerService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(JI)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9500(Lcom/android/server/power/PowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    return v0
.end method

.method static synthetic access$9700(Lcom/android/server/power/PowerManagerService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method private acquireHtcCpuCtrlInternal(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;IIILjava/lang/String;)V
    .locals 17
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "level"    # I
    .param p8, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1425
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I

    move-result v13

    .line 1426
    .local v13, "index":I
    if-ltz v13, :cond_6

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .local v1, "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1428
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1430
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 1431
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    .line 1432
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    .line 1446
    :cond_0
    :goto_0
    const v2, 0xffff

    and-int v2, v2, p2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_7

    .line 1447
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1449
    const/16 v2, 0x800

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1467
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v2, :cond_2

    .line 1468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget v3, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mOwnerPid:I

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/HtcWakeLockMonitor;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 1473
    :cond_2
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v2, :cond_3

    .line 1475
    :cond_3
    move-object/from16 v14, p3

    .line 1477
    .local v14, "new_tag":Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1478
    const-string v14, "encrypted_tag"

    .line 1483
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "typeInfo":Ljava/lang/String;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1485
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1486
    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    .line 1487
    .local v12, "f":Ljava/util/Formatter;
    const-string v2, "releaseHCC(%x): %s %s 0x%x %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-virtual {v12, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1489
    const-string v2, "PMS"

    invoke-virtual {v12}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    .end local v12    # "f":Ljava/util/Formatter;
    :cond_5
    new-instance v12, Ljava/util/Formatter;

    invoke-direct {v12}, Ljava/util/Formatter;-><init>()V

    .line 1492
    .restart local v12    # "f":Ljava/util/Formatter;
    const-string v2, "acquireHCC(%x): %s %s 0x%x %d %d %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v14, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p4, v3, v4

    invoke-virtual {v12, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1494
    const-string v2, "PMS"

    invoke-virtual {v12}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1500
    monitor-exit v16

    .line 1501
    return-void

    .line 1435
    .end local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .end local v12    # "f":Ljava/util/Formatter;
    .end local v14    # "new_tag":Ljava/lang/String;
    .end local v15    # "typeInfo":Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    .restart local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1441
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1500
    .end local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .end local v13    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1438
    .restart local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .restart local v13    # "index":I
    :catch_0
    move-exception v11

    .line 1439
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HtcCpuCtrl is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1451
    .end local v11    # "ex":Landroid/os/RemoteException;
    :cond_7
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_8

    .line 1452
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    .line 1453
    const/16 v2, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1454
    :cond_8
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_9

    .line 1455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    .line 1456
    const/16 v2, 0x2000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1457
    :cond_9
    const v2, 0xf000

    and-int v2, v2, p2

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_a

    .line 1458
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    .line 1459
    const/16 v2, 0x4000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1460
    :cond_a
    const v2, 0xf000

    and-int v2, v2, p2

    const v3, 0x8000

    if-ne v2, v3, :cond_1

    .line 1461
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    .line 1462
    const v2, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 21
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1295
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v16

    .line 1297
    .local v16, "index":I
    if-ltz v16, :cond_d

    .line 1298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1299
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    move-object v4, v2

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1301
    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 1303
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 1305
    :cond_0
    const/16 v18, 0x0

    .line 1336
    .local v18, "notifyAcquire":Z
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1337
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V

    .line 1342
    :cond_2
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    .line 1344
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_3

    .line 1345
    const-string v3, "PMS"

    const-string v4, "acquireWL:p wl"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v3, :cond_4

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->notifyReleaseProximityWakeLock(ZI)V

    .line 1350
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_5

    .line 1351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->delayScreenOn:Z

    .line 1355
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->cancelPsensorNearMonitorMsg()V

    .line 1360
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1363
    const v3, 0xffff

    and-int v3, v3, p2

    const/16 v4, 0x800

    if-ne v3, v4, :cond_7

    .line 1364
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1366
    const/16 v3, 0x800

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1371
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v3, :cond_8

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v7, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v8, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/HtcWakeLockMonitor;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 1377
    :cond_8
    invoke-static/range {p2 .. p3}, Lcom/android/server/power/HtcPMSExtension;->canPrintWakeLockLog(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1379
    move-object/from16 v17, p3

    .line 1381
    .local v17, "new_tag":Ljava/lang/String;
    const-string v3, "@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1382
    const-string v17, "encrypted_tag"

    .line 1387
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v19

    .line 1388
    .local v19, "typeInfo":Ljava/lang/String;
    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1300(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v15

    .local v15, "flagInfo":Ljava/lang/String;
    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1390
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1391
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14}, Ljava/util/Formatter;-><init>()V

    .line 1393
    .local v14, "f":Ljava/util/Formatter;
    const-string v3, "releaseWL(%x): %s %s %s 0x%x %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    invoke-virtual {v14, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1396
    const-string v3, "PMS"

    invoke-virtual {v14}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    .end local v14    # "f":Ljava/util/Formatter;
    :cond_a
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14}, Ljava/util/Formatter;-><init>()V

    .line 1400
    .restart local v14    # "f":Ljava/util/Formatter;
    const-string v3, "acquireWL(%x): %s %s %s 0x%x %d %d %s"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    const/4 v5, 0x2

    aput-object v15, v4, v5

    const/4 v5, 0x3

    aput-object v17, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p5, v4, v5

    invoke-virtual {v14, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1403
    const-string v3, "PMS"

    invoke-virtual {v14}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    .end local v14    # "f":Ljava/util/Formatter;
    .end local v15    # "flagInfo":Ljava/lang/String;
    .end local v17    # "new_tag":Ljava/lang/String;
    .end local v19    # "typeInfo":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1408
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1409
    if-eqz v18, :cond_c

    .line 1415
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1417
    :cond_c
    monitor-exit v20

    .line 1418
    return-void

    .line 1307
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v18    # "notifyAcquire":Z
    :cond_d
    new-instance v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    .restart local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    const/16 v18, 0x1

    .line 1317
    .restart local v18    # "notifyAcquire":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    .line 1319
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v6, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v10, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/HtcWakeLockDetector;->addWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1326
    :catch_0
    move-exception v12

    .line 1327
    .local v12, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 1328
    const-string v3, "PMS"

    const-string v4, "addWakeLock Exception : "

    invoke-static {v3, v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1417
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "index":I
    .end local v18    # "notifyAcquire":Z
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1310
    .restart local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v16    # "index":I
    :catch_1
    move-exception v13

    .line 1311
    .local v13, "ex":Landroid/os/RemoteException;
    :try_start_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wake lock is already dead."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private adjustHtcScreenDimDuration(I)I
    .locals 4
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 4156
    const/4 v0, -0x1

    .line 4158
    .local v0, "adjDimDuration":I
    sget-object v1, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v1}, Lcom/android/server/power/HtcPMSExtension;->isAMOLED()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4159
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v1, v2, :cond_0

    .line 4160
    const v1, 0x1b7740

    sub-int v0, p1, v1

    .line 4161
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4162
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDim[AMOLED]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDongleModeTurnedOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4169
    add-int/lit16 v0, p1, -0x32c8

    .line 4170
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 4171
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDim[DongleMode]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    :cond_1
    return v0
.end method

.method private adjustHtcScreenOffDelay(I)I
    .locals 6
    .param p1, "totalDelay"    # I

    .prologue
    const/4 v5, -0x1

    .line 4089
    move v0, p1

    .line 4091
    .local v0, "adjTotalDelay":I
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v5, v2, :cond_0

    .line 4092
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 4093
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 4094
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[NTF]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    :cond_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v2, :cond_5

    .line 4099
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 4100
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 4101
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[O]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_1
    :goto_0
    :try_start_0
    const-string v2, "Android_Core_Framework"

    invoke-static {v2}, Lcom/android/server/power/HtcPMSExtension;->getHtcCustomizationReader(Ljava/lang/String;)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "support_3lm"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v5, v2, :cond_2

    .line 4120
    const v0, 0x7fffffff

    .line 4121
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 4122
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[3LM]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4135
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    if-eq v2, v5, :cond_3

    .line 4137
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    add-int v0, v2, v3

    .line 4138
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 4139
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[DeskDock]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isDongleModeTurnedOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4146
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 4147
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_4

    .line 4148
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[DongleMode]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    :cond_4
    return v0

    .line 4103
    :cond_5
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    if-lez v2, :cond_6

    .line 4104
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    .line 4105
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 4106
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[A]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4108
    :cond_6
    const/4 v2, -0x2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    if-lez v2, :cond_1

    .line 4109
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 4110
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 4111
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDelay[S]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4125
    :catch_0
    move-exception v1

    .line 4126
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 4127
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustHtcScreenOffDelay[3LM]: Exception caught. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 2
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .prologue
    .line 1516
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    .line 1520
    :cond_0
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 7
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1977
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 1984
    :cond_0
    return-void
.end method

.method private canDozeLocked()Z
    .locals 2

    .prologue
    .line 3082
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canDreamLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3051
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 3075
    :cond_0
    :goto_0
    return v0

    .line 3060
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3061
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    if-eqz v1, :cond_0

    .line 3064
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v1, v2, :cond_0

    .line 3069
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v1, v2, :cond_0

    .line 3075
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelPsensorNearMonitorMsg()V
    .locals 4

    .prologue
    .line 4808
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4809
    const-string v1, "PMS"

    const-string v2, "cancelPSNMMsg S"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4816
    :goto_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 4817
    const-string v1, "PMS"

    const-string v2, "cancelPSNMMsg E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_1
    return-void

    .line 4813
    :catch_0
    move-exception v0

    .line 4814
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception for cancelPSNMMsg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkHtcCustomizationReader()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 736
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 738
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 739
    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 740
    const-string v3, "PMS"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 744
    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 747
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 748
    const-string v3, "PMS"

    const-string v4, "mHtcCustomizationReader = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 758
    goto :goto_0
.end method

.method private checkHtcCustomizationReader2()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 708
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 710
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 711
    .local v0, "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v0, :cond_0

    .line 712
    const-string v3, "PMS"

    const-string v4, "customizationManger = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :goto_0
    return v2

    .line 716
    .restart local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :cond_0
    const-string v4, "Android_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

    .line 719
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v4, :cond_1

    .line 720
    const-string v3, "PMS"

    const-string v4, "mHtcCustomizationReader2 = null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    .end local v0    # "customizationManger":Lcom/htc/customization/HtcCustomizationManager;
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot get HtcCustomization2, reason = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 730
    goto :goto_0
.end method

.method private checkIfOOBEStatusFinished(Z)Z
    .locals 9
    .param p1, "isTimeout"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 4601
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 4602
    const-string v6, "PMS"

    const-string v7, "OOBE check"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_2

    .line 4605
    const-string v5, "PMS"

    const-string v6, "OOBE check 11"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    :cond_1
    :goto_0
    return v4

    .line 4609
    :cond_2
    const-string v6, "persist.sys.pms.oobe.done"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4610
    .local v1, "oobeDone":I
    const-string v6, "persist.sys.pms.oobe.operated"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4611
    .local v3, "oobeOperated":I
    if-eq v1, v5, :cond_3

    if-eq v3, v5, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    if-nez v6, :cond_5

    .line 4612
    :cond_3
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    .line 4613
    const-string v4, "PMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OOBE c done1 , oobeDone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , oobeOperated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mOOBEInstalled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v4, v5

    .line 4615
    goto :goto_0

    .line 4618
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4619
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "OOBE_USER_OPERATED"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 4621
    .local v2, "oobeFlag":I
    if-ne v2, v5, :cond_7

    .line 4622
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_6

    .line 4623
    const-string v4, "PMS"

    const-string v6, "OOBE c done2"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    :cond_6
    const-string v4, "persist.sys.pms.oobe.operated"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 4627
    goto :goto_0

    .line 4629
    :cond_7
    if-eqz p1, :cond_9

    if-ne v2, v8, :cond_9

    .line 4630
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_8

    .line 4631
    const-string v4, "PMS"

    const-string v6, "OOBE c done2-1"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    :cond_8
    const-string v4, "persist.sys.pms.oobe.operated"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 4635
    goto/16 :goto_0

    .line 4637
    :cond_9
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isOOBEDoneInternal()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 4638
    goto/16 :goto_0
.end method

.method private checkIfPackageInstalled(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4700
    const/4 v2, 0x0

    .line 4701
    .local v2, "isInstalled":Z
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4702
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 4704
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 4705
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4710
    :cond_0
    if-eqz v0, :cond_1

    .line 4711
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfPackageInstalled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    const/4 v2, 0x1

    .line 4715
    :cond_1
    :goto_0
    return v2

    .line 4707
    :catch_0
    move-exception v1

    .line 4708
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfPackageInstalled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => Not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4710
    if-eqz v0, :cond_1

    .line 4711
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfPackageInstalled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    const/4 v2, 0x1

    goto :goto_0

    .line 4710
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 4711
    const-string v5, "PMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfPackageInstalled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    const/4 v2, 0x1

    :cond_2
    throw v4
.end method

.method private checkUseNewBacklightMechanism(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "convertBacklightTable":[I
    const/4 v1, 0x0

    .line 766
    .local v1, "convertEBITable":[I
    const/4 v3, 0x0

    .line 767
    .local v3, "resId1":I
    const/4 v4, 0x0

    .line 770
    .local v4, "resId2":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 772
    .local v5, "resources":Landroid/content/res/Resources;
    const-string v6, "config_convertBacklightToDisplayBrightnessValues"

    const-string v7, "array"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 773
    if-eqz v3, :cond_0

    .line 774
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 777
    :cond_0
    const-string v6, "config_convertEBIToDisplayBrightnessValues"

    const-string v7, "array"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 778
    if-eqz v4, :cond_1

    .line 779
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 782
    :cond_1
    if-eqz v0, :cond_2

    array-length v6, v0

    if-lez v6, :cond_2

    if-eqz v1, :cond_2

    array-length v6, v1

    if-lez v6, :cond_2

    .line 783
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Use new BL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 785
    :catch_0
    move-exception v2

    .line 786
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    .line 787
    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkUseNewBacklightMechanism exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearForceScreenOnFlag()V
    .locals 2

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    .line 4920
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    .line 4922
    :cond_0
    return-void
.end method

.method private clearMonitorOOBEStatus()V
    .locals 7

    .prologue
    .line 4749
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_0

    .line 4750
    const-string v4, "PMS"

    const-string v5, "OOBE c monitor"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    if-nez v4, :cond_3

    .line 4753
    :cond_1
    const-string v4, "PMS"

    const-string v5, "OOBE c monitor 11"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    :cond_2
    :goto_0
    return-void

    .line 4757
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 4758
    .local v3, "mAlarmManager":Landroid/app/AlarmManager;
    if-eqz v3, :cond_2

    .line 4759
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4760
    .local v1, "intentOnAlarm":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4762
    .local v2, "mAlarmIntent":Landroid/app/PendingIntent;
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    if-eqz v4, :cond_2

    .line 4763
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_4

    .line 4764
    const-string v4, "PMS"

    const-string v5, "OOBE c monitor 22"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    :cond_4
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4767
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4770
    .end local v1    # "intentOnAlarm":Landroid/content/Intent;
    .end local v2    # "mAlarmIntent":Landroid/app/PendingIntent;
    .end local v3    # "mAlarmManager":Landroid/app/AlarmManager;
    :catch_0
    move-exception v0

    .line 4771
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OOBE c monitor e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearTurnOnScreenOnceFlag()V
    .locals 2

    .prologue
    .line 4927
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    .line 4928
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turnOnScreenOnce:Z

    .line 4930
    :cond_0
    return-void
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 5150
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private crashInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3860
    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3868
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3872
    :goto_0
    return-void

    .line 3869
    :catch_0
    move-exception v0

    .line 3870
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PMS"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5129
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 5130
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5131
    return-object v0
.end method

.method private customizeScreenOffDelayLocked(IIZ)V
    .locals 15
    .param p1, "flag"    # I
    .param p2, "screenOffDelay"    # I
    .param p3, "calcRemaining"    # Z

    .prologue
    .line 4197
    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_0

    .line 4203
    :pswitch_0
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_0

    .line 4204
    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "customizeScreenOffDelayLocked: Unknown flag found. Skip. flag=0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", screenOffDelay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", calcRemaining="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    :cond_0
    :goto_0
    return-void

    .line 4213
    :pswitch_1
    if-gez p2, :cond_2

    .line 4214
    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_1

    .line 4229
    :goto_1
    :pswitch_2
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_1

    .line 4230
    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenOffDelay: reset(0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    goto :goto_0

    .line 4217
    :pswitch_3
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4218
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4219
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    goto :goto_1

    .line 4222
    :pswitch_4
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto :goto_1

    .line 4225
    :pswitch_5
    const v12, 0xea60

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto :goto_1

    .line 4242
    :cond_2
    if-eqz p3, :cond_4

    .line 4243
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v12, :cond_7

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 4246
    .local v2, "CURRENT_TIMEOUT":I
    :goto_2
    move/from16 v0, p2

    if-eq v2, v0, :cond_a

    .line 4247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4248
    .local v4, "NOW":J
    iget-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    sub-long v6, v4, v12

    .line 4249
    .local v6, "elapsed":J
    int-to-long v12, v2

    sub-long v10, v12, v6

    .line 4252
    .local v10, "remaining":J
    move/from16 v0, p2

    if-ge v2, v0, :cond_9

    .line 4253
    move/from16 v0, p2

    int-to-long v12, v0

    sub-long/2addr v12, v6

    long-to-int v12, v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 4260
    :cond_3
    :goto_3
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 4261
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 4263
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v12

    if-eqz v12, :cond_4

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v12, :cond_4

    .line 4264
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 4265
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4266
    const/16 v12, 0x20

    invoke-direct {p0, v4, v5, v12}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 4268
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    .line 4279
    .end local v2    # "CURRENT_TIMEOUT":I
    .end local v4    # "NOW":J
    .end local v6    # "elapsed":J
    .end local v10    # "remaining":J
    :cond_4
    :goto_4
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 4280
    .local v8, "prev_once":I
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    .line 4281
    .local v3, "prev_always":I
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 4282
    .local v9, "prev_system":I
    and-int/lit8 v12, p1, 0x7

    packed-switch v12, :pswitch_data_2

    .line 4299
    :cond_5
    :goto_5
    :pswitch_6
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_6

    .line 4300
    const-string v12, "PMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ScreenOffDelay:(0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v14}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    :cond_6
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 4313
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v12, :cond_0

    .line 4314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4315
    .restart local v4    # "NOW":J
    iput-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 4316
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v12, v12, 0x4

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4317
    const/16 v12, 0x20

    invoke-direct {p0, v4, v5, v12}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 4319
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_0

    .line 4320
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    goto/16 :goto_0

    .line 4243
    .end local v3    # "prev_always":I
    .end local v4    # "NOW":J
    .end local v8    # "prev_once":I
    .end local v9    # "prev_system":I
    :cond_7
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    if-lez v12, :cond_8

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto/16 :goto_2

    :cond_8
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto/16 :goto_2

    .line 4255
    .restart local v2    # "CURRENT_TIMEOUT":I
    .restart local v4    # "NOW":J
    .restart local v6    # "elapsed":J
    .restart local v10    # "remaining":J
    :cond_9
    move/from16 v0, p2

    if-le v2, v0, :cond_3

    .line 4256
    move/from16 v0, p2

    int-to-long v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    goto/16 :goto_3

    .line 4273
    .end local v4    # "NOW":J
    .end local v6    # "elapsed":J
    .end local v10    # "remaining":J
    :cond_a
    sget-boolean v12, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v12, :cond_4

    .line 4274
    const-string v12, "PMS"

    const-string v13, "ScreenOffDelay: Same. Skip"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4284
    .end local v2    # "CURRENT_TIMEOUT":I
    .restart local v3    # "prev_always":I
    .restart local v8    # "prev_once":I
    .restart local v9    # "prev_system":I
    :pswitch_7
    if-nez p3, :cond_5

    .line 4285
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 4287
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/server/power/PowerManagerService;->handleClearScreenTimeoutTask(II)V

    goto/16 :goto_5

    .line 4292
    :pswitch_8
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    goto/16 :goto_5

    .line 4295
    :pswitch_9
    move/from16 v0, p2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    goto/16 :goto_5

    .line 4197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4214
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 4282
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4963
    const-string v8, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4966
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4967
    :try_start_0
    const-string v8, "Power Manager State:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4968
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDirty=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakefulness="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4970
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mInteractive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mIsPowered="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mPlugType="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4973
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevel="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4974
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4975
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDockState="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOn="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mProximityPositive="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4978
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBootCompleted="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSystemReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4980
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHalInteractiveModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeLockSummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4983
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivitySummary=0x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4984
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanScheduled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4986
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSandmanSummoned="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mBatteryLevelLow="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4989
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastWakeTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastSleepTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4991
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4992
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4994
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLastInteractivePowerHintTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4996
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDisplayReady="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4997
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4998
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingOOBESuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4999
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5001
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5002
    const-string v8, "Settings and Configuration:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5003
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5007
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5009
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5011
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsSupportedConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5013
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5017
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5019
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5023
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsEnabledSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5026
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5027
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mLowPowerModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5030
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5031
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5033
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5035
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenOffTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mSleepTimeoutSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (enforced="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5040
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5042
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessModeSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5047
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5050
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenTimeout_Once="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mScreenTimeout_Always="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Always:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " mScreenTimeout_System="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5056
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5058
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5060
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5062
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5063
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5064
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5067
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessPercentageSetting="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5068
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mScreenAutoBrightnessPercentageSettingDefault="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5069
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mTemporaryScreenAutoBrightnessPercentageSettingOverride="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5074
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  DISABLE_LOW_POWER_MODE="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5078
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Use new backlight mechanism="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5082
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mQuickbootEnabled="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerService;->mQuickbootEnabled:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5085
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v5

    .line 5086
    .local v5, "sleepTimeout":I
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v4

    .line 5087
    .local v4, "screenOffTimeout":I
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v3

    .line 5088
    .local v3, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5089
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sleep timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5090
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen off timeout: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dim duration: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ms"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5093
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5094
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wake Locks: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5095
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5096
    .local v7, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5121
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "screenDimDuration":I
    .end local v4    # "screenOffTimeout":I
    .end local v5    # "sleepTimeout":I
    .end local v7    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 5100
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "screenDimDuration":I
    .restart local v4    # "screenOffTimeout":I
    .restart local v5    # "sleepTimeout":I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcCpuCtrls: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuFreqMinCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuFreqMaxCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuNumMinCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  mCpuNumMaxCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5106
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .line 5107
    .local v0, "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5111
    .end local v0    # "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspend Blockers: size="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5113
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .line 5114
    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 5117
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Display Power: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5120
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 5121
    .local v6, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5123
    if-eqz v6, :cond_3

    .line 5124
    invoke-virtual {v6, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 5126
    :cond_3
    return-void
.end method

.method private fetchCurrentBrightnessValueInternal()I
    .locals 1

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    .line 4889
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->fetchCurrentBrightnessValue()I

    move-result v0

    .line 4891
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 2027
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2028
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2029
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 2033
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 2028
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2033
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 2016
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2017
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2018
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 2022
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 2017
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2022
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private finishInteractiveStateChangeLocked()V
    .locals 2

    .prologue
    .line 2408
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z

    if-eqz v0, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V

    .line 2410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z

    .line 2412
    :cond_0
    return-void
.end method

.method private getDesiredScreenPolicyLocked()I
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3271
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v4, :cond_1

    .line 3273
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    .line 3305
    :cond_0
    :goto_0
    return v0

    .line 3278
    :cond_1
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v4, v3, :cond_3

    .line 3279
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    move v0, v1

    .line 3280
    goto :goto_0

    .line 3282
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    if-nez v4, :cond_0

    .line 3289
    :cond_3
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-nez v4, :cond_7

    .line 3294
    :cond_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMirrorModeTurnedOn()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMiracastModeTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    if-ne v0, v1, :cond_6

    move v0, v2

    .line 3295
    goto :goto_0

    :cond_6
    move v0, v3

    .line 3299
    goto :goto_0

    .line 3302
    :cond_7
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    move v0, v2

    .line 3305
    goto :goto_0
.end method

.method private getProximitySensorActiveInternal()Z
    .locals 1

    .prologue
    .line 4879
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    .line 4880
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getProximitySensorActive()Z

    move-result v0

    .line 4882
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScreenDimDurationLocked(I)I
    .locals 4
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 2842
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->adjustHtcScreenDimDuration(I)I

    move-result v0

    .line 2844
    .local v0, "adjDimDelay":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2845
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    int-to-float v2, p1

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2848
    :goto_0
    return v1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 2822
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 2825
    .local v0, "timeout":I
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->adjustHtcScreenOffDelay(I)I

    move-result v0

    .line 2828
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2829
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2831
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 2832
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 2834
    :cond_1
    if-ltz p1, :cond_2

    .line 2835
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2837
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getSettingsScreenOffTimeoutValue()I
    .locals 4

    .prologue
    .line 4841
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 4842
    .local v0, "timeout":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_2

    .line 4843
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 4844
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4845
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust timeout[NTF]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    :cond_0
    :goto_0
    const v1, 0x6ddd00

    if-le v0, v1, :cond_1

    .line 4854
    const v0, 0x6ddd00

    .line 4856
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 4847
    :cond_2
    const/4 v1, -0x2

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    if-lez v1, :cond_0

    .line 4848
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_System:I

    .line 4849
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4850
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjust timeout[AUTO]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSleepTimeoutLocked()I
    .locals 2

    .prologue
    .line 2814
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 2815
    .local v0, "timeout":I
    if-gtz v0, :cond_0

    .line 2816
    const/4 v1, -0x1

    .line 2818
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private goToSleepForShutdownInternal(JI)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "reason"    # I

    .prologue
    .line 4037
    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V

    .line 4038
    return-void
.end method

.method private goToSleepInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2240
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2241
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2242
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2244
    :cond_0
    monitor-exit v1

    .line 2245
    return-void

    .line 2244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2256
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_2

    .line 2261
    :cond_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v4, :cond_1

    .line 2262
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return goToSleepNoUpdateLocked , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_1
    const/4 v4, 0x0

    .line 2337
    :goto_0
    return v4

    .line 2269
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mPMS2Handler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2272
    const-wide/32 v4, 0x20000

    const-string v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2274
    packed-switch p3, :pswitch_data_0

    .line 2297
    :try_start_0
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    const/4 p3, 0x0

    .line 2303
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearForceScreenOnFlag()V

    .line 2304
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearTurnOnScreenOnceFlag()V

    .line 2306
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setForceScreenOnWhenNear(Z)V

    .line 2309
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    .line 2310
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2311
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2312
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2313
    const/4 v4, 0x0

    invoke-direct {p0, v4, p3}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V

    .line 2316
    const/4 v2, 0x0

    .line 2317
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2318
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 2319
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2320
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 2318
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2276
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_0
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2335
    :catchall_0
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 2280
    :pswitch_1
    :try_start_1
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v4, :cond_3

    .line 2283
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerInternal;->notifyScreenTimeout(Z)V

    goto/16 :goto_1

    .line 2288
    :pswitch_2
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2291
    :pswitch_3
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2294
    :pswitch_4
    const-string v4, "PMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2324
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 2328
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_4
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2331
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5

    .line 2332
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2335
    :cond_5
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2337
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2320
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked()V
    .locals 1

    .prologue
    .line 3794
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3795
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3796
    return-void
.end method

.method private handleClearScreenTimeoutTask(II)V
    .locals 5
    .param p1, "timeout"    # I
    .param p2, "calcRemaining"    # I

    .prologue
    const/16 v4, 0x8

    .line 4053
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4054
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClearTask("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4057
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4058
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v4, p1, p2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4059
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4060
    return-void
.end method

.method private handleNotifyScreenOffForWifi()V
    .locals 2

    .prologue
    .line 4346
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "PMS"

    const-string v1, "handleNotifyScreenOffForWifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_1

    .line 4348
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->notifyScreenOff()V

    .line 4358
    :goto_0
    return-void

    .line 4350
    :cond_1
    const-string v0, "PMS"

    const-string v1, "mWirelessDisplayManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    .line 4352
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_2

    .line 4353
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessDisplayManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->notifyScreenOff()V

    goto :goto_0

    .line 4355
    :cond_2
    const-string v0, "PMS"

    const-string v1, "mWirelessDisplayManager is still null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePsensorNearMonitorTimeout()V
    .locals 3

    .prologue
    .line 4822
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 4823
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePSNMT S = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4826
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v0, :cond_2

    .line 4827
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 4828
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_1

    .line 4829
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->resetPsensorNearStatus()V

    .line 4831
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4832
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4834
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4835
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    .line 4836
    const-string v0, "PMS"

    const-string v1, "handlePSNMT E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    :cond_3
    return-void

    .line 4834
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSandman()V
    .locals 11

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    .line 2957
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2958
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2959
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2960
    .local v8, "wakefulness":I
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v3, :cond_6

    .line 2961
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v7, v1

    .line 2962
    .local v7, "startDreaming":Z
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2966
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_8

    .line 2974
    if-eqz v7, :cond_1

    .line 2975
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v9}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2976
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v8, v4, :cond_7

    :goto_2
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 2978
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .line 2984
    .local v0, "isDreaming":Z
    :goto_3
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2986
    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 2987
    :try_start_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    .line 2988
    if-ne v8, v4, :cond_9

    .line 2989
    const-string v1, "PMS"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :cond_2
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v8, :cond_a

    .line 2998
    :cond_3
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3045
    :cond_4
    :goto_5
    return-void

    .end local v0    # "isDreaming":Z
    .end local v7    # "startDreaming":Z
    :cond_5
    move v7, v9

    .line 2961
    goto :goto_0

    .line 2964
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "startDreaming":Z
    goto :goto_1

    .line 2966
    .end local v7    # "startDreaming":Z
    .end local v8    # "wakefulness":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v7    # "startDreaming":Z
    .restart local v8    # "wakefulness":I
    :cond_7
    move v1, v9

    .line 2976
    goto :goto_2

    .line 2980
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "isDreaming":Z
    goto :goto_3

    .line 2991
    :cond_9
    :try_start_3
    const-string v1, "PMS"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3039
    :catchall_1
    move-exception v1

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 3002
    :cond_a
    if-ne v8, v5, :cond_f

    .line 3003
    if-eqz v0, :cond_b

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3004
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3011
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    .line 3025
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3039
    :cond_c
    :goto_6
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3042
    if-eqz v0, :cond_4

    .line 3043
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v9}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_5

    .line 3017
    :cond_d
    :try_start_5
    monitor-exit v10

    goto/16 :goto_5

    .line 3027
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    .line 3028
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    goto :goto_6

    .line 3030
    :cond_f
    if-ne v8, v4, :cond_c

    .line 3031
    if-eqz v0, :cond_10

    .line 3032
    monitor-exit v10

    goto/16 :goto_5

    .line 3036
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    .line 3037
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6
.end method

.method private handleScreenShot()V
    .locals 5

    .prologue
    .line 4329
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4331
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 4332
    const-string v3, "PMS"

    const-string v4, "getTaskTopThumbnail begin"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 4335
    .local v2, "taskId":I
    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4339
    .end local v2    # "taskId":I
    :goto_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 4340
    const-string v3, "PMS"

    const-string v4, "getTaskTopThumbnail done"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    :cond_1
    return-void

    .line 4336
    :catch_0
    move-exception v1

    .line 4337
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PMS"

    const-string v4, "Unable to screenshot top activity"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1282
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1283
    return-void
.end method

.method private handleUserActivityEventTimeout()V
    .locals 2

    .prologue
    .line 4372
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 4373
    const-string v0, "PMS"

    const-string v1, "handleUAET"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4376
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    .line 4377
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4378
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 4379
    return-void

    .line 4377
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleUserActivityTimeout()V
    .locals 2

    .prologue
    .line 2803
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2808
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2809
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2810
    monitor-exit v1

    .line 2811
    return-void

    .line 2810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 12
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1899
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1905
    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1906
    .local v4, "index":I
    if-gez v4, :cond_1

    .line 1909
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 1911
    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockMonitor;->stopDeadRecord(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1919
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v8

    .line 1965
    :goto_1
    return-void

    .line 1912
    :catch_0
    move-exception v0

    .line 1913
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    .line 1914
    const-string v7, "PMS"

    const-string v9, "stopDeadRecord Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1964
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "index":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1923
    .restart local v4    # "index":I
    :cond_1
    :try_start_3
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v7, :cond_2

    .line 1925
    :cond_2
    iget-object v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 1927
    .local v5, "new_tag":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1928
    const-string v5, "encrypted_tag"

    .line 1933
    :cond_3
    iget v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v7}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v6

    .line 1934
    .local v6, "typeInfo":Ljava/lang/String;
    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1300(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v3

    .line 1935
    .local v3, "flagInfo":Ljava/lang/String;
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1936
    .local v2, "f":Ljava/util/Formatter;
    const-string v7, "handleWLDeath(%x): %s %s %s 0x%x"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v10, 0x4

    iget v11, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1937
    const-string v7, "PMS"

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    .line 1944
    :try_start_4
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockDetector;->removeWakeLock(Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1953
    :cond_4
    :goto_2
    :try_start_5
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_5

    .line 1955
    :try_start_6
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v9, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/power/HtcWakeLockMonitor;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1963
    :cond_5
    :goto_3
    :try_start_7
    invoke-direct {p0, p1, v4}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1964
    monitor-exit v8

    goto :goto_1

    .line 1945
    :catch_1
    move-exception v0

    .line 1946
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_4

    .line 1947
    const-string v7, "PMS"

    const-string v9, "removeWakeLock Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1956
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1957
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_5

    .line 1958
    const-string v7, "PMS"

    const-string v9, "stopRecord Exception : "

    invoke-static {v7, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method private informEndCallInternal()V
    .locals 4

    .prologue
    .line 4528
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4529
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4530
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDelayScreenOnAfterEndCallLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4531
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v1, :cond_0

    .line 4532
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->delayScreenOn:Z

    .line 4536
    :cond_0
    monitor-exit v2

    .line 4540
    :goto_0
    return-void

    .line 4536
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4537
    :catch_0
    move-exception v0

    .line 4538
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inform EC e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private informOOBEStatusChangeInternal(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 4574
    if-eqz p1, :cond_0

    .line 4576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4578
    const-string v1, "persist.sys.pms.oobe.operated"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4579
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->clearMonitorOOBEStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4584
    :cond_0
    :goto_0
    return-void

    .line 4580
    :catch_0
    move-exception v0

    .line 4581
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OOBE change e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isBeingKeptAwakeLocked()Z
    .locals 1

    .prologue
    .line 2911
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDongleModeTurnedOn()Z
    .locals 1

    .prologue
    .line 4363
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v0}, Lcom/android/server/power/HtcDongleMode;->isDongleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4364
    const/4 v0, 0x1

    .line 4366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForceScreenOn()Z
    .locals 5

    .prologue
    .line 4897
    const/4 v1, 0x0

    .line 4899
    .local v1, "forceScreenOn":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z

    if-eqz v2, :cond_2

    .line 4900
    :cond_0
    const/4 v1, 0x1

    .line 4901
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 4902
    const-string v2, "PMS"

    const-string v3, "case1 fso "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    :cond_1
    :goto_0
    return v1

    .line 4904
    :cond_2
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4907
    const/4 v1, 0x1

    .line 4908
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 4909
    const-string v2, "PMS"

    const-string v3, "case2 fso "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4912
    :catch_0
    move-exception v0

    .line 4913
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceScreenOn exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isInteractiveInternal()Z
    .locals 2

    .prologue
    .line 3747
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3748
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    monitor-exit v1

    return v0

    .line 3749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .locals 1

    .prologue
    .line 2899
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLowPowerModeInternal()Z
    .locals 2

    .prologue
    .line 3753
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3754
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    .line 3755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .locals 2

    .prologue
    .line 3888
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiracastModeTurnedOn()Z
    .locals 1

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v0}, Lcom/android/server/power/HtcDongleMode;->isMiracastMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4410
    const/4 v0, 0x1

    .line 4412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMirrorModeTurnedOn()Z
    .locals 1

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v0}, Lcom/android/server/power/HtcDongleMode;->isMirrorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4403
    const/4 v0, 0x1

    .line 4405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOOBEDoneInternal()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4647
    :try_start_0
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 4648
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_1

    .line 4649
    const-string v9, "PMS"

    const-string v10, "pm is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4695
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v8

    .line 4653
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.synchronoss.dcs.att.r2g"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4654
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.synchronoss.dcs.att.r2g"

    const-string v11, "com.synchronoss.dcs.att.r2g.DCSMainActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4655
    .local v0, "cnATT":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    .line 4656
    .local v6, "statusATT":I
    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_2

    .line 4657
    const-string v10, "PMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "R2G status ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    :cond_2
    if-ne v6, v13, :cond_0

    .line 4660
    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_3

    .line 4661
    const-string v10, "PMS"

    const-string v11, "OOBE c done3"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    :cond_3
    const-string v10, "persist.sys.pms.oobe.done"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v8, v9

    .line 4665
    goto :goto_0

    .line 4667
    .end local v0    # "cnATT":Landroid/content/ComponentName;
    .end local v6    # "statusATT":I
    :catch_0
    move-exception v3

    .line 4668
    .local v3, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_4

    .line 4669
    const-string v10, "PMS"

    const-string v11, "Not find R2G"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4673
    :cond_4
    :try_start_3
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.htc.android.htcsetupwizard"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4674
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.htc.android.htcsetupwizard"

    const-string v11, "com.htc.android.htcsetupwizard.MainActivity"

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4675
    .local v1, "cnHTC":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    .line 4676
    .local v7, "statusHTC":I
    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_5

    .line 4677
    const-string v10, "PMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Our status ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    :cond_5
    if-ne v7, v13, :cond_0

    .line 4681
    sget-boolean v10, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v10, :cond_6

    .line 4682
    const-string v10, "PMS"

    const-string v11, "OOBE c done3"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    :cond_6
    const-string v10, "persist.sys.pms.oobe.done"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v8, v9

    .line 4686
    goto/16 :goto_0

    .line 4688
    .end local v1    # "cnHTC":Landroid/content/ComponentName;
    .end local v7    # "statusHTC":I
    :catch_1
    move-exception v4

    .line 4689
    .local v4, "ex1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v9, "PMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ex1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 4692
    .end local v3    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "ex1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v2

    .line 4693
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "PMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isPerfLevelLock(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 5313
    const v1, 0xf000

    and-int v0, p1, v1

    .line 5314
    .local v0, "n":I
    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isQuickbootSupported()Z
    .locals 4

    .prologue
    .line 6720
    const/4 v0, 0x0

    .line 6721
    .local v0, "quickboot":Z
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkHtcCustomizationReader2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v1, :cond_0

    .line 6722
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader2:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "enable_quickboot"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6724
    :cond_0
    return v0
.end method

.method private isScreenBright()Z
    .locals 3

    .prologue
    .line 4043
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4044
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4045
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 2
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1506
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 1512
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1510
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1506
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 3267
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidAutoBrightnessPercentage(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4478
    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBrightness(I)Z
    .locals 3
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3258
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_2

    .line 3259
    if-ltz p0, :cond_1

    const/16 v2, 0x2800

    if-gt p0, v2, :cond_1

    .line 3262
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3259
    goto :goto_0

    .line 3262
    :cond_2
    if-ltz p0, :cond_3

    const/16 v2, 0xff

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2080
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2081
    sparse-switch p1, :sswitch_data_0

    .line 2100
    :try_start_0
    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    .line 2094
    :sswitch_0
    monitor-exit v2

    goto :goto_0

    .line 2102
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2097
    :sswitch_1
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 2081
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x800 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_0
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 6
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 4008
    if-nez p0, :cond_0

    .line 4009
    const-string p0, ""

    .line 4011
    :cond_0
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowLevelReboot, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4013
    const-string v3, "recovery"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "sys.powerctl"

    const-string v4, "reboot,recovery"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0x1d4c0

    .local v0, "duration":J
    :goto_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4033
    :goto_1
    return-void

    .line 4025
    .end local v0    # "duration":J
    :cond_1
    const-string v3, "sys.powerctl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reboot,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    const-wide/16 v0, 0x4e20

    .restart local v0    # "duration":J
    goto :goto_0

    .line 4030
    :catch_0
    move-exception v2

    .line 4031
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public static lowLevelShutdown()V
    .locals 3

    .prologue
    .line 3995
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowLevelShutdown, pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3997
    return-void
.end method

.method private napInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 2341
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2342
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2343
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2345
    :cond_0
    monitor-exit v1

    .line 2346
    return-void

    .line 2345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    .line 2353
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2369
    :goto_0
    return v0

    .line 2358
    :cond_1
    const-string v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2360
    :try_start_0
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2363
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanSummoned:Z

    .line 2365
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2367
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireCpuFreqMaxWakeLock(I)V
.end method

.method private static native nativeAcquireCpuFreqMinWakeLock(I)V
.end method

.method private static native nativeAcquireCpuMode(I)V
.end method

.method private static native nativeAcquireCpuNumMaxWakeLock(I)V
.end method

.method private static native nativeAcquireCpuNumMinWakeLock(I)V
.end method

.method public static native nativeAcquireCpuPerfWakeLock()V
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseCpuFreqMaxWakeLock()V
.end method

.method private static native nativeReleaseCpuFreqMinWakeLock()V
.end method

.method private static native nativeReleaseCpuNumMaxWakeLock()V
.end method

.method private static native nativeReleaseCpuNumMinWakeLock()V
.end method

.method public static native nativeReleaseCpuPerfWakeLock()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private static native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeSetProximityStateWithScreenOff(Z)V
.end method

.method private native nativeWipeSystem([B[B)V
.end method

.method private needDelayScreenOnAfterEndCallLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4501
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 4502
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4503
    const-string v1, "PMS"

    const-string v2, "needDSOAECL 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    :cond_0
    :goto_0
    return v0

    .line 4508
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v1, :cond_2

    .line 4509
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4510
    const-string v1, "PMS"

    const-string v2, "needDSOAECL 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4515
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4516
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4517
    const-string v1, "PMS"

    const-string v2, "needDSOAECL 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4521
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->needDelayScreenOnAfterEndCall()Z

    move-result v0

    goto :goto_0
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3701
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-nez v1, :cond_1

    .line 3715
    :cond_0
    :goto_0
    return v0

    .line 3704
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3709
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v1, :cond_0

    .line 3715
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needTurnOnScreenByPowerKey()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4933
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_2

    .line 4934
    :cond_0
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 4935
    const-string v1, "PMS"

    const-string v2, "nTOSBPK 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    :cond_1
    :goto_0
    return v0

    .line 4939
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-nez v1, :cond_1

    .line 4940
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyHtcCpuCtrlAcquiredLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V
    .locals 1
    .param p1, "htcCpuCtrl"    # Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .prologue
    .line 2066
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    .line 2069
    :cond_0
    return-void
.end method

.method private notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V
    .locals 1
    .param p1, "htcCpuCtrl"    # Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .prologue
    .line 2072
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 2073
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mNotifiedAcquired:Z

    .line 2075
    :cond_0
    return-void
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 2038
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2039
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 2040
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 2044
    :cond_0
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 16
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 2048
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_0

    .line 2049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 2053
    :cond_0
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 8
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 2056
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_0

    .line 2057
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 2058
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 2062
    :cond_0
    return-void
.end method

.method private powerHintInternal(II)V
    .locals 0
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3987
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeSendPowerHint(II)V

    .line 3988
    return-void
.end method

.method private readConfigurationLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1078
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1080
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, #android:bool@config_powerDecoupleAutoSuspendModeFromDisplay#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    const v1, #android:bool@config_powerDecoupleInteractiveModeFromDisplay#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    const v1, #android:bool@config_suspendWhenScreenOffDueToProximity#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSuspendWhenScreenOffDueToProximityConfig:Z

    const v1, #android:bool@config_dreamsSupported#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    const v1, #android:bool@config_dreamsEnabledByDefault#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    const v1, #android:bool@config_dreamsActivatedOnSleepByDefault#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    const v1, #android:bool@config_dreamsActivatedOnDockByDefault#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    const v1, #android:bool@config_dreamsEnabledOnBattery#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledOnBatteryConfig:Z

    const v1, #android:integer@config_dreamsBatteryLevelMinimumWhenPowered#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    const v1, #android:integer@config_dreamsBatteryLevelMinimumWhenNotPowered#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    const v1, #android:integer@config_dreamsBatteryLevelDrainCutoff#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDreamsBatteryLevelDrainCutoffConfig:I

    const v1, #android:bool@config_dozeAfterScreenOff#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDozeAfterScreenOffConfig:Z

    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMinimumScreenOffTimeoutConfig:I

    const v1, #android:integer@config_maximumScreenDimDuration#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimDurationConfig:I

    const v1, #android:fraction@config_maximumScreenDimRatio#t

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenDimRatioConfig:F

    .line 1117
    return-void
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const-wide/32 v4, 0x20000

    const/4 v0, 0x0

    .line 2379
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2394
    :cond_0
    :goto_0
    return v0

    .line 2384
    :cond_1
    const-string v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2386
    :try_start_0
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2389
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2390
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2394
    const/4 v0, 0x1

    goto :goto_0

    .line 2392
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private recalculateScreenTimeout()V
    .locals 2

    .prologue
    .line 6709
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6710
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v0, :cond_0

    .line 6711
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 6712
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 6714
    :cond_0
    monitor-exit v1

    .line 6715
    return-void

    .line 6714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releaseHtcCpuCtrlInternal(Landroid/os/IBinder;I)V
    .locals 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1789
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1790
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findHtcCpuCtrlIndexLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 1791
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1794
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v5, :cond_0

    .line 1795
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v5, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->stopDeadRecord(Landroid/os/IBinder;)V

    .line 1798
    :cond_0
    monitor-exit v6

    .line 1888
    :goto_0
    return-void

    .line 1801
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .line 1804
    .local v1, "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-nez v5, :cond_2

    .line 1806
    :cond_2
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    .line 1808
    .local v3, "new_tag":Ljava/lang/String;
    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1809
    const-string v3, "encrypted_tag"

    .line 1814
    :cond_3
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v5}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 1815
    .local v4, "typeInfo":Ljava/lang/String;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 1818
    .local v0, "f":Ljava/util/Formatter;
    const-string v5, "releaseHCC(%x): %s %s 0x%x %s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    const/4 v8, 0x3

    iget v9, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mWorkSource:Landroid/os/WorkSource;

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1820
    const-string v5, "PMS"

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xffff

    and-int/2addr v5, v7

    const/16 v7, 0x800

    if-ne v5, v7, :cond_a

    .line 1826
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1828
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_9

    .line 1829
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_4

    .line 1830
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    .line 1832
    :cond_4
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v5, :cond_5

    .line 1833
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    .line 1835
    :cond_5
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_6

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-eqz v5, :cond_7

    .line 1836
    :cond_6
    const/16 v5, 0x800

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1880
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v5, :cond_8

    .line 1881
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v7, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    invoke-virtual {v5, v7, v8}, Lcom/android/server/power/HtcWakeLockMonitor;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1885
    :cond_8
    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mLock:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v5, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1886
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->removeHtcCpuCtrlLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;I)V

    .line 1887
    monitor-exit v6

    goto/16 :goto_0

    .end local v0    # "f":Ljava/util/Formatter;
    .end local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .end local v2    # "index":I
    .end local v3    # "new_tag":Ljava/lang/String;
    .end local v4    # "typeInfo":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1839
    .restart local v0    # "f":Ljava/util/Formatter;
    .restart local v1    # "htcCpuCtrl":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .restart local v2    # "index":I
    .restart local v3    # "new_tag":Ljava/lang/String;
    .restart local v4    # "typeInfo":Ljava/lang/String;
    :cond_9
    const/16 v5, 0x800

    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1842
    :cond_a
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x1000

    if-ne v5, v7, :cond_c

    .line 1843
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    .line 1844
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMaxCount:I

    if-nez v5, :cond_b

    .line 1845
    const/16 v5, 0x1000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1846
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMaxWakeLock()V

    goto :goto_1

    .line 1848
    :cond_b
    const/16 v5, 0x1000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1850
    :cond_c
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x2000

    if-ne v5, v7, :cond_e

    .line 1851
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    .line 1853
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v5, :cond_d

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_d

    .line 1855
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    goto :goto_1

    .line 1857
    :cond_d
    const/16 v5, 0x2000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto :goto_1

    .line 1859
    :cond_e
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const/16 v7, 0x4000

    if-ne v5, v7, :cond_10

    .line 1860
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    .line 1861
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMaxCount:I

    if-nez v5, :cond_f

    .line 1862
    const/16 v5, 0x4000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1863
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMaxWakeLock()V

    goto/16 :goto_1

    .line 1865
    :cond_f
    const/16 v5, 0x4000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    goto/16 :goto_1

    .line 1867
    :cond_10
    iget v5, v1, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v7, 0xf000

    and-int/2addr v5, v7

    const v7, 0x8000

    if-ne v5, v7, :cond_7

    .line 1868
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    .line 1870
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v5, :cond_11

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v5, :cond_11

    .line 1872
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    goto/16 :goto_1

    .line 1874
    :cond_11
    const v5, 0x8000

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 13
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/16 v12, 0x800

    .line 1682
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1683
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 1684
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 1691
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v7, :cond_0

    .line 1692
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v7, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->stopDeadRecord(Landroid/os/IBinder;)V

    .line 1695
    :cond_0
    monitor-exit v8

    .line 1785
    :goto_0
    return-void

    .line 1698
    :cond_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1705
    .local v6, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 1707
    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9}, Lcom/android/server/power/HtcWakeLockDetector;->removeWakeLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1717
    :cond_2
    :goto_1
    :try_start_2
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/android/server/power/HtcPMSExtension;->canPrintWakeLockLog(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1719
    iget-object v4, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 1721
    .local v4, "new_tag":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1722
    const-string v4, "encrypted_tag"

    .line 1727
    :cond_3
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v7}, Lcom/android/server/power/HtcPMSExtension;->getWakeLockTypeInfo(I)Ljava/lang/String;

    move-result-object v5

    .line 1728
    .local v5, "typeInfo":Ljava/lang/String;
    # invokes: Lcom/android/server/power/PowerManagerService$WakeLock;->getLockFlagsString()Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->access$1300(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    move-result-object v2

    .line 1729
    .local v2, "flagInfo":Ljava/lang/String;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 1730
    .local v1, "f":Ljava/util/Formatter;
    const-string v7, "releaseWL(%x): %s %s %s 0x%x %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    const/4 v10, 0x4

    iget v11, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1731
    const-string v7, "PMS"

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    .end local v1    # "f":Ljava/util/Formatter;
    .end local v2    # "flagInfo":Ljava/lang/String;
    .end local v4    # "new_tag":Ljava/lang/String;
    .end local v5    # "typeInfo":Ljava/lang/String;
    :cond_4
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_5

    .line 1736
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 1740
    :cond_5
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_8

    .line 1741
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_6

    .line 1742
    const-string v7, "PMS"

    const-string v9, "releaseWL:p wl"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mADTalkingDetected:Z

    .line 1745
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v7, :cond_7

    .line 1746
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    .line 1749
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    if-eqz v7, :cond_8

    .line 1750
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->sendPsensorNearMonitorMsg()V

    .line 1757
    :cond_8
    iget v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v9, 0xffff

    and-int/2addr v7, v9

    if-ne v7, v12, :cond_c

    .line 1758
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    .line 1760
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuPerfCount:I

    if-nez v7, :cond_e

    .line 1761
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v7, :cond_9

    .line 1762
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuFreqMinWakeLock()V

    .line 1764
    :cond_9
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-nez v7, :cond_a

    .line 1765
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->nativeReleaseCpuNumMinWakeLock()V

    .line 1767
    :cond_a
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuFreqMinCount:I

    if-nez v7, :cond_b

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mCpuNumMinCount:I

    if-eqz v7, :cond_c

    .line 1768
    :cond_b
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V

    .line 1778
    :cond_c
    :goto_2
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v7, :cond_d

    .line 1779
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v9, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/power/HtcWakeLockMonitor;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1782
    :cond_d
    iget-object v7, v6, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-interface {v7, v6, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1783
    invoke-direct {p0, v6, v3}, Lcom/android/server/power/PowerManagerService;->removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1784
    monitor-exit v8

    goto/16 :goto_0

    .end local v3    # "index":I
    .end local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1708
    .restart local v3    # "index":I
    .restart local v6    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catch_0
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-boolean v7, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v7, :cond_2

    .line 1710
    const-string v7, "PMS"

    const-string v9, "removeWakeLock Exception : "

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1771
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lcom/android/server/power/PowerManagerService;->updateHtcCpuCtrlLevel(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private removeHtcCpuCtrlLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;I)V
    .locals 1
    .param p1, "htcCpuCtrl"    # Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    .param p2, "index"    # I

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1892
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyHtcCpuCtrlReleasedLocked(Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;)V

    .line 1893
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1894
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1895
    return-void
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .locals 1
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1969
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1971
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1972
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1973
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1974
    return-void
.end method

.method private scheduleSandmanLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2938
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    if-nez v1, :cond_0

    .line 2939
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mSandmanScheduled:Z

    .line 2940
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2941
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2942
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2944
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private screenStateNotifier(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, -0x1

    .line 4441
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v0, :cond_0

    .line 4442
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcPMSExtension;->notifyActualScreenState(Z)V

    .line 4447
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    .line 4448
    if-eqz p1, :cond_5

    .line 4449
    const-string v0, "UTD_BI"

    const-string v1, "C0006"

    const-string v2, "A0001"

    const-string v3, "Screen On"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4457
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v0, :cond_2

    .line 4458
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    .line 4463
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v0, :cond_3

    .line 4464
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/power/HtcWakeLockMonitor;->screenState(Z)V

    .line 4469
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_4

    .line 4470
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->notifyHABCScreenState(Z)V

    .line 4473
    :cond_4
    return-void

    .line 4451
    :cond_5
    const-string v0, "UTD_BI"

    const-string v1, "C0006"

    const-string v2, "A0002"

    const-string v3, "Screen Off"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendClearScreenTimeoutTask(II)V
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "calcRemaining"    # I

    .prologue
    .line 4064
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 4065
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClearTask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4069
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4070
    return-void
.end method

.method private sendPsensorNearMonitorMsg()V
    .locals 6

    .prologue
    .line 4786
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_0

    .line 4787
    const-string v3, "PMS"

    const-string v4, "sendPSNMMsg S"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4791
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4792
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4793
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4794
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getSettingsScreenOffTimeoutValue()I

    move-result v2

    .line 4795
    .local v2, "screenOffTimeout":I
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_1

    .line 4796
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4802
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "screenOffTimeout":I
    :goto_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_2

    .line 4803
    const-string v3, "PMS"

    const-string v4, "sendPSNMMsg E"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    :cond_2
    return-void

    .line 4799
    :catch_0
    move-exception v0

    .line 4800
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for sendPSNMMsg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendScreenStateChangeLocked(II)V
    .locals 7
    .param p1, "preState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 4418
    if-eq p1, p2, :cond_2

    .line 4419
    const/4 v1, 0x0

    .line 4420
    .local v1, "sendIntent":Z
    const/4 v0, 0x0

    .line 4421
    .local v0, "screenChange":I
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 4422
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSSCL: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    :cond_0
    if-ne p1, v6, :cond_3

    if-ne p2, v5, :cond_3

    .line 4425
    const/4 v1, 0x1

    .line 4426
    const/4 v0, 0x2

    .line 4431
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v2, :cond_2

    .line 4432
    sget-object v2, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityEvent:I

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/android/server/power/HtcPMSExtension;->sendScreenStateChange(IJI)V

    .line 4435
    .end local v0    # "screenChange":I
    .end local v1    # "sendIntent":Z
    :cond_2
    return-void

    .line 4427
    .restart local v0    # "screenChange":I
    .restart local v1    # "sendIntent":Z
    :cond_3
    if-ne p1, v5, :cond_1

    if-ne p2, v6, :cond_1

    .line 4428
    const/4 v1, 0x1

    .line 4429
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAttentionLightInternal(ZI)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 3894
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3895
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 3896
    monitor-exit v3

    .line 3903
    :goto_0
    return-void

    .line 3898
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 3899
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3902
    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 3899
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_1
    move v1, v2

    .line 3902
    goto :goto_1
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .locals 2
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 3975
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3976
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_1

    .line 3978
    :cond_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    .line 3979
    iput p2, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 3980
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3981
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3983
    :cond_1
    monitor-exit v1

    .line 3984
    return-void

    .line 3983
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setForceScreenOnWhenNear(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 4946
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_1

    .line 4947
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 4948
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setForceScreenOnWhenNear = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4950
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean p1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOnWhenNear:Z

    .line 4952
    :cond_1
    return-void
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v4, 0x20000

    .line 3719
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 3720
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL auto-suspend mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalAutoSuspendModeEnabled:Z

    .line 3722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3724
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3726
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3728
    const-string v0, "PMS"

    const-string v1, "Setting HAL auto-suspend mode done"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    :cond_0
    return-void

    .line 3726
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v4, 0x20000

    .line 3733
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_0

    .line 3734
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHalInteractiveModeEnabled:Z

    .line 3736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3738
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3740
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 3742
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting HAL interactive mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_0
    return-void

    .line 3740
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setInteractiveStateLocked(ZI)V
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 2398
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_0

    .line 2399
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishInteractiveStateChangeLocked()V

    .line 2401
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mInteractive:Z

    .line 2402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInteractiveChanging:Z

    .line 2403
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeStarted(ZI)V

    .line 2405
    :cond_0
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3759
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3761
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    if-eqz v3, :cond_0

    .line 3762
    const-string v1, "PMS"

    const-string v3, "LOW_POWER_MODE is disabled"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    monitor-exit v2

    .line 3789
    :goto_0
    return v0

    .line 3767
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v3, :cond_1

    .line 3768
    monitor-exit v2

    goto :goto_0

    .line 3790
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3770
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3772
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 3774
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v0, :cond_3

    .line 3775
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_4

    .line 3779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 3788
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 3789
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 3780
    :cond_4
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_3

    .line 3784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .locals 2
    .param p1, "timeMs"    # I

    .prologue
    .line 3880
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3881
    :try_start_0
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 3882
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3883
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3884
    monitor-exit v1

    .line 3885
    return-void

    .line 3884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 3906
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3908
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_0

    .line 3909
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    .line 3910
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result p1

    .line 3915
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_1

    .line 3916
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3917
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3918
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3920
    :cond_1
    monitor-exit v1

    .line 3921
    return-void

    .line 3920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStayOnSettingInternal(I)V
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3877
    return-void
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 3962
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3965
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 3966
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3967
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3968
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3970
    :cond_0
    monitor-exit v1

    .line 3971
    return-void

    .line 3970
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setTemporaryScreenAutoBrightnessPercentageSettingOverrideInternal(I)V
    .locals 6
    .param p1, "percentage"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 4482
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4483
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v4, :cond_1

    move v1, v0

    .line 4484
    .local v1, "isOffMode":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 4485
    .local v0, "isDimMode":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 4486
    :cond_0
    const-string v2, "PMS"

    const-string v4, "setTSABPSOI: Skip."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    monitor-exit v3

    .line 4496
    :goto_2
    return-void

    .end local v0    # "isDimMode":Z
    .end local v1    # "isOffMode":Z
    :cond_1
    move v1, v2

    .line 4483
    goto :goto_0

    .restart local v1    # "isOffMode":Z
    :cond_2
    move v0, v2

    .line 4484
    goto :goto_1

    .line 4490
    .restart local v0    # "isDimMode":Z
    :cond_3
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    if-eq v2, p1, :cond_4

    .line 4491
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    .line 4492
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 4493
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 4495
    :cond_4
    monitor-exit v3

    goto :goto_2

    .end local v0    # "isDimMode":Z
    .end local v1    # "isOffMode":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .locals 6
    .param p1, "brightness"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3934
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3937
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v4, :cond_1

    move v1, v0

    .line 3938
    .local v1, "isOffMode":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3939
    .local v0, "isDimMode":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 3940
    :cond_0
    const-string v2, "PMS"

    const-string v4, "setBacklightBrightness: screen is off. Skip."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    monitor-exit v3

    .line 3959
    :goto_2
    return-void

    .end local v0    # "isDimMode":Z
    .end local v1    # "isOffMode":Z
    :cond_1
    move v1, v2

    .line 3937
    goto :goto_0

    .restart local v1    # "isOffMode":Z
    :cond_2
    move v0, v2

    .line 3938
    goto :goto_1

    .line 3946
    .restart local v0    # "isDimMode":Z
    :cond_3
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v2, :cond_4

    .line 3947
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v2, :cond_4

    .line 3948
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result p1

    .line 3953
    :cond_4
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    if-eq v2, p1, :cond_5

    .line 3954
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 3955
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3956
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3958
    :cond_5
    monitor-exit v3

    goto :goto_2

    .end local v0    # "isDimMode":Z
    .end local v1    # "isOffMode":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3924
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3925
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    .line 3926
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 3927
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 3928
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 3930
    :cond_0
    monitor-exit v1

    .line 3931
    return-void

    .line 3930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .locals 1

    .prologue
    .line 2888
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUseProximitySensorLocked()Z
    .locals 1

    .prologue
    .line 3636
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 3
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 2563
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v1, :cond_1

    .line 2588
    :cond_0
    :goto_0
    return v0

    .line 2569
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v1, :cond_2

    if-eq p2, v2, :cond_0

    .line 2576
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-ne v1, v2, :cond_3

    if-eqz p3, :cond_0

    .line 2583
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2588
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .locals 6
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    .line 3800
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 3801
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Too early to call shutdown() or reboot()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3804
    :cond_1
    new-instance v3, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    .line 3823
    .local v3, "runnable":Ljava/lang/Runnable;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "PowerManagerService.reboot"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 3824
    .local v2, "rebootThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 3825
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3831
    .local v1, "rebootHandler":Landroid/os/Handler;
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3835
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3838
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3839
    const-string v4, "PMS"

    const-string v5, "rebootHandler msg sent."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    if-eqz p4, :cond_2

    .line 3845
    monitor-enter v3

    .line 3848
    :goto_0
    :try_start_0
    const-string v4, "PMS"

    const-string v5, "runnable.wait()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3852
    :catch_0
    move-exception v4

    goto :goto_0

    .line 3855
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3857
    :cond_2
    return-void
.end method

.method private startMonitorOOBEStatus()V
    .locals 10

    .prologue
    .line 4719
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 4720
    const-string v6, "PMS"

    const-string v7, "OOBE s monitor"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v6, :cond_2

    .line 4723
    const-string v6, "PMS"

    const-string v7, "OOBE s monitor 11"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    :cond_1
    :goto_0
    return-void

    .line 4727
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 4729
    .local v3, "mAlarmManager":Landroid/app/AlarmManager;
    if-eqz v3, :cond_1

    .line 4730
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4731
    .local v1, "intentOnAlarm":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4732
    .local v2, "mAlarmIntent":Landroid/app/PendingIntent;
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    if-eqz v6, :cond_3

    .line 4733
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4734
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z

    .line 4736
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v4, v6, v8

    .line 4737
    .local v4, "timeToAlarm":J
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_4

    .line 4738
    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OOBE s monitor time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    :cond_4
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4741
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mHasSetTimeout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4743
    .end local v1    # "intentOnAlarm":Landroid/content/Intent;
    .end local v2    # "mAlarmIntent":Landroid/app/PendingIntent;
    .end local v3    # "mAlarmManager":Landroid/app/AlarmManager;
    .end local v4    # "timeToAlarm":J
    :catch_0
    move-exception v0

    .line 4744
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s monitor e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startShutdownDevice()V
    .locals 2

    .prologue
    .line 4776
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 4777
    const-string v0, "PMS"

    const-string v1, "OOBE s shutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4780
    const-string v0, "sys.powerctl"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4781
    return-void
.end method

.method private startWatchingForOOBEStatusFinished()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 4587
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 4588
    const-string v0, "PMS"

    const-string v1, "OOBE s watch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v0, :cond_2

    .line 4591
    const-string v0, "PMS"

    const-string v1, "OOBE s watch 11"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    :cond_1
    :goto_0
    return-void

    .line 4594
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v0, :cond_1

    .line 4595
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4596
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .locals 14
    .param p1, "dirty"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 3096
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3097
    .local v2, "oldDisplayReady":Z
    and-int/lit8 v9, p1, 0x3f

    if-eqz v9, :cond_8

    .line 3102
    const/4 v1, 0x0

    .line 3103
    .local v1, "isLoggable":Z
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3106
    .local v5, "preScreenState":I
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v12

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3109
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v9, v5, :cond_1

    .line 3110
    const/4 v1, 0x1

    .line 3111
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v9, :cond_0

    .line 3112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/server/power/PowerManagerService;->mLastScreenOffEventElapsedRealTime:J

    .line 3115
    :cond_0
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v9, :cond_9

    move v9, v10

    :goto_0
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    move v12, v10

    :goto_1
    invoke-static {v9, v12}, Lcom/android/server/power/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 3122
    :cond_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3125
    .local v8, "screenBrightness":I
    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v9, :cond_2

    .line 3126
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v9, :cond_2

    .line 3127
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9, v8}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v8

    .line 3132
    :cond_2
    const/4 v6, 0x0

    .line 3135
    .local v6, "screenAutoBrightnessAdjustment":F
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    .line 3138
    .local v7, "screenAutoBrightnessPercentage":I
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    if-ne v9, v10, :cond_b

    move v0, v10

    .line 3142
    .local v0, "autoBrightness":Z
    :goto_2
    const/4 v3, 0x0

    .line 3145
    .local v3, "overrideBrightness":Z
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3146
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:I

    .line 3147
    const/4 v0, 0x0

    .line 3149
    const/4 v3, 0x1

    .line 3156
    :cond_3
    :goto_3
    if-eqz v0, :cond_6

    .line 3157
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 3160
    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v9, :cond_4

    .line 3161
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v9, :cond_4

    .line 3162
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9, v8}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v8

    .line 3167
    :cond_4
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 3169
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3177
    :cond_5
    :goto_4
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessPercentage(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 3179
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    .line 3190
    :cond_6
    :goto_5
    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v9, :cond_10

    .line 3191
    const/16 v9, 0x2800

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3199
    :goto_6
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 3202
    const/16 v9, 0x64

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 3206
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v8, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 3207
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v6, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 3209
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 3212
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v3, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useOverrideBrightness:Z

    .line 3215
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v7, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessPercentage:I

    .line 3218
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v12

    iput-boolean v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 3220
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    iput-boolean v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 3222
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v9, v10, :cond_11

    .line 3223
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenStateOverrideFromDreamManager:I

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3224
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 3231
    :goto_7
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3232
    .local v4, "preDisplayReady":Z
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    invoke-virtual {v9, v12, v13}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    .line 3234
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eq v9, v4, :cond_7

    .line 3235
    const/4 v1, 0x1

    .line 3238
    :cond_7
    iput-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mRequestWaitForNegativeProximity:Z

    .line 3241
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {p0, v5, v9}, Lcom/android/server/power/PowerManagerService;->sendScreenStateChangeLocked(II)V

    .line 3244
    sget-boolean v9, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v9, :cond_8

    if-eqz v1, :cond_8

    .line 3245
    const-string v9, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateScreenStateLocked: mDisplayReady="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", policy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mWakefulness="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v13}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mWakeLockSummary=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mUserActivitySummary=0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mBootCompleted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    .end local v0    # "autoBrightness":Z
    .end local v1    # "isLoggable":Z
    .end local v3    # "overrideBrightness":Z
    .end local v4    # "preDisplayReady":Z
    .end local v5    # "preScreenState":I
    .end local v6    # "screenAutoBrightnessAdjustment":F
    .end local v7    # "screenAutoBrightnessPercentage":I
    .end local v8    # "screenBrightness":I
    :cond_8
    iget-boolean v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v9, :cond_12

    if-nez v2, :cond_12

    :goto_8
    return v10

    .restart local v1    # "isLoggable":Z
    .restart local v5    # "preScreenState":I
    :cond_9
    move v9, v11

    .line 3115
    goto/16 :goto_0

    :cond_a
    move v12, v11

    goto/16 :goto_1

    .restart local v6    # "screenAutoBrightnessAdjustment":F
    .restart local v7    # "screenAutoBrightnessPercentage":I
    .restart local v8    # "screenBrightness":I
    :cond_b
    move v0, v11

    .line 3138
    goto/16 :goto_2

    .line 3151
    .restart local v0    # "autoBrightness":Z
    .restart local v3    # "overrideBrightness":Z
    :cond_c
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3152
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_3

    .line 3153
    :cond_d
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3154
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    goto/16 :goto_3

    .line 3171
    :cond_e
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3173
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_4

    .line 3181
    :cond_f
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->isValidAutoBrightnessPercentage(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3183
    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    goto/16 :goto_5

    .line 3194
    :cond_10
    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_6

    .line 3227
    :cond_11
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v11, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 3228
    iget-object v9, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v12, -0x1

    iput v12, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_7

    .end local v0    # "autoBrightness":Z
    .end local v1    # "isLoggable":Z
    .end local v3    # "overrideBrightness":Z
    .end local v5    # "preScreenState":I
    .end local v6    # "screenAutoBrightnessAdjustment":F
    .end local v7    # "screenAutoBrightnessPercentage":I
    .end local v8    # "screenBrightness":I
    :cond_12
    move v10, v11

    .line 3253
    goto :goto_8
.end method

.method private updateDreamLocked(IZ)V
    .locals 1
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .prologue
    .line 2922
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 2931
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    .line 2932
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->scheduleSandmanLocked()V

    .line 2935
    :cond_1
    return-void
.end method

.method private updateHtcCpuCtrlLevel(I)V
    .locals 14
    .param p1, "flags"    # I

    .prologue
    .line 1524
    const/4 v7, 0x0

    .line 1525
    .local v7, "level":I
    const/4 v4, 0x0

    .line 1526
    .local v4, "freq_min_level":I
    const/4 v3, 0x0

    .line 1527
    .local v3, "freq_max_level":I
    const/4 v9, 0x0

    .line 1528
    .local v9, "num_min_level":I
    const/4 v8, 0x0

    .line 1531
    .local v8, "num_max_level":I
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1532
    .local v0, "M":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 1533
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1535
    .local v10, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v11, v10, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x800

    if-ne v11, v12, :cond_1

    .line 1536
    const/4 v11, 0x5

    if-le v11, v4, :cond_0

    .line 1537
    const/4 v4, 0x5

    .line 1539
    :cond_0
    const/4 v11, 0x2

    if-le v11, v9, :cond_1

    .line 1540
    const/4 v9, 0x2

    .line 1532
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1546
    .end local v10    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1547
    .local v1, "N":I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_a

    .line 1548
    iget-object v11, p0, Lcom/android/server/power/PowerManagerService;->mHtcCpuCtrls:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;

    .line 1549
    .local v5, "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xf000

    and-int/2addr v11, v12

    if-nez v11, :cond_5

    .line 1551
    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xffff

    and-int/2addr v11, v12

    const/16 v12, 0x800

    if-ne v11, v12, :cond_4

    .line 1552
    const/4 v11, 0x5

    if-le v11, v4, :cond_3

    .line 1553
    const/4 v4, 0x5

    .line 1555
    :cond_3
    const/4 v11, 0x2

    if-le v11, v9, :cond_4

    .line 1556
    const/4 v9, 0x2

    .line 1547
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1563
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->getLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1568
    iget v11, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    const v12, 0xf000

    and-int/2addr v11, v12

    sparse-switch v11, :sswitch_data_0

    goto :goto_2

    .line 1570
    :sswitch_0
    if-eqz v3, :cond_6

    if-ge v7, v3, :cond_4

    .line 1571
    :cond_6
    move v3, v7

    goto :goto_2

    .line 1564
    :catch_0
    move-exception v2

    .line 1565
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateHtcCpuCtrlLevel: Skip. hcc.mFlags="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mFlags:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hcc.mTag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;->mTag:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1574
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_1
    if-eqz v4, :cond_7

    if-le v7, v4, :cond_4

    .line 1575
    :cond_7
    move v4, v7

    goto :goto_2

    .line 1578
    :sswitch_2
    if-eqz v8, :cond_8

    if-ge v7, v8, :cond_4

    .line 1579
    :cond_8
    move v8, v7

    goto :goto_2

    .line 1582
    :sswitch_3
    if-eqz v9, :cond_9

    if-le v7, v9, :cond_4

    .line 1583
    :cond_9
    move v9, v7

    goto :goto_2

    .line 1588
    .end local v5    # "hcc":Lcom/android/server/power/PowerManagerService$HtcCpuCtrl;
    :cond_a
    const v11, 0xffff

    and-int/2addr v11, p1

    sparse-switch v11, :sswitch_data_1

    .line 1678
    :cond_b
    :goto_3
    return-void

    .line 1591
    :sswitch_4
    if-eqz v4, :cond_d

    .line 1592
    if-eqz v3, :cond_c

    if-ge v3, v4, :cond_c

    .line 1593
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_PERF:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    move v4, v3

    .line 1598
    :cond_c
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    .line 1600
    :cond_d
    if-eqz v9, :cond_b

    .line 1601
    if-eqz v8, :cond_e

    if-ge v8, v9, :cond_e

    .line 1602
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_PERF:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    move v9, v8

    .line 1607
    :cond_e
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto :goto_3

    .line 1612
    :sswitch_5
    if-nez v4, :cond_f

    .line 1613
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MIN_FREQ to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1616
    :cond_f
    if-eqz v3, :cond_10

    if-ge v3, v4, :cond_10

    .line 1617
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_MIN_FREQ:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    move v4, v3

    .line 1622
    :cond_10
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    goto/16 :goto_3

    .line 1625
    :sswitch_6
    if-nez v3, :cond_12

    .line 1626
    if-eqz v4, :cond_11

    .line 1629
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    goto/16 :goto_3

    .line 1631
    :cond_11
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MAX_FREQ to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1635
    :cond_12
    if-eqz v4, :cond_13

    if-ge v3, v4, :cond_13

    .line 1636
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Freq conflict in CPU_MAX_FREQ:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    move v4, v3

    .line 1640
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMinWakeLock(I)V

    .line 1642
    :cond_13
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuFreqMaxWakeLock(I)V

    goto/16 :goto_3

    .line 1645
    :sswitch_7
    if-nez v9, :cond_14

    .line 1646
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MIN_NUM to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1649
    :cond_14
    if-eqz v8, :cond_15

    if-ge v8, v9, :cond_15

    .line 1650
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_MIN_NUM:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    move v9, v8

    .line 1655
    :cond_15
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto/16 :goto_3

    .line 1658
    :sswitch_8
    if-nez v8, :cond_17

    .line 1659
    if-eqz v9, :cond_16

    .line 1662
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    goto/16 :goto_3

    .line 1664
    :cond_16
    const-string v11, "PMS"

    const-string v12, "There is no CPU_MAX_NUM to update"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1668
    :cond_17
    if-eqz v9, :cond_18

    if-ge v8, v9, :cond_18

    .line 1669
    const-string v11, "PMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Num conflict in CPU_MAX_NUM:("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    move v9, v8

    .line 1673
    invoke-static {v9}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMinWakeLock(I)V

    .line 1675
    :cond_18
    invoke-static {v8}, Lcom/android/server/power/PowerManagerService;->nativeAcquireCpuNumMaxWakeLock(I)V

    goto/16 :goto_3

    .line 1568
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_3
    .end sparse-switch

    .line 1588
    :sswitch_data_1
    .sparse-switch
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_7
    .end sparse-switch
.end method

.method private updateIsPoweredLocked(I)V
    .locals 14
    .param p1, "dirty"    # I

    .prologue
    .line 2493
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    .line 2494
    iget-boolean v13, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2495
    .local v13, "wasPowered":Z
    iget v12, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2496
    .local v12, "oldPlugType":I
    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2497
    .local v11, "oldLevelLow":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    .line 2498
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    .line 2499
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    .line 2500
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    .line 2503
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 2504
    const-string v1, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIsPoweredLocked: wasPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsPowered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPlugType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v13, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    if-eq v12, v1, :cond_3

    .line 2513
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2516
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mPlugType:I

    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevel:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    .line 2524
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2525
    .local v2, "now":J
    invoke-direct {p0, v13, v12, v0}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2527
    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    .line 2529
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 2534
    if-eqz v0, :cond_3

    .line 2535
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v1}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    .line 2539
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-ne v13, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v11, v1, :cond_6

    .line 2540
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eq v11, v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-nez v1, :cond_5

    .line 2544
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 2546
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 2549
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeskModeEnabled:Z

    if-eqz v1, :cond_6

    .line 2552
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 2553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 2558
    .end local v11    # "oldLevelLow":Z
    .end local v12    # "oldPlugType":I
    .end local v13    # "wasPowered":Z
    :cond_6
    return-void
.end method

.method private updatePowerStateLocked()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x20000

    .line 2424
    sget-boolean v8, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    if-eqz v8, :cond_0

    .line 2425
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 2427
    .local v4, "f":Ljava/util/Formatter;
    :try_start_0
    const-string v5, "udpatePowerStateLocked-arg_check"

    .line 2428
    .local v5, "logKey":Ljava/lang/String;
    const-string v8, "updatePSL(0x%x,%b)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2429
    sget-object v8, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    const-string v9, "udpatePowerStateLocked-arg_check"

    const-string v10, "PMS"

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/power/HtcPMSExtension;->reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2438
    .end local v4    # "f":Ljava/util/Formatter;
    .end local v5    # "logKey":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    if-nez v8, :cond_2

    .line 2486
    :cond_1
    :goto_1
    return-void

    .line 2430
    .restart local v4    # "f":Ljava/util/Formatter;
    :catch_0
    move-exception v3

    .line 2431
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_0

    .line 2432
    const-string v8, "PMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2441
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "f":Ljava/util/Formatter;
    :cond_2
    iget-object v8, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2442
    const-string v8, "PMS"

    const-string v9, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_3
    const-string v8, "updatePowerState"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2448
    :try_start_1
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateIsPoweredLocked(I)V

    .line 2449
    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-direct {p0, v8}, Lcom/android/server/power/PowerManagerService;->updateStayOnLocked(I)V

    .line 2454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2455
    .local v6, "now":J
    const/4 v1, 0x0

    .line 2457
    .local v1, "dirtyPhase2":I
    :cond_4
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2458
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 2459
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2461
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 2462
    invoke-direct {p0, v6, v7, v0}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 2463
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->updateWakefulnessLocked(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2469
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 2472
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->updateDreamLocked(IZ)V

    .line 2475
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDisplayReady:Z

    if-eqz v8, :cond_5

    .line 2476
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->finishInteractiveStateChangeLocked()V

    .line 2482
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSuspendBlockerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2484
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v8
.end method

.method private updateSettingsLocked()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 1120
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1122
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string v9, "screensaver_enabled"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledByDefaultConfig:Z

    if-eqz v6, :cond_9

    move v6, v7

    :goto_0
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    .line 1126
    const-string v9, "screensaver_activate_on_sleep"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v6, :cond_b

    move v6, v7

    :goto_2
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    .line 1130
    const-string v9, "screensaver_activate_on_dock"

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v6, :cond_d

    move v6, v7

    :goto_4
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    .line 1134
    const-string v6, "screen_off_timeout"

    const/16 v9, 0x3a98

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    .line 1137
    const-string v6, "sleep_timeout"

    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mSleepTimeoutSetting:I

    .line 1140
    const-string v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    .line 1143
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 1144
    .local v4, "oldScreenBrightnessSetting":I
    const-string v6, "screen_brightness"

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 1149
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v6, :cond_0

    .line 1150
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v6, :cond_0

    .line 1151
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v6, v9}, Landroid/hardware/display/DisplayManagerInternal;->convertBacklightToDisplayBrightnessAlgorithm(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    .line 1156
    :cond_0
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    if-eq v4, v6, :cond_1

    .line 1157
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenBrightnessSettingOverride:I

    .line 1160
    :cond_1
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 1162
    .local v2, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string v6, "screen_auto_brightness_adj"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 1165
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_2

    .line 1166
    const/high16 v6, 0x7fc00000    # NaNf

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1169
    :cond_2
    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    .line 1174
    const-string v6, "low_power"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_f

    move v1, v7

    .line 1176
    .local v1, "lowPowerModeEnabled":Z
    :goto_6
    const-string v6, "low_power_trigger_level"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_10

    move v0, v7

    .line 1178
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_7
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    if-eqz v6, :cond_3

    .line 1179
    const/4 v1, 0x0

    .line 1180
    const/4 v0, 0x0

    .line 1181
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    .line 1182
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 1183
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    .line 1184
    iput-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    .line 1188
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-ne v1, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eq v0, v6, :cond_5

    .line 1190
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 1191
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateLowPowerModeLocked()V

    .line 1196
    :cond_5
    const-string v6, "deskdock_dim_screen"

    const/16 v7, 0xa

    invoke-static {v5, v6, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    .line 1199
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    if-eq v6, v11, :cond_6

    .line 1200
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    const v7, 0xea60

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    .line 1205
    :cond_6
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    .line 1206
    .local v3, "oldScreenAutoBrightnessPercentageSetting":I
    const-string v6, "screen_auto_brightness_max"

    iget v7, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    invoke-static {v5, v6, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    .line 1210
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    if-eq v3, v6, :cond_7

    .line 1211
    iput v11, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    .line 1215
    :cond_7
    sget-boolean v6, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v6, :cond_8

    .line 1216
    const-string v6, "PMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SettingsObserver: mDreamsEnabledSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDreamsActivateOnSleepSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDreamsActivateOnDockSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenOffTimeoutSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mStayOnWhilePluggedInSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenBrightnessSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenBrightnessModeSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLowPowerModeSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenOffDelayForDeskDock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffDelayForDeskDock:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mScreenAutoBrightnessPercentageSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mTemporaryScreenAutoBrightnessPercentageSettingOverride="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/power/PowerManagerService;->mTemporaryScreenAutoBrightnessPercentageSettingOverride:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_8
    iget v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1232
    return-void

    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v1    # "lowPowerModeEnabled":Z
    .end local v2    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .end local v3    # "oldScreenAutoBrightnessPercentageSetting":I
    .end local v4    # "oldScreenBrightnessSetting":I
    :cond_9
    move v6, v8

    .line 1122
    goto/16 :goto_0

    :cond_a
    move v6, v8

    goto/16 :goto_1

    :cond_b
    move v6, v8

    .line 1126
    goto/16 :goto_2

    :cond_c
    move v6, v8

    goto/16 :goto_3

    :cond_d
    move v6, v8

    .line 1130
    goto/16 :goto_4

    :cond_e
    move v6, v8

    goto/16 :goto_5

    .restart local v2    # "oldScreenAutoBrightnessAdjustmentSetting":F
    .restart local v4    # "oldScreenBrightnessSetting":I
    :cond_f
    move v1, v8

    .line 1174
    goto/16 :goto_6

    .restart local v1    # "lowPowerModeEnabled":Z
    :cond_10
    move v0, v8

    .line 1176
    goto/16 :goto_7
.end method

.method private updateStayOnLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    .line 2596
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_0

    .line 2597
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2598
    .local v0, "wasStayOn":Z
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2600
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    .line 2605
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    if-eq v1, v0, :cond_0

    .line 2606
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2609
    .end local v0    # "wasStayOn":Z
    :cond_0
    return-void

    .line 2602
    .restart local v0    # "wasStayOn":Z
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mStayOn:Z

    goto :goto_0
.end method

.method private updateSuspendBlockerLocked()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3645
    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a

    move v2, v3

    .line 3646
    .local v2, "needWakeLockSuspendBlocker":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->needDisplaySuspendBlockerLocked()Z

    move-result v1

    .line 3647
    .local v1, "needDisplaySuspendBlocker":Z
    if-nez v1, :cond_b

    move v0, v3

    .line 3650
    .local v0, "autoSuspend":Z
    :goto_1
    if-nez v0, :cond_1

    .line 3651
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_0

    .line 3652
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3654
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v5, :cond_1

    .line 3655
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3660
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-nez v5, :cond_2

    .line 3661
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3662
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3664
    :cond_2
    if-eqz v1, :cond_4

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-nez v5, :cond_4

    .line 3665
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v5, :cond_3

    .line 3666
    const-string v5, "PMS"

    const-string v6, "acq wl D"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :cond_3
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3669
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3673
    :cond_4
    if-nez v2, :cond_5

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    if-eqz v5, :cond_5

    .line 3674
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3675
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingWakeLockSuspendBlocker:Z

    .line 3677
    :cond_5
    if-nez v1, :cond_7

    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    if-eqz v5, :cond_7

    .line 3678
    sget-boolean v5, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v5, :cond_6

    .line 3679
    const-string v5, "PMS"

    const-string v6, "rel wl D"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    :cond_6
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3682
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mHoldingDisplaySuspendBlocker:Z

    .line 3686
    :cond_7
    if-eqz v0, :cond_9

    .line 3687
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v5, :cond_8

    .line 3688
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    .line 3690
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v4, :cond_9

    .line 3691
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    .line 3694
    :cond_9
    return-void

    .end local v0    # "autoSuspend":Z
    .end local v1    # "needDisplaySuspendBlocker":Z
    .end local v2    # "needWakeLockSuspendBlocker":Z
    :cond_a
    move v2, v4

    .line 3645
    goto :goto_0

    .restart local v1    # "needDisplaySuspendBlocker":Z
    .restart local v2    # "needWakeLockSuspendBlocker":Z
    :cond_b
    move v0, v4

    .line 3647
    goto :goto_1
.end method

.method private updateUserActivityEventLocked()V
    .locals 6

    .prologue
    .line 4382
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 4383
    const-string v2, "PMS"

    const-string v3, "udaUAEL"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/android/server/power/PowerManagerService;->forceScreenDim:Z

    .line 4387
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4388
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMirrorModeTurnedOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isMiracastModeTurnedOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4389
    :cond_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_2

    .line 4390
    const-string v2, "PMS"

    const-string v3, "At Mirror or Miracast mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4393
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4394
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4399
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    .line 4396
    :catch_0
    move-exception v0

    .line 4397
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PMS"

    const-string v3, "Exception for updateUserActivityEventLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .locals 19
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 2699
    and-int/lit8 v13, p3, 0x27

    if-eqz v13, :cond_7

    .line 2701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2704
    const/4 v11, 0x0

    .line 2705
    .local v11, "screenOffTimeoutLog":I
    const/4 v9, 0x0

    .line 2707
    .local v9, "screenDimDurationLog":I
    const-wide/16 v6, 0x0

    .line 2708
    .local v6, "nextTimeout":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_b

    .line 2711
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked()I

    move-result v12

    .line 2712
    .local v12, "sleepTimeout":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v10

    .line 2713
    .local v10, "screenOffTimeout":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/power/PowerManagerService;->getScreenDimDurationLocked(I)I

    move-result v8

    .line 2715
    .local v8, "screenDimDuration":I
    move v11, v10

    .line 2716
    move v9, v8

    .line 2718
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2719
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    .line 2720
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    sub-long v6, v14, v16

    .line 2722
    cmp-long v13, p1, v6

    if-gez v13, :cond_8

    .line 2723
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2731
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 2733
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 2734
    cmp-long v13, p1, v6

    if-gez v13, :cond_2

    .line 2735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 2736
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2742
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-nez v13, :cond_3

    .line 2743
    if-ltz v12, :cond_a

    .line 2744
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2746
    .local v2, "anyUserActivity":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v13, v2, v14

    if-ltz v13, :cond_3

    .line 2747
    int-to-long v14, v12

    add-long v6, v2, v14

    .line 2748
    cmp-long v13, p1, v6

    if-gez v13, :cond_3

    .line 2749
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2757
    .end local v2    # "anyUserActivity":J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-eqz v13, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-ltz v13, :cond_4

    .line 2758
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2759
    .local v5, "msg":Landroid/os/Message;
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v13, v5, v6, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2768
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "screenDimDuration":I
    .end local v10    # "screenOffTimeout":I
    .end local v12    # "sleepTimeout":I
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .line 2769
    .local v4, "isLoggable":Z
    sget-boolean v13, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreUserActivitySummary:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreWakefulness:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenDimDuration:I

    if-ne v13, v9, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenOffTimeout:I

    if-eq v13, v11, :cond_6

    .line 2774
    :cond_5
    const/4 v4, 0x1

    .line 2776
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mPreUserActivitySummary:I

    .line 2777
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mPreWakefulness:I

    .line 2778
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenDimDuration:I

    .line 2779
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/PowerManagerService;->mPreScreenOffTimeout:I

    .line 2780
    if-eqz v4, :cond_7

    .line 2781
    const-string v13, "PMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v15}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mUserActivitySummary=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", nextTimeout="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    .end local v4    # "isLoggable":Z
    .end local v6    # "nextTimeout":J
    .end local v9    # "screenDimDurationLog":I
    .end local v11    # "screenOffTimeoutLog":I
    :cond_7
    return-void

    .line 2725
    .restart local v6    # "nextTimeout":J
    .restart local v8    # "screenDimDuration":I
    .restart local v9    # "screenDimDurationLog":I
    .restart local v10    # "screenOffTimeout":I
    .restart local v11    # "screenOffTimeoutLog":I
    .restart local v12    # "sleepTimeout":I
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    .line 2726
    cmp-long v13, p1, v6

    if-gez v13, :cond_1

    .line 2727
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_0

    .line 2737
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 2738
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_1

    .line 2753
    :cond_a
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    .line 2754
    const-wide/16 v6, -0x1

    goto/16 :goto_2

    .line 2763
    .end local v8    # "screenDimDuration":I
    .end local v10    # "screenOffTimeout":I
    .end local v12    # "sleepTimeout":I
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/PowerManagerService;->mUserActivitySummary:I

    goto/16 :goto_3
.end method

.method private updateWakeLockSummaryLocked(I)V
    .locals 7
    .param p1, "dirty"    # I

    .prologue
    .line 2619
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_7

    .line 2620
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2622
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2623
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2624
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2625
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 2623
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2627
    :sswitch_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2630
    :sswitch_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2633
    :sswitch_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2636
    :sswitch_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2639
    :sswitch_4
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2642
    :sswitch_5
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_1

    .line 2648
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_0
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 2649
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2651
    :cond_1
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    .line 2653
    :cond_2
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2655
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-nez v3, :cond_3

    .line 2656
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2661
    :cond_3
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_4

    .line 2662
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 2663
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2670
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    if-eqz v3, :cond_5

    .line 2671
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    const-string v4, "updateWakeLockSummaryLocked"

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/HtcDongleMode;->getCtrlWakeLockState(Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    .line 2677
    :cond_5
    sget-boolean v3, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v3, :cond_7

    .line 2678
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    if-eq v3, v4, :cond_7

    .line 2679
    :cond_6
    const-string v3, "PMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWakeLockSummary=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulnessLog:I

    .line 2683
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummaryLog:I

    .line 2688
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_7
    return-void

    .line 2664
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_8
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2665
    iget v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    goto :goto_2

    .line 2625
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_1
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .locals 11
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1988
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1989
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 1990
    .local v9, "index":I
    if-gez v9, :cond_0

    .line 1995
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2012
    .end local v9    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1999
    .restart local v9    # "index":I
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2005
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2006
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 2009
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 2010
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 2012
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2013
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .locals 7
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 2863
    const/4 v0, 0x0

    .line 2864
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_0

    .line 2867
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2871
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2872
    .local v2, "time":J
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2873
    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/power/PowerManagerService;->napNoUpdateLocked(JI)Z

    move-result v0

    .line 2880
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return v0

    .line 2875
    .restart local v2    # "time":J
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto :goto_0
.end method

.method private userActivityFromNative(JII)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2107
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 2108
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uAFN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_0
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V

    .line 2111
    return-void
.end method

.method private userActivityInternal(JIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 2114
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2115
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2116
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2118
    :cond_0
    monitor-exit v1

    .line 2119
    return-void

    .line 2118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .locals 9
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v6, 0x20000

    .line 2124
    if-eqz p3, :cond_0

    .line 2125
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateUserActivityEventLocked()V

    .line 2130
    :cond_0
    iput p3, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityEvent:I

    .line 2134
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    if-lez v2, :cond_2

    .line 2135
    sget-boolean v2, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 2136
    const-string v2, "PMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear Timeout_Once("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2139
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClearScreenTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2140
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenTimeout_Once:I

    .line 2141
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->recalculateScreenTimeout()V

    .line 2151
    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 2188
    :goto_0
    return v0

    .line 2156
    :cond_4
    const-string v2, "userActivity"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2158
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_5

    .line 2159
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 2160
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastInteractivePowerHintTime:J

    .line 2163
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 2165
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_7

    .line 2186
    :cond_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_0

    .line 2171
    :cond_7
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    .line 2172
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_9

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_9

    .line 2174
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTimeNoChangeLights:J

    .line 2175
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2186
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 2179
    :cond_8
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_9

    .line 2180
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityTime:J

    .line 2181
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2186
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :cond_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    .line 2188
    goto :goto_0

    .line 2186
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private wakeUpInternal(JI)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 2192
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2193
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2194
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 2196
    :cond_0
    monitor-exit v1

    .line 2197
    return-void

    .line 2196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JI)Z
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const-wide/32 v8, 0x20000

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 2205
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastSleepTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    if-eq v1, v7, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceScreenOn:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->turnOnScreenOnce:Z

    if-nez v1, :cond_1

    .line 2236
    :goto_0
    return v0

    .line 2212
    :cond_1
    const-string v0, "wakeUp"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2214
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    packed-switch v0, :pswitch_data_0

    .line 2226
    :goto_1
    :pswitch_0
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mLastWakeTime:J

    .line 2227
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 2228
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mWakefulness:I

    .line 2229
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->setInteractiveStateLocked(ZI)V

    .line 2231
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v7

    .line 2236
    goto :goto_0

    .line 2216
    :pswitch_1
    :try_start_1
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from sleep (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2234
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 2219
    :pswitch_2
    :try_start_2
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dream (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2222
    :pswitch_3
    const-string v0, "PMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waking up from dozing (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static wakefulnessToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "wakefulness"    # I

    .prologue
    .line 5135
    packed-switch p0, :pswitch_data_0

    .line 5145
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5137
    :pswitch_0
    const-string v0, "Asleep"

    goto :goto_0

    .line 5139
    :pswitch_1
    const-string v0, "Awake"

    goto :goto_0

    .line 5141
    :pswitch_2
    const-string v0, "Dreaming"

    goto :goto_0

    .line 5143
    :pswitch_3
    const-string v0, "Dozing"

    goto :goto_0

    .line 5135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private watchdogInternal()V
    .locals 2

    .prologue
    .line 4862
    new-instance v0, Lcom/android/server/power/PowerManagerService$7;

    const-string v1, "PowerManagerService.watchdog()"

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$7;->start()V

    .line 4874
    return-void
.end method

.method private wipeSystemInternal([B[B)Z
    .locals 4
    .param p1, "imei"    # [B
    .param p2, "encMsg"    # [B

    .prologue
    .line 4076
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->nativeWipeSystem([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4077
    const/4 v1, 0x1

    .line 4083
    :goto_0
    return v1

    .line 4078
    :catch_0
    move-exception v0

    .line 4079
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 4080
    const-string v1, "PMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wipeSystem: imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", encMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public monitor()V
    .locals 2

    .prologue
    .line 4958
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4959
    :try_start_0
    monitor-exit v1

    .line 4960
    return-void

    .line 4959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    .prologue
    const/16 v8, 0x3e8

    .line 857
    iget-object v7, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 858
    if-ne p1, v8, :cond_0

    .line 859
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 860
    .local v2, "now":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z

    .line 861
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 862
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z

    .line 864
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 867
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->checkIfPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mOOBEInstalled:Z

    .line 868
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->startWatchingForOOBEStatusFinished()V

    .line 869
    sget-boolean v1, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 870
    const-string v1, "PMS"

    const-string v4, "BootComplete E"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v2    # "now":J
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    if-ne p1, v8, :cond_3

    .line 879
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    if-eqz v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    invoke-virtual {v1}, Lcom/android/server/power/HtcPowerSaver;->bootCompletedNotify()V

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    if-eqz v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-virtual {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->bootCompleted()V

    .line 892
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    if-eqz v1, :cond_3

    .line 894
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-virtual {v1}, Lcom/android/server/power/HtcWakeLockDetector;->bootCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 902
    :cond_3
    :goto_0
    return-void

    .line 874
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PMS"

    const-string v4, "bootCompleted Exception : "

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 825
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "PMS"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    const-string v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 829
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 832
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PMS2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPMS2HandlerThread:Landroid/os/HandlerThread;

    .line 833
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPMS2HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 834
    new-instance v0, Lcom/android/server/power/PowerManagerService$PMS2Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPMS2HandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PMS2Handler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPMS2Handler:Landroid/os/Handler;

    .line 837
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 838
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 841
    new-instance v0, Lcom/android/server/power/HtcPMSExtension;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcPMSExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    .line 845
    sget-object v0, Lcom/android/server/power/PowerManagerService;->mHtcPMSExtension:Lcom/android/server/power/HtcPMSExtension;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcPMSExtension;->writeScreenState(Z)V

    .line 849
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_1

    .line 850
    const-string v0, "PMS"

    const-string v1, "onStart E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 13
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 905
    iget-object v12, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 906
    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 907
    const-string v0, "PMS"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService;->checkUseNewBacklightMechanism(Landroid/content/Context;)V

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 915
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 916
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 917
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 918
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 919
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 921
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 922
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMinimum:I

    .line 923
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingMaximum:I

    .line 924
    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSettingDefault:I

    .line 927
    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenAutoBrightnessPercentageSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mScreenAutoBrightnessPercentageSettingDefault:I

    .line 930
    new-instance v11, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 934
    .local v11, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 935
    new-instance v0, Lcom/android/server/power/Notifier;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 939
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService;->createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 942
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 944
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 945
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 948
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v11}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 952
    new-instance v0, Lcom/android/server/power/HtcDongleMode;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcDongleMode;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcDongleMode:Lcom/android/server/power/HtcDongleMode;

    .line 956
    new-instance v0, Lcom/android/server/power/HtcWakeLockMonitor;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockMonitor;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockMonitor:Lcom/android/server/power/HtcWakeLockMonitor;

    .line 960
    new-instance v0, Lcom/android/server/power/HtcWakeLockDetector;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcWakeLockDetector:Lcom/android/server/power/HtcWakeLockDetector;

    .line 965
    new-instance v0, Lcom/android/server/power/HtcPowerSaver;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcPowerSaver;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcPowerSaver:Lcom/android/server/power/HtcPowerSaver;

    .line 966
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerSaverHandler:Landroid/os/Handler;

    .line 970
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 971
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 972
    const/16 v0, 0x3e8

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 973
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 976
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->isQuickbootSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mQuickbootEnabled:Z

    .line 980
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mQuickbootEnabled:Z

    if-eqz v0, :cond_1

    .line 981
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 982
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$QuickBootReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$QuickBootReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 987
    :cond_1
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 988
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 992
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 993
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 996
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 997
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    sget-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$DockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1006
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1007
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1012
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1013
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1016
    const-string v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1019
    const-string v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1022
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1025
    const-string v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1028
    const-string v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1031
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1034
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1037
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1040
    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1043
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1047
    const-string v0, "deskdock_dim_screen"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1052
    const-string v0, "screen_auto_brightness_max"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1058
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->checkHtcCustomizationReader()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_2

    .line 1059
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mHtcCustomizationReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v1, "sense_version"

    const-string v2, "7.0"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1060
    .local v10, "sensVersion":F
    float-to-double v0, v10

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 1061
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    .line 1067
    .end local v10    # "sensVersion":F
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->readConfigurationLocked()V

    .line 1068
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updateSettingsLocked()V

    .line 1069
    iget v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 1070
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 1071
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    .line 1073
    const-string v0, "PMS"

    const-string v1, "systemReady E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_3
    return-void

    .line 1071
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1236
    sget-boolean v4, Lcom/android/server/power/PowerManagerService;->DISABLE_LOW_POWER_MODE:Z

    if-eqz v4, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-eqz v4, :cond_2

    .line 1246
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1248
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    .line 1250
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeConfigured:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mAutoLowPowerModeSnoozing:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mBatteryLevelLow:Z

    if-eqz v4, :cond_4

    move v0, v2

    .line 1252
    .local v0, "autoLowPowerModeEnabled":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeSetting:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    move v1, v2

    .line 1254
    .local v1, "lowPowerModeEnabled":Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    if-eq v4, v1, :cond_0

    .line 1255
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerModeEnabled:Z

    .line 1256
    const/4 v4, 0x5

    if-eqz v1, :cond_6

    :goto_3
    invoke-direct {p0, v4, v2}, Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V

    .line 1257
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "autoLowPowerModeEnabled":Z
    .end local v1    # "lowPowerModeEnabled":Z
    :cond_4
    move v0, v3

    .line 1250
    goto :goto_1

    .restart local v0    # "autoLowPowerModeEnabled":Z
    :cond_5
    move v1, v3

    .line 1252
    goto :goto_2

    .restart local v1    # "lowPowerModeEnabled":Z
    :cond_6
    move v2, v3

    .line 1256
    goto :goto_3
.end method
