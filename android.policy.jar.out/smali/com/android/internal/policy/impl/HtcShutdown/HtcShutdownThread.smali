.class public final Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;
.super Ljava/lang/Thread;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final FM_SERVICE_COMMAND:Ljava/lang/String; = "com.htc.fm.servicecommand"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x41

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_RESTART_WAIT_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_ANIMATION_TIME:I = 0x2710

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final METHOD_GET_RADIO_STATE:Ljava/lang/String; = "isRadioOn"

.field private static final METHOD_SET_RADIO_BY_SLOT:Ljava/lang/String; = "setRadioBySlotId"

.field private static final NUM_CALL_STACK_LAYER:I = 0x5

.field private static final OFF_ALARM_TIME:Ljava/lang/String; = "offalarm"

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcShutdownThread"

.field private static htcpd:Landroid/app/ProgressDialog;

.field private static mCheckAlarm:Z

.field private static mHibernate:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mResumeCount:I

.field private static mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

.field private static sIsAnimationCompleted:Z

.field private static sIsAnimationReady:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 156
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    .line 157
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 158
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    .line 191
    sput v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    .line 194
    sput-boolean v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCheckAlarm:Z

    .line 675
    new-instance v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$4;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$4;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 199
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 569
    const-string v3, "HtcShutdownThread"

    const-string v4, "Shutdown sequence begin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SHUTDOWN_ANIMATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 573
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 574
    :try_start_0
    sget-boolean v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_2

    .line 575
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 576
    const-string v3, "HtcShutdownThread"

    const-string v5, "User perform shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    const-string v3, "HtcShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v4

    .line 672
    :cond_1
    :goto_0
    return-void

    .line 580
    :cond_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    .line 581
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v2, "home":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    .end local v2    # "home":Landroid/content/Intent;
    :goto_1
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->isUseAnimation(Landroid/content/Context;)Z

    move-result v0

    .line 596
    .local v0, "bUseAnim":Z
    if-nez v0, :cond_5

    .line 600
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    .line 601
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    const v4, 0x10400e9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    const v4, 0x10400ed

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 603
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 604
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 605
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 607
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 609
    sput-boolean v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    .line 610
    sput-boolean v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    .line 628
    :goto_2
    const-string v3, "persist.sys.prev.powerdown"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v3, "persist.sys.vzwlogger.zygote"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-direct {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;-><init>()V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    .line 634
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object p0, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    .line 635
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 637
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 639
    :try_start_2
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "HtcShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 641
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_3

    .line 642
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 643
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 652
    :cond_3
    :goto_3
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 653
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 655
    :try_start_3
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "HtcShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 657
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 658
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 659
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v3, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 667
    :cond_4
    :goto_4
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    new-instance v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$3;

    invoke-direct {v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$3;-><init>()V

    iput-object v4, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    .line 669
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 670
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->start()V

    goto/16 :goto_0

    .line 581
    .end local v0    # "bUseAnim":Z
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 590
    :catch_0
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcShutdownThread"

    const-string v4, "Can not launch Home Screen (Intent.CATEGORY_HOME)!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 612
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bUseAnim":Z
    :cond_5
    const-string v3, "HtcShutdownThread"

    const-string v4, "start animation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    const v4, 0x1030005

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    .line 615
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownListener:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setShutdownListener(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen$OnShutdownListener;)V

    .line 617
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 618
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 619
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 621
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->setCancelable(Z)V

    .line 622
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;->show()V

    .line 624
    sput-boolean v5, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    goto/16 :goto_2

    .line 645
    :catch_1
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_6

    .line 647
    const-string v3, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3

    .line 661
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 662
    .restart local v1    # "e":Ljava/lang/SecurityException;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_7

    .line 663
    const-string v3, "HtcShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    :cond_7
    sget-object v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object v7, v3, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 7
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1964
    const-string v3, "HtcShutdownThread"

    const-string v4, "deviceRebootOrShutdown(), for A11 QCT 8916 API, requested by SSD"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 1969
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1972
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v3, "rebootOrShutdown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1973
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1985
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1982
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1980
    :catch_1
    move-exception v3

    goto :goto_0

    .line 1977
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1975
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private static formatDiffTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 345
    const-string v0, ""

    return-object v0
.end method

.method private static getVibrateDuration()I
    .locals 7

    .prologue
    .line 1909
    const/4 v3, 0x0

    .line 1911
    .local v3, "nRet":I
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 1912
    .local v0, "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    const-string v4, "Android_Core_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    .line 1913
    .local v2, "frameworkReader":Lcom/htc/customization/HtcCustomizationReader;
    const-string v4, "shutdown_vibrate_ms"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1917
    .end local v0    # "customizationManager":Lcom/htc/customization/HtcCustomizationManager;
    .end local v2    # "frameworkReader":Lcom/htc/customization/HtcCustomizationReader;
    :goto_0
    return v3

    .line 1914
    :catch_0
    move-exception v1

    .line 1915
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcShutdownThread"

    const-string v5, "Read customization fail!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static hibernate(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 236
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    .line 237
    const-string v0, "sys.shutdown.mode"

    const-string v1, "hibernate"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 242
    return-void
.end method

.method public static hibernate(Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "checkAlarm"    # Z

    .prologue
    .line 231
    sput-boolean p2, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCheckAlarm:Z

    .line 232
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->hibernate(Landroid/content/Context;Z)V

    .line 233
    return-void
.end method

.method private static isUseAnimation(Landroid/content/Context;)Z
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1732
    new-instance v14, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;

    invoke-direct {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;-><init>()V

    .line 1733
    .local v14, "mReader":Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;
    new-instance v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    invoke-direct {v13}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;-><init>()V

    .line 1734
    .local v13, "mData":Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;
    const/16 v22, 0x0

    .line 1735
    .local v22, "useAnimation":Z
    const-string v23, "ro.cid"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1744
    .local v21, "str_cid":Ljava/lang/String;
    const-string v18, "/carrier/default.xml"

    .line 1745
    .local v18, "omadm_config_path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v16, "omadmConfig":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1747
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_0

    .line 1748
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "omadm_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1751
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1752
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/system/customize/CID/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->cid:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1753
    .local v17, "omadm_cid_config_path":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v15, "omadmCidConfig":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1755
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_1

    .line 1756
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "omadm_cid_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1759
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_2

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_2
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 1761
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_3

    .line 1762
    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use omadm cid animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_3
    const/16 v23, 0x1

    .line 1905
    .end local v15    # "omadmCidConfig":Ljava/io/File;
    .end local v17    # "omadm_cid_config_path":Ljava/lang/String;
    :goto_0
    return v23

    .line 1767
    :cond_4
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_5

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_5
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 1769
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_6

    .line 1770
    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use omadm animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_6
    const/16 v23, 0x1

    goto :goto_0

    .line 1777
    :cond_7
    const-string v10, "/data/data/cw/animation.xml"

    .line 1778
    .local v10, "cw_config_path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1779
    .local v9, "cwConfig":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1780
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_8

    .line 1781
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cw_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_8
    invoke-virtual {v14, v10}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1783
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1784
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_9

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_9
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    .line 1786
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_a

    .line 1787
    const-string v23, "HtcShutdownThread"

    const-string v24, "htcshutdownthread, use cw animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_a
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1796
    :cond_b
    const-string v2, "boot_anim_mns"

    .line 1797
    .local v2, "BOOT_ANIM_MNS_PATH_FILE":Ljava/lang/String;
    const-string v23, "boot_anim_mns"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1798
    .local v7, "custFileConfig":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1802
    .local v8, "custFilePath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1803
    const/4 v5, 0x0

    .line 1804
    .local v5, "csfBuf":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 1806
    .local v20, "sim_config_path":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1807
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .local v6, "csfBuf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    .line 1812
    if-eqz v6, :cond_25

    .line 1814
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1815
    const/4 v5, 0x0

    .line 1823
    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    :cond_c
    :goto_1
    if-eqz v20, :cond_1b

    .line 1824
    new-instance v19, Ljava/io/File;

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v19, "simConfig":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1826
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_d

    .line 1827
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sim_config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1830
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_e

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_e
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 1832
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_f

    .line 1833
    const-string v23, "HtcShutdownThread"

    const-string v24, "use sim animation"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_f
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 1816
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .end local v19    # "simConfig":Ljava/io/File;
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v12

    .line 1817
    .local v12, "e":Ljava/lang/Exception;
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_10

    .line 1818
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception closing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    move-object v5, v6

    .line 1819
    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 1808
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 1809
    .restart local v12    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_11

    .line 1810
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1812
    :cond_11
    if-eqz v5, :cond_c

    .line 1814
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1815
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1816
    :catch_2
    move-exception v12

    .line 1817
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_c

    .line 1818
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception closing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1812
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    :goto_3
    if-eqz v5, :cond_12

    .line 1814
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1815
    const/4 v5, 0x0

    .line 1819
    :cond_12
    :goto_4
    throw v23

    .line 1816
    :catch_3
    move-exception v12

    .line 1817
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-boolean v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v24, :cond_12

    .line 1818
    const-string v24, "HtcShutdownThread"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception closing "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1837
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v19    # "simConfig":Ljava/io/File;
    :cond_13
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not eixst"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .end local v19    # "simConfig":Ljava/io/File;
    .end local v20    # "sim_config_path":Ljava/lang/String;
    :cond_14
    :goto_5
    if-eqz v21, :cond_22

    .line 1848
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_15

    .line 1849
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CID:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_15
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/system/customize/CID/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1852
    .local v4, "config_path":Ljava/lang/String;
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_16

    .line 1853
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "config_path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1856
    .local v3, "config":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 1857
    invoke-virtual {v14, v4}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1859
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1e

    .line 1860
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_17

    .line 1861
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Parse "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "failed.  Use default.xml."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_17
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1864
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1d

    .line 1865
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    .line 1866
    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    .end local v3    # "config":Ljava/io/File;
    .end local v4    # "config_path":Ljava/lang/String;
    :cond_18
    :goto_6
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_19

    .line 1899
    new-instance v11, Ljava/io/File;

    const-string v23, "/system/customize/resource/shutdown.zip"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1900
    .local v11, "defaultFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 1901
    const/16 v22, 0x1

    .line 1904
    .end local v11    # "defaultFile":Ljava/io/File;
    :cond_19
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_1a

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cust_Shutdown_animation: image property> \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move/from16 v23, v22

    .line 1905
    goto/16 :goto_0

    .line 1840
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v20    # "sim_config_path":Ljava/lang/String;
    :cond_1b
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    const-string v24, "Empty path"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1843
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .end local v20    # "sim_config_path":Ljava/lang/String;
    :cond_1c
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_14

    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " does not exist"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1868
    .restart local v3    # "config":Ljava/io/File;
    .restart local v4    # "config_path":Ljava/lang/String;
    :cond_1d
    const/16 v22, 0x1

    goto :goto_6

    .line 1871
    :cond_1e
    const/16 v22, 0x1

    goto :goto_6

    .line 1874
    :cond_1f
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_20

    .line 1875
    const-string v23, "HtcShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Can\'t load "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".  Use default.xml."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_20
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1878
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_21

    .line 1879
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    .line 1880
    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1882
    :cond_21
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 1886
    .end local v3    # "config":Ljava/io/File;
    .end local v4    # "config_path":Ljava/lang/String;
    :cond_22
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_23

    .line 1887
    const-string v23, "HtcShutdownThread"

    const-string v24, "Can\'t find CID.  Use default.xml."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_23
    const-string v23, "/system/customize/CID/default.xml"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->parseConfigData(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v14}, Lcom/android/internal/policy/impl/HtcShutdown/ConfigReader;->getConfigData()Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;

    move-result-object v13

    .line 1890
    iget-object v0, v13, Lcom/android/internal/policy/impl/HtcShutdown/ConfigData;->image:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_24

    .line 1891
    sget-boolean v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v23, :cond_18

    .line 1892
    const-string v23, "HtcShutdownThread"

    const-string v24, "Parse default.xml failed.  Use default dialog"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1894
    :cond_24
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 1812
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v20    # "sim_config_path":Ljava/lang/String;
    :catchall_1
    move-exception v23

    move-object v5, v6

    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 1808
    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v12

    move-object v5, v6

    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .end local v5    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v6    # "csfBuf":Ljava/io/BufferedReader;
    :cond_25
    move-object v5, v6

    .end local v6    # "csfBuf":Ljava/io/BufferedReader;
    .restart local v5    # "csfBuf":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private static logHibernateFailReason(ZZZ)V
    .locals 4
    .param p0, "bRadio"    # Z
    .param p1, "bBt"    # Z
    .param p2, "bNfc"    # Z

    .prologue
    .line 1942
    const-string v0, "[Hibernate Fail] "

    .line 1943
    .local v0, "HIBERNATE_FAIL":Ljava/lang/String;
    const-string v1, " timed out"

    .line 1945
    .local v1, "TIMED_OUT":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1946
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] RadioOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    if-eqz p1, :cond_1

    .line 1950
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] BTOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_1
    if-eqz p2, :cond_2

    .line 1953
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] NfcOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_2
    return-void
.end method

.method private static logHibernateFailReason(ZZZZ)V
    .locals 4
    .param p0, "bSlotOneRadio"    # Z
    .param p1, "bSlotTwoRadio"    # Z
    .param p2, "bBt"    # Z
    .param p3, "bNfc"    # Z

    .prologue
    .line 1922
    const-string v0, "[Hibernate Fail] "

    .line 1923
    .local v0, "HIBERNATE_FAIL":Ljava/lang/String;
    const-string v1, " timed out"

    .line 1925
    .local v1, "TIMED_OUT":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1926
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] Slot One RadioOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_0
    if-eqz p1, :cond_1

    .line 1930
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] Slot Two RadioOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_1
    if-eqz p2, :cond_2

    .line 1934
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] BTOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :cond_2
    if-eqz p3, :cond_3

    .line 1937
    const-string v2, "HtcShutdownThread"

    const-string v3, "[Hibernate Fail] NfcOff timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_3
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 543
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 544
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 545
    sput-object p1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 546
    invoke-static {p0, p2}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 547
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 561
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 562
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 563
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 564
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 565
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 215
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 216
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 217
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 218
    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "checkAlarm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 222
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    .line 223
    sput-boolean v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    .line 224
    sput-boolean p2, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCheckAlarm:Z

    .line 225
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 226
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 248
    sget-object v10, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v10

    .line 249
    :try_start_0
    sget-boolean v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    if-eqz v9, :cond_0

    .line 250
    const-string v9, "HtcShutdownThread"

    const-string v11, "Request to shutdown already running, returning."

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    monitor-exit v10

    .line 341
    :goto_0
    return-void

    .line 253
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "caller":Ljava/lang/String;
    const-string v9, "HtcShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caller = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_1

    .line 270
    const-string v9, "HtcShutdownThread"

    const-string v10, "Notifying thread to start shutdown"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    if-eqz p1, :cond_9

    .line 273
    const-string v6, ""

    .line 274
    .local v6, "message":Ljava/lang/String;
    sget-boolean v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-eqz v9, :cond_4

    .line 275
    sget-boolean v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_2

    const v5, 0x10400f0

    .line 276
    .local v5, "idTitle":I
    :goto_1
    sget-boolean v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_3

    const v2, 0x10400f1

    .line 277
    .local v2, "idMessage":I
    :goto_2
    const v4, 0x3070200

    .line 278
    .local v4, "idPositive":I
    const v3, 0x1040009

    .line 287
    .local v3, "idNegative":I
    :goto_3
    sget-boolean v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mCheckAlarm:Z

    if-eqz v9, :cond_5

    sget-boolean v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-nez v9, :cond_5

    .line 288
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->formatDiffTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 290
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0

    .line 253
    .end local v0    # "caller":Ljava/lang/String;
    .end local v2    # "idMessage":I
    .end local v3    # "idNegative":I
    .end local v4    # "idPositive":I
    .end local v5    # "idTitle":I
    .end local v6    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 275
    .restart local v0    # "caller":Ljava/lang/String;
    .restart local v6    # "message":Ljava/lang/String;
    :cond_2
    const v5, 0x30701fe

    goto :goto_1

    .line 276
    .restart local v5    # "idTitle":I
    :cond_3
    const v2, 0x30701ff

    goto :goto_2

    .line 280
    .end local v5    # "idTitle":I
    :cond_4
    const v5, 0x10400e9

    .line 281
    .restart local v5    # "idTitle":I
    const v2, 0x10400ee

    .line 282
    .restart local v2    # "idMessage":I
    const v4, 0x1040013

    .line 283
    .restart local v4    # "idPositive":I
    const v3, 0x1040009

    .restart local v3    # "idNegative":I
    goto :goto_3

    .line 294
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, "strPositive":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, "strNegative":Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 302
    const-string v9, "HtcShutdownThread"

    const-string v10, "isInAllCapsLocale() = TRUE"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 304
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 307
    :cond_7
    new-instance v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 308
    .local v1, "closer":Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_8

    .line 309
    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 311
    :cond_8
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const v10, 0x30b0001

    invoke-direct {v9, p0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;

    invoke-direct {v10}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$1;-><init>()V

    invoke-virtual {v9, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 325
    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v9, v1, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 326
    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 328
    sget-object v9, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 339
    .end local v1    # "closer":Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$CloseDialogReceiver;
    .end local v2    # "idMessage":I
    .end local v3    # "idNegative":I
    .end local v4    # "idPositive":I
    .end local v5    # "idTitle":I
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "strNegative":Ljava/lang/String;
    .end local v8    # "strPositive":Ljava/lang/String;
    :cond_9
    invoke-static {p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 696
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 697
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 698
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 699
    monitor-exit v1

    .line 700
    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dismissDialog(Landroid/app/Dialog;)V
    .locals 8
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 716
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 717
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;

    invoke-direct {v5, p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$5;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 729
    .local v2, "endTime":J
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v5

    .line 730
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_0

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 732
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 733
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_0

    .line 734
    const-string v4, "HtcShutdownThread"

    const-string v6, "Dismiss shutdown screen timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v0    # "delay":J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    return-void

    .line 738
    .restart local v0    # "delay":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v4

    goto :goto_0

    .line 742
    .end local v0    # "delay":J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method dismissProgressDialog()V
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->htcpd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 712
    return-void
.end method

.method dismissShutdownScreen()V
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->shutdown:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownScreen;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissDialog(Landroid/app/Dialog;)V

    .line 705
    return-void
.end method

.method public run()V
    .locals 68

    .prologue
    .line 755
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1728
    :goto_0
    return-void

    .line 757
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    .line 760
    const/16 v46, 0x0

    .line 761
    .local v46, "nfcOff":Z
    const/16 v50, 0x0

    .line 764
    .local v50, "radioOff":Z
    const/16 v51, 0x0

    .line 765
    .local v51, "radioSlotOneOff":Z
    const/16 v52, 0x0

    .line 775
    .local v52, "radioSlotTwoOff":Z
    const/16 v53, 0x0

    .line 778
    .local v53, "radioWasOn":Z
    const/16 v60, 0x0

    .line 779
    .local v60, "slotOneRadioWasOn":Z
    const/16 v61, 0x0

    .line 788
    .local v61, "slotTwoRadioWasOn":Z
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationReady:Z

    .line 790
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 792
    :try_start_0
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v6, v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v9, "HtcShutdownThread-shutdown"

    invoke-virtual {v6, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 794
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_1

    .line 795
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 796
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :cond_1
    :goto_1
    new-instance v8, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V

    .line 811
    .local v8, "br":Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v19

    .line 818
    .local v19, "alarm":Landroid/app/IAlarmManager;
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_2

    .line 819
    const-string v4, "persist.sys.safemode"

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_2
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_1a

    .line 825
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/app/IAlarmManager;->startHibernate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1d

    .line 828
    :goto_2
    const-string v4, "HtcShutdownThread"

    const-string v6, "Sending quickboot poweroff broadcast..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v5, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v5, "qb_intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 836
    const-string v4, "sys.shutdown.hibernate.mode"

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .end local v5    # "qb_intent":Landroid/content/Intent;
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 850
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x2710

    add-long v34, v6, v12

    .line 851
    .local v34, "endTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    .line 852
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_3

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v26, v34, v12

    .line 854
    .local v26, "delay":J
    const-wide/16 v12, 0x0

    cmp-long v4, v26, v12

    if-gtz v4, :cond_1b

    .line 855
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3

    .line 856
    const-string v4, "HtcShutdownThread"

    const-string v7, "Shutdown poweroff broadcast timed out"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v26    # "delay":J
    :cond_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    const-string v4, "HtcShutdownThread"

    const-string v6, "Start to turn off modules"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v4, "init.svc.zchgd_onmode"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 876
    const-string v4, "ctl.stop"

    const-string v6, "zchgd_onmode"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x2710

    add-long v30, v6, v12

    .line 879
    .local v30, "endRestartTime":J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v26, v30, v6

    .line 880
    .restart local v26    # "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v26, v6

    if-gtz v4, :cond_1c

    .line 881
    const-string v4, "HtcShutdownThread"

    const-string v6, "zchgd_onmode timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v26    # "delay":J
    .end local v30    # "endRestartTime":J
    :cond_5
    :goto_5
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zchgd_onmode status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "init.svc.zchgd_onmode"

    const-string v9, "stopped"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/telephony/TelephonyManager;

    .line 900
    .local v63, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string v4, "nfc"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v45

    .line 903
    .local v45, "nfc":Landroid/nfc/INfcAdapter;
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v48

    .line 905
    .local v48, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v4, "bluetooth_manager"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v23

    .line 908
    .local v23, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v43

    .line 917
    .local v43, "mount":Landroid/os/storage/IMountService;
    if-eqz v63, :cond_1d

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v39, 0x1

    .line 919
    .local v39, "isMultiSim":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 921
    .local v18, "IsAirplaneMode":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v56

    .line 925
    .local v56, "screenBrightnessMode":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v55

    .line 931
    .local v55, "screenBrightness":I
    :goto_7
    if-nez v56, :cond_1e

    .line 932
    const-string v4, "sys.shutdown.brightness"

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, v55

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :goto_8
    :try_start_4
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check NFC state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-nez v4, :cond_6

    if-eqz v45, :cond_6

    invoke-interface/range {v45 .. v45}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1f

    :cond_6
    const/16 v46, 0x1

    .line 942
    :goto_9
    if-nez v46, :cond_7

    .line 943
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off NFC..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 953
    :cond_7
    :goto_a
    :try_start_5
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Bluetooth state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    if-eqz v23, :cond_8

    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_8
    const/16 v24, 0x1

    .line 955
    .local v24, "bluetoothOff":Z
    :goto_b
    if-nez v24, :cond_9

    .line 956
    const-string v4, "HtcShutdownThread"

    const-string v6, "Disabling Bluetooth..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 965
    :cond_9
    :goto_c
    const-string v4, "HtcShutdownThread"

    const-string v6, "Check Radio state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_2c

    .line 968
    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_27

    .line 970
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 971
    .local v21, "arg":Landroid/os/Bundle;
    const-string v4, "phone"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 972
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "isRadioOn"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v54

    .line 973
    .local v54, "result":Landroid/os/Bundle;
    const/16 v41, 0x0

    .line 974
    .local v41, "isSlotOneRadioOn":Z
    if-eqz v54, :cond_a

    invoke-virtual/range {v54 .. v54}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 975
    const-string v4, "isRadioOn"

    const/4 v6, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 978
    :cond_a
    const/4 v4, 0x1

    move/from16 v0, v41

    if-ne v0, v4, :cond_24

    .line 979
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_b

    .line 980
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot1 Radio is on"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_b
    if-nez v18, :cond_c

    .line 983
    const/16 v60, 0x1

    .line 986
    :cond_c
    :try_start_6
    const-string v4, "turnOn"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 987
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "setRadioBySlotId"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 988
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off Slot1 Radio"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 999
    :goto_d
    new-instance v21, Landroid/os/Bundle;

    .end local v21    # "arg":Landroid/os/Bundle;
    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1000
    .restart local v21    # "arg":Landroid/os/Bundle;
    const-string v4, "phone"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "isRadioOn"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v54

    .line 1002
    const/16 v42, 0x0

    .line 1003
    .local v42, "isSlotTwoRadioOn":Z
    if-eqz v54, :cond_d

    invoke-virtual/range {v54 .. v54}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 1004
    const-string v4, "isRadioOn"

    const/4 v6, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 1007
    :cond_d
    const/4 v4, 0x1

    move/from16 v0, v42

    if-ne v0, v4, :cond_26

    .line 1008
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_e

    .line 1009
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot2 Radio is on"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_e
    if-nez v18, :cond_f

    .line 1012
    const/16 v61, 0x1

    .line 1015
    :cond_f
    :try_start_7
    const-string v4, "turnOn"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1016
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "setRadioBySlotId"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1017
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off Slot2 Radio"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1097
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v41    # "isSlotOneRadioOn":Z
    .end local v42    # "isSlotTwoRadioOn":Z
    .end local v54    # "result":Landroid/os/Bundle;
    :goto_e
    const-string v4, "HtcShutdownThread"

    const-string v6, "Stop FM"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v37, Landroid/content/Intent;

    const-string v4, "com.htc.fm.servicecommand"

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v37, "fmPauseIntent":Landroid/content/Intent;
    const-string v4, "command"

    const-string v6, "stop"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1103
    const-string v4, "HtcShutdownThread"

    const-string v6, "Waiting for NFC, Bluetooth, Radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/16 v38, 0x1

    .local v38, "i":I
    :goto_f
    const/16 v4, 0x41

    move/from16 v0, v38

    if-gt v0, v4, :cond_14

    .line 1107
    if-nez v24, :cond_10

    .line 1109
    :try_start_8
    invoke-interface/range {v23 .. v23}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_a

    move-result v4

    if-nez v4, :cond_31

    const/16 v24, 0x1

    .line 1115
    :goto_10
    if-eqz v24, :cond_10

    .line 1116
    const-string v4, "HtcShutdownThread"

    const-string v6, "Bluetooth turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_10
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_3a

    .line 1122
    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_37

    .line 1124
    if-nez v51, :cond_11

    .line 1125
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1126
    .restart local v21    # "arg":Landroid/os/Bundle;
    const-string v4, "phone"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1127
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "isRadioOn"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v54

    .line 1128
    .restart local v54    # "result":Landroid/os/Bundle;
    const/16 v41, 0x0

    .line 1129
    .restart local v41    # "isSlotOneRadioOn":Z
    if-eqz v54, :cond_34

    invoke-virtual/range {v54 .. v54}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 1130
    const-string v4, "isRadioOn"

    const/4 v6, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_33

    const/16 v51, 0x1

    .line 1135
    :goto_11
    if-eqz v51, :cond_11

    .line 1136
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot One radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v41    # "isSlotOneRadioOn":Z
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_11
    if-nez v52, :cond_12

    .line 1141
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1142
    .restart local v21    # "arg":Landroid/os/Bundle;
    const-string v4, "phone"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1143
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "isRadioOn"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v54

    .line 1144
    .restart local v54    # "result":Landroid/os/Bundle;
    if-eqz v54, :cond_36

    invoke-virtual/range {v54 .. v54}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 1145
    const-string v4, "isRadioOn"

    const/4 v6, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_35

    const/16 v52, 0x1

    .line 1150
    :goto_12
    if-eqz v52, :cond_12

    .line 1151
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot Two radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_12
    :goto_13
    if-nez v46, :cond_13

    .line 1229
    :try_start_9
    invoke-interface/range {v45 .. v45}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_d

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3c

    const/16 v46, 0x1

    .line 1235
    :goto_14
    if-eqz v46, :cond_13

    .line 1236
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_13
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_3f

    .line 1242
    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_3e

    .line 1243
    if-eqz v51, :cond_40

    if-eqz v52, :cond_40

    if-eqz v24, :cond_40

    if-eqz v46, :cond_40

    .line 1244
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_14
    :goto_15
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_43

    .line 1268
    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_42

    .line 1269
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioSlotOneOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", radioSlotTwoOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :goto_16
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_16

    .line 1283
    const/4 v4, 0x1

    move/from16 v0, v39

    if-ne v0, v4, :cond_48

    .line 1284
    if-eqz v51, :cond_15

    if-eqz v52, :cond_15

    if-nez v24, :cond_16

    .line 1285
    :cond_15
    if-nez v51, :cond_44

    const/4 v4, 0x1

    move v9, v4

    :goto_17
    if-nez v52, :cond_45

    const/4 v4, 0x1

    move v7, v4

    :goto_18
    if-nez v24, :cond_46

    const/4 v4, 0x1

    move v6, v4

    :goto_19
    if-nez v46, :cond_47

    const/4 v4, 0x1

    :goto_1a
    invoke-static {v9, v7, v6, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->logHibernateFailReason(ZZZZ)V

    .line 1286
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    .line 1287
    const-string v4, "sys.shutdown.mode"

    const-string v6, "normal"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v4, "sys.shutdown.hibernate.mode"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_16
    :goto_1b
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-nez v4, :cond_55

    .line 1304
    :try_start_a
    const-string v4, "HtcShutdownThread"

    const-string v6, "check NFC state"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    if-eqz v45, :cond_17

    invoke-interface/range {v45 .. v45}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4d

    :cond_17
    const/16 v46, 0x1

    .line 1307
    :goto_1c
    if-nez v46, :cond_18

    .line 1308
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off NFC..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-interface {v0, v4}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_e

    .line 1316
    :cond_18
    :goto_1d
    const/16 v38, 0x0

    :goto_1e
    if-nez v46, :cond_51

    const/16 v4, 0x18

    move/from16 v0, v38

    if-ge v0, v4, :cond_51

    .line 1318
    :try_start_b
    invoke-interface/range {v45 .. v45}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_f

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4f

    const/16 v46, 0x1

    .line 1324
    :goto_1f
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1316
    add-int/lit8 v38, v38, 0x1

    goto :goto_1e

    .line 798
    .end local v8    # "br":Landroid/content/BroadcastReceiver;
    .end local v18    # "IsAirplaneMode":I
    .end local v19    # "alarm":Landroid/app/IAlarmManager;
    .end local v23    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v24    # "bluetoothOff":Z
    .end local v34    # "endTime":J
    .end local v37    # "fmPauseIntent":Landroid/content/Intent;
    .end local v38    # "i":I
    .end local v39    # "isMultiSim":Z
    .end local v43    # "mount":Landroid/os/storage/IMountService;
    .end local v45    # "nfc":Landroid/nfc/INfcAdapter;
    .end local v48    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v55    # "screenBrightness":I
    .end local v56    # "screenBrightnessMode":I
    .end local v63    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v25

    .line 799
    .local v25, "e":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_19

    .line 800
    const-string v4, "HtcShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    :cond_19
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mShutdownWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .line 838
    .end local v25    # "e":Ljava/lang/SecurityException;
    .restart local v8    # "br":Landroid/content/BroadcastReceiver;
    .restart local v19    # "alarm":Landroid/app/IAlarmManager;
    :cond_1a
    const-string v4, "HtcShutdownThread"

    const-string v6, "Sending shutdown broadcast..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v10, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 843
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v8

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 860
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v26    # "delay":J
    .restart local v34    # "endTime":J
    :cond_1b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 861
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .line 864
    .end local v26    # "delay":J
    :catchall_0
    move-exception v4

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v4

    .line 886
    .restart local v26    # "delay":J
    .restart local v30    # "endRestartTime":J
    :cond_1c
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_23

    .line 889
    :goto_20
    const-string v4, "init.svc.zchgd_onmode"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_5

    .line 917
    .end local v26    # "delay":J
    .end local v30    # "endRestartTime":J
    .restart local v23    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .restart local v43    # "mount":Landroid/os/storage/IMountService;
    .restart local v45    # "nfc":Landroid/nfc/INfcAdapter;
    .restart local v48    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v63    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1d
    const/16 v39, 0x0

    goto/16 :goto_6

    .line 927
    .restart local v18    # "IsAirplaneMode":I
    .restart local v39    # "isMultiSim":Z
    .restart local v56    # "screenBrightnessMode":I
    :catch_2
    move-exception v25

    .line 928
    .local v25, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v55, 0x0

    .restart local v55    # "screenBrightness":I
    goto/16 :goto_7

    .line 935
    .end local v25    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1e
    const-string v4, "sys.shutdown.brightness"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 940
    :cond_1f
    const/16 v46, 0x0

    goto/16 :goto_9

    .line 946
    :catch_3
    move-exception v36

    .line 947
    .local v36, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_20

    .line 948
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    :cond_20
    const/16 v46, 0x1

    goto/16 :goto_a

    .line 954
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_21
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 959
    :catch_4
    move-exception v36

    .line 960
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_22

    .line 961
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    :cond_22
    const/16 v24, 0x1

    .restart local v24    # "bluetoothOff":Z
    goto/16 :goto_c

    .line 989
    .end local v36    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "arg":Landroid/os/Bundle;
    .restart local v41    # "isSlotOneRadioOn":Z
    .restart local v54    # "result":Landroid/os/Bundle;
    :catch_5
    move-exception v36

    .line 990
    .local v36, "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_23

    .line 991
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during turning off Slot1 radio"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    :cond_23
    const/16 v51, 0x1

    .line 993
    goto/16 :goto_d

    .line 995
    .end local v36    # "ex":Ljava/lang/Exception;
    :cond_24
    const/16 v51, 0x1

    goto/16 :goto_d

    .line 1018
    .restart local v42    # "isSlotTwoRadioOn":Z
    :catch_6
    move-exception v36

    .line 1019
    .restart local v36    # "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_25

    .line 1020
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during turning off Slot2 radio"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    :cond_25
    const/16 v52, 0x1

    .line 1022
    goto/16 :goto_e

    .line 1024
    .end local v36    # "ex":Ljava/lang/Exception;
    :cond_26
    const/16 v52, 0x1

    goto/16 :goto_e

    .line 1027
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v41    # "isSlotOneRadioOn":Z
    .end local v42    # "isSlotTwoRadioOn":Z
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_27
    const/16 v40, 0x0

    .line 1029
    .local v40, "isRadioOn":Z
    :try_start_f
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_8

    move-result v40

    .line 1034
    :cond_28
    :goto_21
    if-eqz v48, :cond_2b

    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_2b

    .line 1035
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_29

    .line 1036
    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio is on"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_29
    const/4 v4, 0x0

    :try_start_10
    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z

    .line 1040
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off radio"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_e

    .line 1041
    :catch_7
    move-exception v36

    .line 1042
    .local v36, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2a

    .line 1043
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during turning off radio"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1044
    :cond_2a
    const/16 v50, 0x1

    .line 1045
    goto/16 :goto_e

    .line 1030
    .end local v36    # "ex":Landroid/os/RemoteException;
    :catch_8
    move-exception v36

    .line 1031
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_28

    .line 1032
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during get radio status before turning off radio"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1047
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_2b
    const/16 v50, 0x1

    goto/16 :goto_e

    .line 1053
    .end local v40    # "isRadioOn":Z
    :cond_2c
    if-eqz v48, :cond_2d

    :try_start_11
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_30

    :cond_2d
    const/16 v50, 0x1

    .line 1055
    :goto_22
    if-nez v50, :cond_2f

    .line 1057
    if-nez v18, :cond_2e

    .line 1058
    const/16 v53, 0x1

    .line 1061
    :cond_2e
    const-string v4, "HtcShutdownThread"

    const-string v6, "Turning off cellular radios..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1068
    :cond_2f
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1053
    :cond_30
    const/16 v50, 0x0

    goto :goto_22

    .line 1064
    :catch_9
    move-exception v36

    .line 1065
    .restart local v36    # "ex":Landroid/os/RemoteException;
    :try_start_12
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1066
    const/16 v50, 0x1

    .line 1068
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .end local v36    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    const-string v6, "HtcShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioOff = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    .line 1109
    .restart local v37    # "fmPauseIntent":Landroid/content/Intent;
    .restart local v38    # "i":I
    :cond_31
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 1110
    :catch_a
    move-exception v36

    .line 1111
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_32

    .line 1112
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    :cond_32
    const/16 v24, 0x1

    goto/16 :goto_10

    .line 1130
    .end local v36    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "arg":Landroid/os/Bundle;
    .restart local v41    # "isSlotOneRadioOn":Z
    .restart local v54    # "result":Landroid/os/Bundle;
    :cond_33
    const/16 v51, 0x0

    goto/16 :goto_11

    .line 1132
    :cond_34
    const/16 v51, 0x1

    goto/16 :goto_11

    .line 1145
    .end local v41    # "isSlotOneRadioOn":Z
    :cond_35
    const/16 v52, 0x0

    goto/16 :goto_12

    .line 1147
    :cond_36
    const/16 v52, 0x1

    goto/16 :goto_12

    .line 1155
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_37
    if-nez v50, :cond_12

    .line 1157
    :try_start_13
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_b

    move-result v4

    if-nez v4, :cond_38

    const/16 v50, 0x1

    .line 1163
    :goto_23
    if-eqz v50, :cond_12

    .line 1164
    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1157
    :cond_38
    const/16 v50, 0x0

    goto :goto_23

    .line 1158
    :catch_b
    move-exception v36

    .line 1159
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_39

    .line 1160
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    :cond_39
    const/16 v50, 0x1

    goto :goto_23

    .line 1169
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_3a
    if-nez v50, :cond_12

    .line 1171
    :try_start_14
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_c

    move-result v4

    if-nez v4, :cond_3b

    const/16 v50, 0x1

    .line 1176
    :goto_24
    if-eqz v50, :cond_12

    .line 1177
    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio turned off."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1171
    :cond_3b
    const/16 v50, 0x0

    goto :goto_24

    .line 1172
    :catch_c
    move-exception v36

    .line 1173
    .restart local v36    # "ex":Landroid/os/RemoteException;
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    const/16 v50, 0x1

    goto :goto_24

    .line 1229
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_3c
    const/16 v46, 0x0

    goto/16 :goto_14

    .line 1230
    :catch_d
    move-exception v36

    .line 1231
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_3d

    .line 1232
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1233
    :cond_3d
    const/16 v46, 0x1

    goto/16 :goto_14

    .line 1248
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_3e
    if-eqz v50, :cond_40

    if-eqz v24, :cond_40

    if-eqz v46, :cond_40

    .line 1249
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1254
    :cond_3f
    if-eqz v50, :cond_40

    if-eqz v24, :cond_40

    if-eqz v46, :cond_40

    .line 1256
    const-string v4, "HtcShutdownThread"

    const-string v6, "NFC, Radio, Bluetooth shutdown complete."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1262
    :cond_40
    const/16 v4, 0x41

    move/from16 v0, v38

    if-ge v0, v4, :cond_41

    .line 1263
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1106
    :cond_41
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_f

    .line 1272
    :cond_42
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1276
    :cond_43
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bluetoothOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nfcOff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsAirplaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1285
    :cond_44
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_17

    :cond_45
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_18

    :cond_46
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_19

    :cond_47
    const/4 v4, 0x0

    goto/16 :goto_1a

    .line 1291
    :cond_48
    if-eqz v50, :cond_49

    if-nez v24, :cond_16

    .line 1292
    :cond_49
    if-nez v50, :cond_4a

    const/4 v4, 0x1

    move v7, v4

    :goto_25
    if-nez v24, :cond_4b

    const/4 v4, 0x1

    move v6, v4

    :goto_26
    if-nez v46, :cond_4c

    const/4 v4, 0x1

    :goto_27
    invoke-static {v7, v6, v4}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->logHibernateFailReason(ZZZ)V

    .line 1293
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    .line 1294
    const-string v4, "sys.shutdown.mode"

    const-string v6, "normal"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v4, "sys.shutdown.hibernate.mode"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1292
    :cond_4a
    const/4 v4, 0x0

    move v7, v4

    goto :goto_25

    :cond_4b
    const/4 v4, 0x0

    move v6, v4

    goto :goto_26

    :cond_4c
    const/4 v4, 0x0

    goto :goto_27

    .line 1305
    :cond_4d
    const/16 v46, 0x0

    goto/16 :goto_1c

    .line 1311
    :catch_e
    move-exception v36

    .line 1312
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_4e

    .line 1313
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    :cond_4e
    const/16 v46, 0x1

    goto/16 :goto_1d

    .line 1318
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_4f
    const/16 v46, 0x0

    goto/16 :goto_1f

    .line 1319
    :catch_f
    move-exception v36

    .line 1320
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_50

    .line 1321
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during NFC shutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1322
    :cond_50
    const/16 v46, 0x1

    goto/16 :goto_1f

    .line 1326
    .end local v36    # "ex":Landroid/os/RemoteException;
    :cond_51
    if-nez v46, :cond_52

    .line 1327
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot disable NFC, nfcOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_52
    new-instance v47, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$7;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$7;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V

    .line 1339
    .local v47, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutting down MountService"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    .line 1343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x4e20

    add-long v32, v6, v12

    .line 1344
    .local v32, "endShutdownTime":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1346
    if-eqz v43, :cond_71

    .line 1347
    :try_start_15
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1356
    :cond_53
    :goto_28
    :try_start_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDone:Z

    if-nez v4, :cond_54

    .line 1357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v26, v32, v12

    .line 1358
    .restart local v26    # "delay":J
    const-wide/16 v12, 0x0

    cmp-long v4, v26, v12

    if-gtz v4, :cond_72

    .line 1359
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_54

    .line 1360
    const-string v4, "HtcShutdownThread"

    const-string v7, "Shutdown wait timed out"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    .end local v26    # "delay":J
    :cond_54
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1372
    .end local v32    # "endShutdownTime":J
    .end local v47    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_55
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v20

    .line 1375
    .local v20, "am":Landroid/app/IActivityManager;
    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutting down activity manager..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    if-eqz v20, :cond_56

    .line 1380
    :try_start_17
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_73

    .line 1381
    invoke-interface/range {v20 .. v20}, Landroid/app/IActivityManager;->hibernate()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_12

    .line 1390
    :cond_56
    :goto_29
    const-string v4, "HtcShutdownThread"

    const-string v6, "Waiting for shutdown animation complete..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x2710

    add-long v28, v6, v12

    .line 1392
    .local v28, "endAnimTime":J
    :goto_2a
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsAnimationCompleted:Z

    const/4 v6, 0x1

    if-eq v4, v6, :cond_57

    .line 1393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v26, v28, v6

    .line 1394
    .restart local v26    # "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v26, v6

    if-gtz v4, :cond_74

    .line 1395
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_57

    .line 1396
    const-string v4, "HtcShutdownThread"

    const-string v6, "Shutdown animation timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    .end local v26    # "delay":J
    :cond_57
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-nez v4, :cond_58

    .line 1409
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 1414
    :cond_58
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mReboot:Z

    if-eqz v4, :cond_5a

    .line 1416
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_59

    const-string v4, "HtcShutdownThread"

    const-string v6, "reboot, setShutdownState true"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_59
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    .line 1420
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebooting, reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :try_start_18
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager;->lowLevelReboot_system(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_14

    .line 1429
    :cond_5a
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_5b

    .line 1430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1433
    :cond_5b
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v49

    .line 1434
    .local v49, "pm":Landroid/os/IPowerManager;
    new-instance v57, Ljava/lang/Object;

    invoke-direct/range {v57 .. v57}, Ljava/lang/Object;-><init>()V

    .line 1435
    .local v57, "screenObject":Ljava/lang/Object;
    new-instance v59, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;

    const-string v4, "/data/system/screen_state"

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    move-object/from16 v2, v49

    move-object/from16 v3, v57

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Ljava/lang/String;Landroid/os/IPowerManager;Ljava/lang/Object;)V

    .line 1453
    .local v59, "screenStateObserver":Landroid/os/FileObserver;
    const/16 v58, 0x0

    .line 1455
    .local v58, "screenOn":Z
    :try_start_19
    invoke-interface/range {v49 .. v49}, Landroid/os/IPowerManager;->isActualScreenOn()Z

    move-result v58

    .line 1456
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pm.isActualScreenOn() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string v4, "HtcShutdownThread"

    const-string v6, "Cleaning up power manager state..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_75

    .line 1463
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v49

    invoke-interface {v0, v6, v7, v4, v9}, Landroid/os/IPowerManager;->goToSleepForShutdown(JII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_15

    .line 1473
    :goto_2c
    if-eqz v58, :cond_5d

    .line 1474
    monitor-enter v57

    .line 1475
    :try_start_1a
    invoke-virtual/range {v59 .. v59}, Landroid/os/FileObserver;->startWatching()V

    .line 1476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x7d0

    add-long v66, v6, v12

    .line 1477
    .local v66, "waitEndTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v26, v66, v6

    .line 1478
    .restart local v26    # "delay":J
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait screen off, delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1479
    const-wide/16 v6, 0x0

    cmp-long v4, v26, v6

    if-lez v4, :cond_5c

    .line 1481
    :try_start_1b
    move-object/from16 v0, v57

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_1e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1485
    :cond_5c
    :goto_2d
    :try_start_1c
    monitor-exit v57
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1487
    invoke-virtual/range {v59 .. v59}, Landroid/os/FileObserver;->stopWatching()V

    .line 1491
    .end local v26    # "delay":J
    .end local v66    # "waitEndTime":J
    :cond_5d
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_5e

    .line 1494
    :try_start_1d
    const-string v4, "HtcShutdownThread"

    const-string v6, "pm.getNativeSetAutoSuspendDone() - start"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-interface/range {v49 .. v49}, Landroid/os/IPowerManager;->getNativeSetAutoSuspendDone()Z

    move-result v22

    .line 1496
    .local v22, "auto_suspend_down":Z
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auto_suspend_down = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_16

    .line 1504
    .end local v22    # "auto_suspend_down":Z
    :cond_5e
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissProgressDialog()V

    .line 1506
    const-string v4, "sys.shutdown.resume.count"

    new-instance v6, Ljava/lang/Integer;

    sget v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mResumeCount:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-nez v4, :cond_60

    .line 1512
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_5f

    const-string v4, "HtcShutdownThread"

    const-string v6, "power off, setShutdownState true"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_5f
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/htc/profileflag/ProfileConfig;->setShutdownState(Z)V

    .line 1518
    :cond_60
    invoke-static {}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->getVibrateDuration()I

    move-result v44

    .line 1519
    .local v44, "nVibrate":I
    if-lez v44, :cond_61

    .line 1521
    new-instance v65, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1523
    .local v65, "vibrator":Landroid/os/Vibrator;
    :try_start_1e
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shutdown vibrate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    move/from16 v0, v44

    int-to-long v6, v0

    move-object/from16 v0, v65

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_17

    .line 1531
    :goto_2f
    move/from16 v0, v44

    int-to-long v6, v0

    :try_start_1f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 1538
    .end local v65    # "vibrator":Landroid/os/Vibrator;
    :cond_61
    :goto_30
    const-string v62, "Performing low-level shutdown..."

    .line 1539
    .local v62, "strShutdownLog":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_76

    .line 1540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(Hibernate)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 1546
    :goto_31
    const-string v4, "HtcShutdownThread"

    move-object/from16 v0, v62

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->dismissShutdownScreen()V

    .line 1550
    sget-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iget-object v4, v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->lowLevelShutdown_system()V

    .line 1576
    const-string v4, "HtcShutdownThread"

    const-string v6, "Wait shutdown mode end..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    sget-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    if-eqz v4, :cond_70

    .line 1579
    const/16 v64, 0x0

    .line 1580
    .local v64, "timeoutTimes":I
    :cond_62
    :goto_32
    const-string v4, "sys.shutdown.mode"

    const-string v6, "hibernate"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "end"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 1582
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1583
    add-int/lit8 v64, v64, 0x1

    .line 1584
    const/16 v4, 0x1770

    move/from16 v0, v64

    if-lt v0, v4, :cond_62

    .line 1585
    const-string v4, "HtcShutdownThread"

    const-string v6, "Wait shutdown mode end timeout!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_22

    .line 1593
    :cond_63
    const-string v4, "HtcShutdownThread"

    const-string v6, "Back from hibernation state..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v4, "sys.shutdown.hibernate.mode"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :try_start_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v49

    invoke-interface {v0, v6, v7}, Landroid/os/IPowerManager;->wakeUp(J)V

    .line 1599
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v49

    invoke-interface {v0, v6, v7}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_18

    .line 1607
    :cond_64
    :goto_33
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_65

    .line 1608
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "radioWasOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotOneWasOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", slotTwoWasOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_65
    if-nez v53, :cond_66

    if-nez v60, :cond_66

    if-eqz v61, :cond_6c

    .line 1614
    :cond_66
    if-eqz v63, :cond_77

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1617
    if-eqz v60, :cond_69

    .line 1618
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1619
    .restart local v21    # "arg":Landroid/os/Bundle;
    const-string v4, "phone"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1620
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "isRadioOn"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v54

    .line 1621
    .restart local v54    # "result":Landroid/os/Bundle;
    const/16 v41, 0x0

    .line 1622
    .restart local v41    # "isSlotOneRadioOn":Z
    if-eqz v54, :cond_67

    invoke-virtual/range {v54 .. v54}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_67

    .line 1623
    const-string v4, "isRadioOn"

    const/4 v6, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 1626
    :cond_67
    if-nez v41, :cond_69

    .line 1627
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_68

    .line 1628
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot1 Radio is not started"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_68
    :try_start_22
    const-string v4, "turnOn"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1632
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "setRadioBySlotId"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1633
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot1 Radio restarted"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_19

    .line 1641
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v41    # "isSlotOneRadioOn":Z
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_69
    :goto_34
    if-eqz v61, :cond_6c

    .line 1643
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1644
    .restart local v21    # "arg":Landroid/os/Bundle;
    const-string v4, "phone"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1645
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "isRadioOn"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v54

    .line 1646
    .restart local v54    # "result":Landroid/os/Bundle;
    const/16 v42, 0x0

    .line 1647
    .restart local v42    # "isSlotTwoRadioOn":Z
    if-eqz v54, :cond_6a

    invoke-virtual/range {v54 .. v54}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_6a

    .line 1648
    const-string v4, "isRadioOn"

    const/4 v6, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 1651
    :cond_6a
    if-nez v42, :cond_6c

    .line 1652
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_6b

    .line 1653
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot2 Radio is not started"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_6b
    :try_start_23
    const-string v4, "turnOn"

    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1657
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v4

    const-string v6, "setRadioBySlotId"

    move-object/from16 v0, v21

    invoke-virtual {v4, v6, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1658
    const-string v4, "HtcShutdownThread"

    const-string v6, "Slot2 Radio restarted"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1a

    .line 1689
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v42    # "isSlotTwoRadioOn":Z
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_6c
    :goto_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x2710

    add-long v30, v6, v12

    .line 1691
    .restart local v30    # "endRestartTime":J
    :cond_6d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v26, v30, v6

    .line 1692
    .restart local v26    # "delay":J
    const-wide/16 v6, 0x0

    cmp-long v4, v26, v6

    if-gtz v4, :cond_7a

    .line 1693
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_6e

    .line 1694
    const-string v4, "HtcShutdownThread"

    const-string v6, "Boot animation timed out"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_6e
    :goto_36
    const-string v4, "sys.shutdown.mode"

    const-string v6, "normal"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const-string v4, "sys.shutdown.resume.date"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v4, "sys.shutdown.resume.timestamp"

    new-instance v6, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    if-eqz v20, :cond_6f

    .line 1712
    invoke-interface/range {v20 .. v20}, Landroid/app/IActivityManager;->resumeFromHibernate()V

    .line 1716
    :cond_6f
    :try_start_24
    invoke-interface/range {v19 .. v19}, Landroid/app/IAlarmManager;->stopHibernate()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_20

    .line 1722
    .end local v26    # "delay":J
    .end local v30    # "endRestartTime":J
    .end local v64    # "timeoutTimes":I
    :cond_70
    :goto_37
    sget-object v6, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 1723
    const/4 v4, 0x0

    :try_start_25
    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sIsStarted:Z

    .line 1724
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mStarted:Z

    .line 1725
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->sInstance:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    .line 1726
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mHibernate:Z

    .line 1727
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    throw v4

    .line 1349
    .end local v20    # "am":Landroid/app/IActivityManager;
    .end local v28    # "endAnimTime":J
    .end local v44    # "nVibrate":I
    .end local v49    # "pm":Landroid/os/IPowerManager;
    .end local v57    # "screenObject":Ljava/lang/Object;
    .end local v58    # "screenOn":Z
    .end local v59    # "screenStateObserver":Landroid/os/FileObserver;
    .end local v62    # "strShutdownLog":Ljava/lang/String;
    .restart local v32    # "endShutdownTime":J
    .restart local v47    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_71
    :try_start_26
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_53

    .line 1350
    const-string v4, "HtcShutdownThread"

    const-string v7, "MountService unavailable for shutdown"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_10
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    goto/16 :goto_28

    .line 1352
    :catch_10
    move-exception v25

    .line 1353
    .local v25, "e":Ljava/lang/Exception;
    :try_start_27
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_53

    .line 1354
    const-string v4, "HtcShutdownThread"

    const-string v7, "Exception during MountService shutdown"

    move-object/from16 v0, v25

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1368
    .end local v25    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    monitor-exit v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    throw v4

    .line 1364
    .restart local v26    # "delay":J
    :cond_72
    :try_start_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto/16 :goto_28

    .line 1365
    :catch_11
    move-exception v4

    goto/16 :goto_28

    .line 1384
    .end local v26    # "delay":J
    .end local v32    # "endShutdownTime":J
    .end local v47    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v20    # "am":Landroid/app/IActivityManager;
    :cond_73
    const/16 v4, 0x2710

    :try_start_29
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_12

    goto/16 :goto_29

    .line 1386
    :catch_12
    move-exception v4

    goto/16 :goto_29

    .line 1400
    .restart local v26    # "delay":J
    .restart local v28    # "endAnimTime":J
    :cond_74
    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_13

    goto/16 :goto_2a

    .line 1402
    :catch_13
    move-exception v4

    goto/16 :goto_2a

    .line 1423
    .end local v26    # "delay":J
    :catch_14
    move-exception v25

    .line 1424
    .restart local v25    # "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_5a

    .line 1425
    const-string v4, "HtcShutdownThread"

    const-string v6, "Reboot failed, will attempt shutdown instead"

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1465
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v49    # "pm":Landroid/os/IPowerManager;
    .restart local v57    # "screenObject":Ljava/lang/Object;
    .restart local v58    # "screenOn":Z
    .restart local v59    # "screenStateObserver":Landroid/os/FileObserver;
    :cond_75
    :try_start_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v49

    invoke-interface {v0, v6, v7, v4, v9}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_15

    goto/16 :goto_2c

    .line 1469
    :catch_15
    move-exception v36

    .line 1470
    .restart local v36    # "ex":Landroid/os/RemoteException;
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during goToSleepForShutdown"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 1485
    .end local v36    # "ex":Landroid/os/RemoteException;
    :catchall_4
    move-exception v4

    :try_start_2c
    monitor-exit v57
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    throw v4

    .line 1497
    :catch_16
    move-exception v36

    .line 1498
    .restart local v36    # "ex":Landroid/os/RemoteException;
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during getNativeSetAutoSuspendDone"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 1525
    .end local v36    # "ex":Landroid/os/RemoteException;
    .restart local v44    # "nVibrate":I
    .restart local v65    # "vibrator":Landroid/os/Vibrator;
    :catch_17
    move-exception v25

    .line 1527
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string v4, "HtcShutdownThread"

    const-string v6, "Failed to vibrate during shutdown."

    move-object/from16 v0, v25

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1542
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v65    # "vibrator":Landroid/os/Vibrator;
    .restart local v62    # "strShutdownLog":Ljava/lang/String;
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "(PowerOff)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    goto/16 :goto_31

    .line 1601
    .restart local v64    # "timeoutTimes":I
    :catch_18
    move-exception v36

    .line 1602
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_64

    .line 1603
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during userActivityWithForce"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1634
    .end local v36    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "arg":Landroid/os/Bundle;
    .restart local v41    # "isSlotOneRadioOn":Z
    .restart local v54    # "result":Landroid/os/Bundle;
    :catch_19
    move-exception v36

    .line 1635
    .local v36, "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_69

    .line 1636
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during Slot1 radio restart"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1659
    .end local v36    # "ex":Ljava/lang/Exception;
    .end local v41    # "isSlotOneRadioOn":Z
    .restart local v42    # "isSlotTwoRadioOn":Z
    :catch_1a
    move-exception v36

    .line 1660
    .restart local v36    # "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_6c

    .line 1661
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during Slot2 radio restart"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 1667
    .end local v21    # "arg":Landroid/os/Bundle;
    .end local v36    # "ex":Ljava/lang/Exception;
    .end local v42    # "isSlotTwoRadioOn":Z
    .end local v54    # "result":Landroid/os/Bundle;
    :cond_77
    const/16 v40, 0x0

    .line 1669
    .restart local v40    # "isRadioOn":Z
    :try_start_2d
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_1c

    move-result v40

    .line 1674
    :cond_78
    :goto_38
    if-eqz v48, :cond_6c

    if-nez v40, :cond_6c

    .line 1675
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_79

    .line 1676
    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio is not started"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_79
    const/4 v4, 0x1

    :try_start_2e
    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z

    .line 1680
    const-string v4, "HtcShutdownThread"

    const-string v6, "Radio restarted"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_1b

    goto/16 :goto_35

    .line 1681
    :catch_1b
    move-exception v36

    .line 1682
    .local v36, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_6c

    .line 1683
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during radio restart"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 1670
    .end local v36    # "ex":Landroid/os/RemoteException;
    :catch_1c
    move-exception v36

    .line 1671
    .restart local v36    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_78

    .line 1672
    const-string v4, "HtcShutdownThread"

    const-string v6, "RemoteException during get radio status before start radio"

    move-object/from16 v0, v36

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1697
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v40    # "isRadioOn":Z
    .restart local v26    # "delay":J
    .restart local v30    # "endRestartTime":J
    :cond_7a
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_7b

    .line 1698
    const-string v4, "HtcShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bootanim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "init.svc.bootanim"

    const-string v9, "stopped"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_7b
    :try_start_2f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_2f} :catch_21

    .line 1703
    :goto_39
    const-string v4, "init.svc.bootanim"

    const-string v6, "stopped"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "stopped"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    goto/16 :goto_36

    .line 826
    .end local v18    # "IsAirplaneMode":I
    .end local v20    # "am":Landroid/app/IActivityManager;
    .end local v23    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v24    # "bluetoothOff":Z
    .end local v26    # "delay":J
    .end local v28    # "endAnimTime":J
    .end local v30    # "endRestartTime":J
    .end local v34    # "endTime":J
    .end local v37    # "fmPauseIntent":Landroid/content/Intent;
    .end local v38    # "i":I
    .end local v39    # "isMultiSim":Z
    .end local v43    # "mount":Landroid/os/storage/IMountService;
    .end local v44    # "nVibrate":I
    .end local v45    # "nfc":Landroid/nfc/INfcAdapter;
    .end local v48    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v49    # "pm":Landroid/os/IPowerManager;
    .end local v55    # "screenBrightness":I
    .end local v56    # "screenBrightnessMode":I
    .end local v57    # "screenObject":Ljava/lang/Object;
    .end local v58    # "screenOn":Z
    .end local v59    # "screenStateObserver":Landroid/os/FileObserver;
    .end local v62    # "strShutdownLog":Ljava/lang/String;
    .end local v63    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v64    # "timeoutTimes":I
    :catch_1d
    move-exception v4

    goto/16 :goto_2

    .line 1482
    .restart local v18    # "IsAirplaneMode":I
    .restart local v20    # "am":Landroid/app/IActivityManager;
    .restart local v23    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .restart local v24    # "bluetoothOff":Z
    .restart local v26    # "delay":J
    .restart local v28    # "endAnimTime":J
    .restart local v34    # "endTime":J
    .restart local v37    # "fmPauseIntent":Landroid/content/Intent;
    .restart local v38    # "i":I
    .restart local v39    # "isMultiSim":Z
    .restart local v43    # "mount":Landroid/os/storage/IMountService;
    .restart local v45    # "nfc":Landroid/nfc/INfcAdapter;
    .restart local v48    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v49    # "pm":Landroid/os/IPowerManager;
    .restart local v55    # "screenBrightness":I
    .restart local v56    # "screenBrightnessMode":I
    .restart local v57    # "screenObject":Ljava/lang/Object;
    .restart local v58    # "screenOn":Z
    .restart local v59    # "screenStateObserver":Landroid/os/FileObserver;
    .restart local v63    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v66    # "waitEndTime":J
    :catch_1e
    move-exception v4

    goto/16 :goto_2d

    .line 1532
    .end local v26    # "delay":J
    .end local v66    # "waitEndTime":J
    .restart local v44    # "nVibrate":I
    .restart local v65    # "vibrator":Landroid/os/Vibrator;
    :catch_1f
    move-exception v4

    goto/16 :goto_30

    .line 1717
    .end local v65    # "vibrator":Landroid/os/Vibrator;
    .restart local v26    # "delay":J
    .restart local v30    # "endRestartTime":J
    .restart local v62    # "strShutdownLog":Ljava/lang/String;
    .restart local v64    # "timeoutTimes":I
    :catch_20
    move-exception v4

    goto/16 :goto_37

    .line 1701
    :catch_21
    move-exception v4

    goto :goto_39

    .line 1588
    .end local v26    # "delay":J
    .end local v30    # "endRestartTime":J
    :catch_22
    move-exception v4

    goto/16 :goto_32

    .line 887
    .end local v18    # "IsAirplaneMode":I
    .end local v20    # "am":Landroid/app/IActivityManager;
    .end local v23    # "bluetooth":Landroid/bluetooth/IBluetoothManager;
    .end local v24    # "bluetoothOff":Z
    .end local v28    # "endAnimTime":J
    .end local v37    # "fmPauseIntent":Landroid/content/Intent;
    .end local v38    # "i":I
    .end local v39    # "isMultiSim":Z
    .end local v43    # "mount":Landroid/os/storage/IMountService;
    .end local v44    # "nVibrate":I
    .end local v45    # "nfc":Landroid/nfc/INfcAdapter;
    .end local v48    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v49    # "pm":Landroid/os/IPowerManager;
    .end local v55    # "screenBrightness":I
    .end local v56    # "screenBrightnessMode":I
    .end local v57    # "screenObject":Ljava/lang/Object;
    .end local v58    # "screenOn":Z
    .end local v59    # "screenStateObserver":Landroid/os/FileObserver;
    .end local v62    # "strShutdownLog":Ljava/lang/String;
    .end local v63    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v64    # "timeoutTimes":I
    .restart local v26    # "delay":J
    .restart local v30    # "endRestartTime":J
    :catch_23
    move-exception v4

    goto/16 :goto_20
.end method
