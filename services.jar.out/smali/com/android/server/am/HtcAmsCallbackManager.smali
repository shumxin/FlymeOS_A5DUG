.class public Lcom/android/server/am/HtcAmsCallbackManager;
.super Ljava/lang/Object;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;,
        Lcom/android/server/am/HtcAmsCallbackManager$AmsCallbackBase;,
        Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;,
        Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;,
        Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;,
        Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;,
        Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    }
.end annotation


# static fields
.field private static final DEEP_DEBUG:Z = false

.field private static final FUNCID_ACTIVITY_PAUSED:I = 0x13

.field private static final FUNCID_ACTIVITY_RESUMED:I = 0x12

.field private static final FUNCID_ADD_RECENT_TASK:I = 0xb

.field private static final FUNCID_AFTER_START_ACTIVITY:I = 0x19

.field private static final FUNCID_APPLICATION_CRASH:I = 0xd

.field private static final FUNCID_APP_DIED:I = 0xe

.field private static final FUNCID_APP_DIED_V2:I = 0x1c

.field private static final FUNCID_ATTACH_APPLICATION:I = 0x9

.field private static final FUNCID_BEFORE_START_ACTIVITY:I = 0x18

.field private static final FUNCID_BROADCAST_INTENT:I = 0xc

.field private static final FUNCID_CLEAN_UP_APPLICATION_RECORD:I = 0x10

.field private static final FUNCID_CRASH_APPLICATION:I = 0xf

.field private static final FUNCID_FINISH_BOOTING:I = 0x2

.field private static final FUNCID_GENERATE_APPLICATION_PROVIDERS:I = 0xa

.field private static final FUNCID_GENERATE_PROCESS_ERROR:I = 0x1b

.field private static final FUNCID_GOING_TO_SLEEP:I = 0x3

.field private static final FUNCID_HIBERNATE:I = 0x14

.field private static final FUNCID_HIBERNATE_KILL_APP:I = 0x15

.field private static final FUNCID_MAIN:I = 0x1

.field private static final FUNCID_MAX:I = 0x1d

.field private static final FUNCID_MIN:I = 0x1

.field private static final FUNCID_REAL_APP_NOT_RESPONDING:I = 0x7

.field private static final FUNCID_REMOVE_PROCESS:I = 0x8

.field private static final FUNCID_RESUME_FROM_HIBERNATE:I = 0x16

.field private static final FUNCID_SHUTDOWN:I = 0x17

.field private static final FUNCID_START_ACTIVITY_NEW_INTENT:I = 0x1a

.field private static final FUNCID_START_PROCESS:I = 0x6

.field private static final FUNCID_START_PROCESS_NEW_PACKAGE:I = 0x5

.field private static final FUNCID_TOP_APP_CHANGED:I = 0x11

.field private static final FUNCID_WAKING_UP:I = 0x4

.field private static final HIBERNATE_TIMEOUT:J = 0xbb8L

.field private static final HTC_DEBUG:Z

.field private static final MAIN_TIMEOUT:J = 0xbb8L

.field private static final MESSAGE_TIMEOUT:J = 0x1f4L

.field private static final MSG_AMS_CALLBACK:I = 0x1

.field private static final MSG_WATCHDOG_CHECK_WORKING_THREAD:I = 0x2

.field private static final SHUTDOWN_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "HtcAmsCallbackManager"

.field private static final WATCHDOG_CHECK_WORKING_THREAD_DELAY:J = 0x2710L

.field private static final WATCHDOG_TIMEOUT:J = 0x7530L


# instance fields
.field private mCallbacks:[Ljava/util/ArrayList;

.field private mHibernateFinishSignal:Ljava/lang/Object;

.field private volatile mIsHibernateFinished:Z

.field private volatile mIsMainFinished:Z

.field private volatile mIsShutdownFinished:Z

.field private mMainFinishSignal:Ljava/lang/Object;

.field private mShutdownFinishSignal:Ljava/lang/Object;

.field private mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

.field private mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

.field private mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v4, 0x1d

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    .line 76
    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    .line 77
    new-array v1, v4, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    .line 79
    iput-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    .line 398
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    .line 399
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 449
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    .line 450
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    .line 505
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    .line 506
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 82
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    .line 84
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackListener;

    invoke-direct {v1}, Lcom/android/server/am/HtcAmsCallbackListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 93
    new-instance v1, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;

    invoke-direct {v1}, Lcom/htc/server/HtcAppUsageStatsServiceAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 96
    new-instance v1, Lcom/htc/server/report/error/HtcErrorReportAmsListener;

    invoke-direct {v1}, Lcom/htc/server/report/error/HtcErrorReportAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 102
    new-instance v1, Lcom/htc/server/HtcBatteryAmsListener;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {v1, v2}, Lcom/htc/server/HtcBatteryAmsListener;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 105
    new-instance v1, Lcom/htc/server/HtcAlarmGroupingListener;

    invoke-direct {v1}, Lcom/htc/server/HtcAlarmGroupingListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 108
    new-instance v1, Lcom/htc/server/HtcOOBEMonitorListener;

    invoke-direct {v1}, Lcom/htc/server/HtcOOBEMonitorListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 111
    sget v1, Lcom/android/server/am/HtcAmsUtil;->sSkuId:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 112
    new-instance v1, Lcom/htc/server/HtcTmoAppUsageListener;

    invoke-direct {v1}, Lcom/htc/server/HtcTmoAppUsageListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 117
    :cond_1
    new-instance v1, Lcom/htc/server/report/up/HtcUPDataAMSListener;

    invoke-direct {v1}, Lcom/htc/server/report/up/HtcUPDataAMSListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 121
    new-instance v1, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;

    invoke-direct {v1}, Lcom/htc/server/report/ub/HtcDeviceInfoAmsListener;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 125
    invoke-static {}, Lcom/android/server/notification/NotificationAmsListener;->getInstance()Lcom/android/server/notification/NotificationAmsListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/HtcAmsCallbackManager;->addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V

    .line 145
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    const-string v2, "HtcAmsCallbackManager"

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    .line 146
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->start()V

    .line 147
    new-instance v1, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;-><init>(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    .line 149
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->init()V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAmsCallbackManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAmsCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/HtcAmsCallbackManager;)Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAmsCallbackManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    return v0
.end method

.method private handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1030
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .line 1031
    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x13

    aget-object v1, v6, v7

    .line 1033
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1035
    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v3

    .line 1037
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1038
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1042
    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1043
    return-void
.end method

.method private handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1005
    iget-object v0, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcWrapActivityRecord;

    .line 1006
    .local v0, "activity":Lcom/android/server/am/HtcWrapActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x12

    aget-object v1, v6, v7

    .line 1008
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1010
    .local v2, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v3

    .line 1012
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1013
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1017
    .end local v2    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1018
    return-void
.end method

.method private handleAddRecentTask(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 793
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 794
    .local v6, "task":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 795
    .local v4, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xb

    aget-object v0, v7, v8

    .line 797
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 799
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v6, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v2

    .line 801
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 802
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 806
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 807
    return-void
.end method

.method private handleAfterStartActivity()V
    .locals 7

    .prologue
    .line 1124
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x19

    aget-object v0, v5, v6

    .line 1126
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1128
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->afterStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v2

    .line 1130
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1131
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1135
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleAmsCallback(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    return-void

    .line 283
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleFinishBooting()V

    goto :goto_0

    .line 291
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGoingToSleep()V

    goto :goto_0

    .line 295
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleWakingUp()V

    goto :goto_0

    .line 299
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 303
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 307
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 311
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 315
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 319
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 328
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 332
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 336
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 340
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 344
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 348
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 352
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityResumed(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto :goto_0

    .line 356
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleActivityPaused(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 360
    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleHibernate()V

    goto/16 :goto_0

    .line 364
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleHibernateKillApp(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 368
    :pswitch_15
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleResumeFromHibernate()V

    goto/16 :goto_0

    .line 372
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleShutdown()V

    goto/16 :goto_0

    .line 376
    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleBeforeStartActivity()V

    goto/16 :goto_0

    .line 380
    :pswitch_18
    invoke-direct {p0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAfterStartActivity()V

    goto/16 :goto_0

    .line 384
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 388
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 392
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    invoke-direct {p0, v0}, Lcom/android/server/am/HtcAmsCallbackManager;->handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private handleAppDied(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 904
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 905
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xe

    aget-object v0, v6, v7

    .line 907
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 909
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 910
    :catch_0
    move-exception v2

    .line 911
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 912
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 916
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 917
    return-void
.end method

.method private handleAppDiedV2(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1207
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1208
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x1c

    aget-object v0, v6, v7

    .line 1210
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1212
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v2

    .line 1214
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1215
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1219
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1220
    return-void
.end method

.method private handleApplicationCrash(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 876
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 877
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    .line 878
    .local v4, "pkgList":Ljava/util/HashSet;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xd

    aget-object v0, v7, v8

    .line 880
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 882
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v2

    .line 884
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 885
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 889
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 890
    return-void
.end method

.method private handleAttachApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 736
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 737
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x9

    aget-object v0, v6, v7

    .line 739
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 741
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v2

    .line 743
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 744
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 748
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 749
    return-void
.end method

.method private handleBeforeStartActivity()V
    .locals 7

    .prologue
    .line 1102
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x18

    aget-object v0, v5, v6

    .line 1104
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1106
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->beforeStartActivityUncheckedLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v2

    .line 1108
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1109
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1113
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleBroadcastIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 845
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 846
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v0, v6, v7

    .line 848
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 850
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onBroadcastIntentLocked(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v2

    .line 852
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 853
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 857
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 858
    return-void
.end method

.method private handleCleanUpApplicationRecord(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 955
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 956
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x10

    aget-object v0, v6, v7

    .line 958
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 960
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    :catch_0
    move-exception v2

    .line 962
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 963
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 967
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 968
    return-void
.end method

.method private handleCrashApplication(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 929
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 930
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 931
    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xf

    aget-object v0, v7, v8

    .line 933
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 935
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    :catch_0
    move-exception v3

    .line 937
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 938
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 942
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 943
    return-void
.end method

.method private handleFinishBooting()V
    .locals 7

    .prologue
    .line 568
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x2

    aget-object v0, v5, v6

    .line 570
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 572
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v2

    .line 574
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 575
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 579
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleGenerateApplicationProviders(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 761
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 762
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ProviderInfo;

    .line 763
    .local v4, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0xa

    aget-object v0, v7, v8

    .line 765
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 767
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 770
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 774
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 775
    return-void
.end method

.method private handleGenerateProcessError(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 13
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1176
    iget-object v1, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1177
    .local v1, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v11, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1178
    .local v2, "condition":I
    iget-object v3, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1179
    .local v3, "activity":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1180
    .local v4, "shortMsg":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param5:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 1181
    .local v5, "longMsg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 1182
    .local v6, "stackTrace":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v12, 0x1b

    aget-object v7, v11, v12

    .line 1184
    .local v7, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1186
    .local v0, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v8

    .line 1188
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1189
    .local v10, "strBuilder":Ljava/lang/StringBuilder;
    const-string v11, "Callback "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " crashed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    const-string v11, "HtcAmsCallbackManager"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1193
    .end local v0    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1194
    return-void
.end method

.method private handleGoingToSleep()V
    .locals 7

    .prologue
    .line 590
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 592
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 594
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onGoingToSleep()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 601
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleHibernate()V
    .locals 12

    .prologue
    .line 477
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x14

    aget-object v0, v7, v8

    .line 479
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 481
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 482
    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHibernate()V

    .line 483
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    add-long/2addr v10, v4

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 484
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 485
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".onHibernate() is slow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 490
    .restart local v6    # "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 495
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 496
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    .line 497
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 498
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onHibernate finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    monitor-exit v8

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleHibernateKillApp(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1055
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 1056
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x15

    aget-object v0, v6, v7

    .line 1058
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1060
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v2

    .line 1062
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1063
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1067
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1068
    return-void
.end method

.method private handleMain(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 10
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    const/4 v8, 0x1

    .line 426
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    .line 427
    .local v5, "service":Lcom/android/server/am/ActivityManagerService;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    .line 428
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v0, v7, v8

    .line 430
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 432
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v3

    .line 434
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 435
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 439
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 441
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 442
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 443
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 444
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onMain finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_1
    monitor-exit v8

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleRealAppNotResponding(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 686
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 687
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x7

    aget-object v0, v6, v7

    .line 689
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 691
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v2

    .line 693
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 694
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 698
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 699
    return-void
.end method

.method private handleRemoveProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 711
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 712
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x8

    aget-object v0, v6, v7

    .line 714
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 716
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v2

    .line 718
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 719
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 723
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 724
    return-void
.end method

.method private handleResumeFromHibernate()V
    .locals 7

    .prologue
    .line 1080
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v6, 0x16

    aget-object v0, v5, v6

    .line 1082
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1084
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onResumeFromHibernate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1087
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1091
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private handleShutdown()V
    .locals 12

    .prologue
    .line 534
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x17

    aget-object v0, v7, v8

    .line 536
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 538
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 539
    .local v4, "startTime":J
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onShutdown()V

    .line 540
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    add-long/2addr v10, v4

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 541
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 542
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".onShutdown() is slow"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    .end local v4    # "startTime":J
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 546
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 547
    .restart local v6    # "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 552
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v8

    .line 553
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 554
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 555
    sget-boolean v7, Lcom/android/server/am/HtcAmsCallbackManager;->HTC_DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "HtcAmsCallbackManager"

    const-string v9, "onShutdown finished"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2
    monitor-exit v8

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private handleStartActivityNewIntent(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 1147
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 1148
    .local v5, "prev":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/HtcWrapTaskRecord;

    .line 1149
    .local v2, "curr":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v8, 0x1a

    aget-object v0, v7, v8

    .line 1151
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 1153
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v3

    .line 1155
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1156
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1160
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 1161
    return-void
.end method

.method private handleStartProcess(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 661
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 662
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v7, 0x6

    aget-object v0, v6, v7

    .line 664
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 666
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    :catch_0
    move-exception v2

    .line 668
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 669
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 673
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 674
    return-void
.end method

.method private handleStartProcessNewPackage(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 9
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 635
    iget-object v5, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 636
    .local v5, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param2:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 637
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v8, 0x5

    aget-object v0, v7, v8

    .line 639
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 641
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v5, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v6

    .line 644
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    const-string v7, "Callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " crashed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v7, "HtcAmsCallbackManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 648
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 649
    return-void
.end method

.method private handleTopAppChanged(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    .locals 8
    .param p1, "params"    # Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    .prologue
    .line 980
    iget-object v4, p1, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->param1:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/HtcWrapProcessRecord;

    .line 981
    .local v4, "process":Lcom/android/server/am/HtcWrapProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0x11

    aget-object v0, v6, v7

    .line 983
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 985
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 986
    :catch_0
    move-exception v2

    .line 987
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 988
    .local v5, "strBuilder":Ljava/lang/StringBuilder;
    const-string v6, "Callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " crashed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v6, "HtcAmsCallbackManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 992
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    # invokes: Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->recycle(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->access$200(Lcom/android/server/am/HtcAmsCallbackManager$Parameters;)V

    .line 993
    return-void
.end method

.method private handleWakingUp()V
    .locals 7

    .prologue
    .line 612
    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v6, 0x4

    aget-object v0, v5, v6

    .line 614
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 616
    .local v1, "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :try_start_0
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onWakingUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/HtcAmsCallbackManager$StringBuilderPool;->get()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const-string v5, "Callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " crashed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v5, "HtcAmsCallbackManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 623
    .end local v1    # "cb":Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallbacks(Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .prologue
    .line 153
    const/4 v0, 0x1

    .local v0, "funcid":I
    :goto_0
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p1, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->mIsCallbackImplemented:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public declared-synchronized onActivityPaused(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1026
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1023
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1025
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onActivityResumed(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 998
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    new-instance v1, Lcom/android/server/am/HtcWrapActivityRecord;

    invoke-direct {v1, p1}, Lcom/android/server/am/HtcWrapActivityRecord;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1000
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 996
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onAddRecentTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 779
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 781
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    if-eqz p2, :cond_2

    .line 784
    new-instance v1, Lcom/android/server/am/HtcWrapTaskRecord;

    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-direct {v1, v2}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    .line 786
    .restart local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :cond_2
    new-instance v2, Lcom/android/server/am/HtcWrapTaskRecord;

    invoke-direct {v2, p1}, Lcom/android/server/am/HtcWrapTaskRecord;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 787
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 779
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "prevTask":Lcom/android/server/am/HtcWrapTaskRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAfterStartActivity()V
    .locals 5

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1118
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAppDied(Lcom/android/server/am/ProcessRecord;I)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "realPid"    # I

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 900
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 895
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 896
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 897
    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    iput p2, v0, Lcom/android/server/am/HtcWrapProcessRecord;->pid:I

    .line 898
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .line 899
    .local v1, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 893
    .end local v0    # "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAppDiedV2(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1197
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1203
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1199
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    .line 1201
    .local v0, "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    invoke-static {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v1

    .line 1202
    .local v1, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0x1c

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1197
    .end local v0    # "htcApp":Lcom/android/server/am/HtcWrapProcessRecord;
    .end local v1    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationCrash(Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 861
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 872
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 863
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 865
    .local v1, "pkgListClone":Ljava/util/HashMap;
    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    .line 866
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 868
    :cond_2
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 871
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 861
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v1    # "pkgListClone":Ljava/util/HashMap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onAttachApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 729
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 731
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 727
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBeforeStartActivity()V
    .locals 5

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1096
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBroadcastIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v6}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 841
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 812
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 813
    const-string v6, "android.intent.action.NOTIFICATION_ADD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.NOTIFICATION_UPDATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 815
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 825
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 828
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 829
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 830
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 831
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 834
    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "HtcAmsCallbackManager"

    const-string v7, "Unable to copy Intent!"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move-object p1, v4

    .line 839
    .end local v4    # "newIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v5

    .line 840
    .local v5, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v6, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v7, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v8, 0x1

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 810
    .end local v5    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized onCleanUpApplicationRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 948
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 950
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 946
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onCrashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 920
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 922
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 924
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 920
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFinishBooting()V
    .locals 5

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 562
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGenerateApplicationProviders(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 754
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 756
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 752
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onGenerateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 1165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1167
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v6

    .line 1171
    .local v6, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1165
    .end local v6    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onGoingToSleep()V
    .locals 5

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 584
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHibernate()V
    .locals 9

    .prologue
    const/16 v3, 0x14

    const/4 v8, 0x1

    .line 453
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    .line 457
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    .line 458
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 463
    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mHibernateFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v6, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 467
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsHibernateFinished:Z

    if-nez v2, :cond_4

    .line 468
    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Hibernate timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    # getter for: Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->mAmsHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->access$300(Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :cond_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 472
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2, v8}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->setHibernateMode(Z)V

    goto :goto_0

    .line 471
    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 464
    .restart local v0    # "startTime":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onHibernateKillApp(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1046
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1048
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1050
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1046
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 402
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    monitor-enter v4

    .line 406
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    .line 407
    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 408
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v5, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 413
    .local v2, "startTime":J
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mMainFinishSignal:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :goto_1
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v2

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    .line 417
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsMainFinished:Z

    if-nez v1, :cond_4

    .line 418
    const-string v1, "HtcAmsCallbackManager"

    const-string v5, "onMain timeout!"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 421
    :cond_4
    monitor-exit v4

    goto :goto_0

    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 414
    .restart local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    .restart local v2    # "startTime":J
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public declared-synchronized onRealAppNotResponding(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 679
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 681
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 677
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onRemoveProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 702
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 704
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 706
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 702
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onResumeFromHibernate()V
    .locals 5

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1073
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->setHibernateMode(Z)V

    .line 1075
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShutdown()V
    .locals 8

    .prologue
    const/16 v3, 0x17

    .line 509
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    iget-object v3, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    monitor-enter v3

    .line 513
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    .line 514
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->removeMessages(I)V

    .line 515
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v4, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v5, 0x1

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 520
    .local v0, "startTime":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mShutdownFinishSignal:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :goto_1
    :try_start_2
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v6, v0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 524
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mIsShutdownFinished:Z

    if-nez v2, :cond_4

    .line 525
    const-string v2, "HtcAmsCallbackManager"

    const-string v4, "Shutdown timeout!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dump()V

    .line 527
    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingThread:Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingThread;->dumpAllThreads()V

    .line 529
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0    # "startTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 521
    .restart local v0    # "startTime":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized onStartActivityNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "curr"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    .line 1138
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1140
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    invoke-static {p1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 1142
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1138
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 654
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 656
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartProcessNewPackage(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 628
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 630
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 626
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onTopAppChanged(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 971
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 976
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 973
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    invoke-static {p1}, Lcom/android/server/am/HtcWrapProcessRecord;->create(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/HtcWrapProcessRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/HtcAmsCallbackManager$Parameters;->obtain(Ljava/lang/Object;)Lcom/android/server/am/HtcAmsCallbackManager$Parameters;

    move-result-object v0

    .line 975
    .local v0, "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v2, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v3, 0x1

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 971
    .end local v0    # "params":Lcom/android/server/am/HtcAmsCallbackManager$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onWakingUp()V
    .locals 5

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWatchdog:Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;

    invoke-virtual {v0}, Lcom/android/server/am/HtcAmsCallbackManager$Watchdog;->isWorkingThreadBlocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 606
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mCallbacks:[Ljava/util/ArrayList;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    iget-object v1, p0, Lcom/android/server/am/HtcAmsCallbackManager;->mWorkingHandler:Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/HtcAmsCallbackManager$WorkingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
