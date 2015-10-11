.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$HintDialog;,
        Lcom/android/server/AppOpsService$HintDialogData;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Ops;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEBUG_HINT:Z

.field private static final HINT_TIMEOUT:J = 0x2710L

.field private static final HINT_TIMEOUT_COUNT:I = 0xa

.field static final MODE_HINT:I = 0x64

.field private static final MSG_DIALOG_COUNT_DOWN:I = 0x2

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L

.field static sEnableHint:Z


# instance fields
.field private mAppWhiteList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDialogMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/AppOpsService$HintDialog;",
            ">;>;"
        }
    .end annotation
.end field

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field private mHintDialogHandler:Landroid/os/Handler;

.field mLoadPrivLaterPkgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemAppBlackList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemAppUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUidOps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWaitingHintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$HintDialogData;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1449
    sget-boolean v0, Landroid/app/AppOpsManager;->IS_HINT_ENABLE:Z

    sput-boolean v0, Lcom/android/server/AppOpsService;->sEnableHint:Z

    .line 1451
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/AppOpsService;->DEBUG_HINT:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/AppOpsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 147
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 217
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 218
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->initHintFeature()V

    .line 221
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AppOpsService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->getDenyButtonString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/android/server/AppOpsService;->DEBUG_HINT:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AppOpsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_1

    .line 510
    :cond_0
    return-object p0

    .line 498
    :cond_1
    if-nez p0, :cond_2

    .line 499
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 501
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 502
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 503
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 504
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_3

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkHintDialog(IILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1706
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opSupportHint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1707
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->checkHintDialogImpl(IILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1714
    :goto_0
    return v1

    .line 1709
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1711
    :catch_0
    move-exception v0

    .line 1712
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkHintDialogImpl(IILjava/lang/String;)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1779
    sget-boolean v6, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-eqz v6, :cond_0

    const/16 v6, 0x2710

    move/from16 v0, p2

    if-lt v0, v6, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->isCachedSysApp(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1781
    :cond_0
    const/4 v6, 0x1

    .line 1855
    :goto_0
    return v6

    .line 1783
    :cond_1
    invoke-static/range {p2 .. p3}, Lcom/android/server/AppOpsService;->getAppInfo(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1784
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    if-nez v8, :cond_2

    .line 1785
    const/4 v6, 0x0

    goto :goto_0

    .line 1787
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/AppOpsService;->isPermittedSysApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1788
    const/4 v6, 0x1

    goto :goto_0

    .line 1790
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1791
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG_HINT:Z

    if-eqz v6, :cond_4

    .line 1792
    const-string v6, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skip checking white list "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 1796
    :cond_5
    move/from16 v7, p1

    .line 1797
    .local v7, "switchCode":I
    monitor-enter p0

    .line 1798
    const/4 v6, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v13

    .line 1799
    .local v13, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v13, :cond_6

    .line 1801
    const/4 v6, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1814
    .end local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1803
    .restart local v13    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_6
    const/4 v6, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v12

    .line 1804
    .local v12, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1806
    const/4 v6, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1808
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v7

    .line 1809
    move/from16 v0, p1

    if-eq v7, v0, :cond_8

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v6}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v14

    .line 1811
    .local v14, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_1
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v14}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1812
    const/4 v6, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .end local v14    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_8
    move-object v14, v12

    .line 1809
    goto :goto_1

    .line 1814
    .restart local v14    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1816
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1817
    .local v9, "notifier":Ljava/lang/Object;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1818
    .local v5, "pid":I
    new-instance v4, Lcom/android/server/AppOpsService$HintDialogData;

    move/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/AppOpsService$HintDialogData;-><init>(IIILandroid/content/pm/ApplicationInfo;Ljava/lang/Object;)V

    .line 1820
    .local v4, "data":Lcom/android/server/AppOpsService$HintDialogData;
    sget-boolean v6, Lcom/android/server/AppOpsService;->DEBUG_HINT:Z

    if-eqz v6, :cond_a

    .line 1821
    const-string v6, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Hint dialog for cpid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " code="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " pkg="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v6, v15, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1828
    monitor-enter p0

    .line 1829
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mWaitingHintList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1831
    monitor-enter v9

    .line 1833
    const-wide/16 v16, 0x2af8

    :try_start_3
    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1836
    :goto_2
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1837
    monitor-enter p0

    .line 1838
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mWaitingHintList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1839
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1841
    const/4 v10, 0x0

    .line 1842
    .local v10, "dialog":Lcom/android/server/AppOpsService$HintDialog;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    monitor-enter v15

    .line 1843
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 1844
    .local v11, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    if-eqz v11, :cond_c

    .line 1845
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/AppOpsService$HintDialog;

    move-object v10, v0

    .line 1846
    if-eqz v10, :cond_b

    .line 1847
    invoke-virtual {v10}, Lcom/android/server/AppOpsService$HintDialog;->dismiss()V

    .line 1849
    :cond_b
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    invoke-virtual {v11}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1851
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1854
    :cond_c
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1855
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/android/server/AppOpsService$HintDialog;->getResult()Z

    move-result v6

    goto/16 :goto_0

    .line 1830
    .end local v10    # "dialog":Lcom/android/server/AppOpsService$HintDialog;
    .end local v11    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v6

    .line 1836
    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    .line 1839
    :catchall_3
    move-exception v6

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v6

    .line 1854
    .restart local v10    # "dialog":Lcom/android/server/AppOpsService$HintDialog;
    :catchall_4
    move-exception v6

    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6

    .line 1855
    .restart local v11    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1834
    .end local v10    # "dialog":Lcom/android/server/AppOpsService$HintDialog;
    .end local v11    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 700
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    .line 701
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 702
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 706
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1443
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1444
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1446
    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x64

    .line 332
    const/4 v10, 0x0

    .line 333
    .local v10, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_1

    .line 334
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .restart local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v9, v1, :cond_5

    .line 336
    invoke-virtual {p1, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 338
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v0}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v11

    .line 339
    .local v3, "mode":I
    :goto_1
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v1 .. v8}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 338
    .end local v3    # "mode":I
    :cond_0
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_1

    .line 347
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v9    # "j":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_2
    array-length v1, p2

    if-ge v9, v1, :cond_5

    .line 348
    aget v1, p2, v9

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 349
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_3

    .line 350
    if-nez v10, :cond_2

    .line 351
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .restart local v10    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v0}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v3, v11

    .line 355
    .restart local v3    # "mode":I
    :goto_3
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-direct/range {v1 .. v8}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v3    # "mode":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 354
    :cond_4
    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    goto :goto_3

    .line 364
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_5
    return-object v10
.end method

.method private static getAppInfo(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1718
    const/4 v0, 0x0

    .line 1720
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1726
    :goto_0
    if-nez v0, :cond_0

    .line 1727
    const-string v2, "AppOps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package info, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_0
    return-object v0

    .line 1723
    :catch_0
    move-exception v1

    .line 1724
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AppOps"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDenyButtonString(I)Ljava/lang/String;
    .locals 5
    .param p1, "countDown"    # I

    .prologue
    .line 1700
    const-string v0, "%s (%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v4, 0x30701db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 1003
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1004
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 1005
    const/4 v1, 0x0

    .line 1007
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    goto :goto_0
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 3
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 1011
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 1012
    .local v0, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v0, :cond_1

    .line 1013
    if-nez p3, :cond_0

    .line 1014
    const/4 v1, 0x0

    .line 1022
    :goto_0
    return-object v1

    .line 1016
    :cond_0
    new-instance v0, Lcom/android/server/AppOpsService$Op;

    .end local v0    # "op":Lcom/android/server/AppOpsService$Op;
    iget v1, p1, Lcom/android/server/AppOpsService$Ops;->uid:I

    iget-object v2, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1017
    .restart local v0    # "op":Lcom/android/server/AppOpsService$Op;
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 1019
    :cond_1
    if-eqz p3, :cond_2

    .line 1020
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    :cond_2
    move-object v1, v0

    .line 1022
    goto :goto_0
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 921
    if-nez p1, :cond_1

    .line 922
    const-string p2, "root"

    .line 926
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    .line 923
    :cond_1
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 924
    const-string p2, "com.android.shell"

    goto :goto_0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 930
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 931
    .local v6, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v6, :cond_2

    .line 932
    if-nez p3, :cond_1

    .line 933
    const/4 v5, 0x0

    .line 984
    :cond_0
    :goto_0
    return-object v5

    .line 935
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 936
    .restart local v6    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 939
    :cond_2
    const/16 v8, 0x3e8

    if-ne p1, v8, :cond_3

    if-nez p2, :cond_3

    .line 940
    const-string p2, "android"

    .line 943
    :cond_3
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Ops;

    .line 944
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v5, :cond_0

    .line 945
    if-nez p3, :cond_4

    .line 946
    const/4 v5, 0x0

    goto :goto_0

    .line 948
    :cond_4
    const/4 v4, 0x0

    .line 951
    .local v4, "isPrivileged":Z
    if-eqz p1, :cond_9

    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 954
    .local v2, "ident":J
    const/4 v7, -0x1

    .line 956
    .local v7, "pkgUid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-interface {v8, p2, v9, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 958
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_7

    .line 959
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 960
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    .line 970
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    if-eq v7, p1, :cond_8

    .line 973
    :try_start_1
    const-string v8, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad call: specified package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " under uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but it is really "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    const/4 v5, 0x0

    .line 978
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 960
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 962
    :cond_7
    :try_start_2
    const-string v8, "media"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 963
    const/16 v7, 0x3f5

    .line 964
    const/4 v4, 0x0

    goto :goto_1

    .line 967
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 968
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "AppOps"

    const-string v9, "Could not contact PackageManager"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 978
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    .end local v2    # "ident":J
    .end local v7    # "pkgUid":I
    :cond_9
    new-instance v5, Lcom/android/server/AppOpsService$Ops;

    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {v5, p2, p1, v4}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;IZ)V

    .line 982
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual {v6, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private initHintFeature()V
    .locals 3

    .prologue
    .line 1634
    sget-boolean v1, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-nez v1, :cond_0

    .line 1697
    :goto_0
    return-void

    .line 1637
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mSystemAppUids:Landroid/util/SparseArray;

    .line 1638
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mSystemAppBlackList:Landroid/util/ArraySet;

    .line 1639
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mAppWhiteList:Landroid/util/ArraySet;

    .line 1640
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mAppWhiteList:Landroid/util/ArraySet;

    const-string v2, "com.htc.AndroidTestII"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1641
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->loadWhiteBlackList()V

    .line 1642
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    .line 1643
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mWaitingHintList:Ljava/util/ArrayList;

    .line 1644
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppOpsHint"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v0, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1647
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private isCachedSysApp(ILjava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1752
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mSystemAppUids:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSystemAppUids:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1754
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    const/4 v1, 0x1

    monitor-exit v2

    .line 1758
    :goto_0
    return v1

    .line 1757
    :cond_0
    monitor-exit v2

    .line 1758
    const/4 v1, 0x0

    goto :goto_0

    .line 1757
    .end local v0    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isHintable(IILjava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1767
    sget-boolean v0, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    if-lt p2, v0, :cond_0

    invoke-static {p1}, Landroid/app/AppOpsManager;->opSupportHint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/AppOpsService;->isCachedSysApp(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Lcom/android/server/AppOpsService;->getAppInfo(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->isPermittedSysApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1772
    :cond_0
    const/4 v0, 0x0

    .line 1774
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1026
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1027
    .local v2, "userHandle":I
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 1029
    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/app/AppOpsManager;->opToIndex(I)I

    move-result v5

    aget-boolean v5, v0, v5

    if-eqz v5, :cond_0

    .line 1032
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1033
    monitor-enter p0

    .line 1034
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1035
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_1

    iget-boolean v5, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v5, :cond_1

    .line 1036
    monitor-exit p0

    .line 1042
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_0
    :goto_0
    return v3

    .line 1038
    .restart local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    monitor-exit p0

    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_2
    move v3, v4

    .line 1040
    goto :goto_0

    .line 1038
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isPermittedSysApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "ainfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 1735
    if-nez p1, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return v0

    .line 1738
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSystemAppBlackList:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1743
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mSystemAppUids:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1744
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mSystemAppUids:Landroid/util/SparseArray;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1745
    monitor-exit v1

    .line 1746
    const/4 v0, 0x1

    goto :goto_0

    .line 1745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isWhiteListApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mAppWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadWhiteBlackList()V
    .locals 10

    .prologue
    .line 1610
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v6

    const-string v7, "Android_App_Framework"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "AppOps_feature_hint_sysapp_blacklist"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1614
    .local v5, "pkgNames":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1615
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1616
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mSystemAppBlackList:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1615
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v6

    const-string v7, "Android_App_Framework"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v7, "AppOps_feature_hint_app_whitelist"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1623
    if-eqz v5, :cond_1

    .line 1624
    move-object v0, v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1625
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AppOpsService;->mAppWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1628
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgNames":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1629
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "AppOps"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private notifyWaitingListLocked(IILjava/lang/String;I)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const/4 v6, 0x1

    .line 1859
    sget-boolean v5, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-nez v5, :cond_1

    .line 1885
    :cond_0
    return-void

    .line 1862
    :cond_1
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mWaitingHintList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1863
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mWaitingHintList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsService$HintDialogData;

    .line 1864
    .local v1, "d":Lcom/android/server/AppOpsService$HintDialogData;
    iget v5, v1, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    if-ne v5, p1, :cond_5

    iget v5, v1, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    if-ne v5, p2, :cond_5

    iget-object v5, v1, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1866
    sget-boolean v5, Lcom/android/server/AppOpsService;->DEBUG_HINT:Z

    if-eqz v5, :cond_2

    .line 1867
    const-string v5, "AppOps"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notify waiting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_2
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1870
    const/4 v2, 0x0

    .line 1871
    .local v2, "dialog":Lcom/android/server/AppOpsService$HintDialog;
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1872
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;

    iget v8, v1, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1873
    .local v4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    if-eqz v4, :cond_3

    .line 1874
    iget-object v5, v1, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/AppOpsService$HintDialog;

    move-object v2, v0

    .line 1876
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    iget-object v7, v1, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    monitor-enter v7

    .line 1878
    if-eqz v2, :cond_4

    .line 1879
    if-nez p4, :cond_6

    move v5, v6

    :goto_1
    :try_start_1
    # setter for: Lcom/android/server/AppOpsService$HintDialog;->mResult:Z
    invoke-static {v2, v5}, Lcom/android/server/AppOpsService$HintDialog;->access$702(Lcom/android/server/AppOpsService$HintDialog;Z)Z

    .line 1881
    :cond_4
    iget-object v5, v1, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1882
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1862
    .end local v2    # "dialog":Lcom/android/server/AppOpsService$HintDialog;
    .end local v4    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1876
    .restart local v2    # "dialog":Lcom/android/server/AppOpsService$HintDialog;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1879
    .restart local v4    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/server/AppOpsService$HintDialog;>;"
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 1882
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 6
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 414
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 415
    const/4 v2, 0x0

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 416
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_0

    .line 417
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v2}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 418
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 420
    .local v1, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_0

    .line 421
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 429
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 990
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 992
    :cond_0
    return-void
.end method

.method private scheduleWriteNowLocked()V
    .locals 2

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 999
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 906
    if-ltz p1, :cond_1

    const/16 v0, 0x30

    if-ge p1, v0, :cond_1

    .line 914
    :cond_0
    return-void

    .line 912
    :cond_1
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    const/16 v0, 0x3ec

    if-lt p1, v0, :cond_0

    .line 917
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 894
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 689
    monitor-enter p0

    .line 690
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I

    move-result v0

    .line 691
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 692
    monitor-exit p0

    .line 695
    .end local v0    # "mode":I
    :goto_0
    return v0

    .line 694
    .restart local v0    # "mode":I
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 694
    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x20000000

    const/4 v4, 0x1

    .line 640
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 642
    move v2, p1

    .line 643
    .local v2, "rawCode":I
    const v6, 0xfffffff

    and-int/2addr p1, v6

    .line 645
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 647
    const/4 v3, 0x0

    .line 648
    .local v3, "returnRealMode":Z
    const/4 v0, 0x0

    .line 649
    .local v0, "hasHintMode":Z
    sget-boolean v6, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-eqz v6, :cond_2

    .line 650
    const/high16 v6, 0x10000000

    and-int/2addr v6, v2

    if-eqz v6, :cond_0

    move v3, v4

    .line 651
    :goto_0
    and-int v5, v2, v7

    if-nez v5, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->checkHintDialog(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 683
    :goto_1
    return v4

    :cond_0
    move v3, v5

    .line 650
    goto :goto_0

    .line 655
    :cond_1
    if-eqz v3, :cond_2

    .line 656
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->isHintable(IILjava/lang/String;)Z

    move-result v0

    .line 660
    :cond_2
    monitor-enter p0

    .line 661
    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 662
    monitor-exit p0

    goto :goto_1

    .line 684
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 664
    :cond_3
    :try_start_1
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 665
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_5

    .line 667
    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 668
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    or-int/2addr v4, v7

    monitor-exit p0

    goto :goto_1

    .line 672
    :cond_4
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v4

    monitor-exit p0

    goto :goto_1

    .line 675
    :cond_5
    if-eqz v3, :cond_8

    .line 676
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v1}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 677
    const/16 v4, 0x64

    monitor-exit p0

    goto :goto_1

    .line 679
    :cond_6
    if-eqz v0, :cond_7

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    :goto_2
    monitor-exit p0

    goto :goto_1

    :cond_7
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    or-int/2addr v4, v7

    goto :goto_2

    .line 683
    :cond_8
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 741
    monitor-enter p0

    .line 742
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x0

    monitor-exit p0

    .line 745
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android.permission.DUMP"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_0

    .line 1287
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", uid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :goto_0
    return-void

    .line 1293
    :cond_0
    monitor-enter p0

    .line 1294
    :try_start_0
    const-string v20, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1296
    .local v10, "now":J
    const/4 v9, 0x0

    .line 1297
    .local v9, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-lez v20, :cond_2

    .line 1298
    const/4 v9, 0x1

    .line 1299
    const-string v20, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_2

    .line 1301
    const-string v20, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1304
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 1305
    const-string v20, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v20, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1304
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1300
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1310
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 1311
    const/4 v9, 0x1

    .line 1312
    const-string v20, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_4

    .line 1314
    const-string v20, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1317
    .restart local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 1318
    const-string v20, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v20, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1317
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1313
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1323
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v6    # "i":I
    .end local v8    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    if-lez v20, :cond_5

    .line 1324
    const/4 v9, 0x1

    .line 1325
    const-string v20, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_5

    .line 1327
    const-string v20, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1328
    const-string v20, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1326
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1331
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    if-lez v20, :cond_7

    .line 1332
    const/4 v9, 0x1

    .line 1333
    const-string v20, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_7

    .line 1335
    const-string v20, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$ClientState;

    .line 1337
    .local v5, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string v20, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1338
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 1339
    const-string v20, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_7
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    .line 1341
    iget-object v0, v5, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 1342
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    const-string v20, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v20, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1343
    const-string v20, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    const-string v20, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1334
    .end local v8    # "j":I
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 1349
    .end local v5    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v6    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    if-lez v20, :cond_b

    .line 1350
    const/16 v16, 0x0

    .line 1351
    .local v16, "printedHeader":Z
    const/4 v12, 0x0

    .local v12, "o":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_b

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v13

    .line 1353
    .local v13, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 1354
    .local v18, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_a

    .line 1355
    if-nez v16, :cond_8

    .line 1356
    const-string v20, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    const/16 v16, 0x1

    .line 1358
    const/4 v9, 0x1

    .line 1360
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    .line 1361
    .local v19, "usage":I
    const-string v20, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    const-string v20, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AppOpsService$Restriction;

    .line 1364
    .local v17, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string v20, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1365
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_9

    .line 1366
    const-string v20, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_9

    .line 1368
    const-string v20, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1354
    .end local v8    # "j":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 1351
    .end local v17    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v19    # "usage":I
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    .line 1374
    .end local v6    # "i":I
    .end local v12    # "o":I
    .end local v13    # "op":Ljava/lang/String;
    .end local v16    # "printedHeader":Z
    .end local v18    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_b
    if-eqz v9, :cond_c

    .line 1375
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1377
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_12

    .line 1378
    const-string v20, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    .line 1380
    .local v15, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppOpsService$Ops;

    .line 1381
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string v20, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v20, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_c
    invoke-virtual {v14}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_d

    .line 1383
    invoke-virtual {v14, v8}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 1384
    .local v13, "op":Lcom/android/server/AppOpsService$Op;
    const-string v20, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    const-string v20, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1387
    const-string v20, ": hint="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v13}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1390
    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_e

    .line 1391
    const-string v20, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1392
    const-string v20, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    :cond_e
    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_f

    .line 1395
    const-string v20, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v20, v0

    sub-long v20, v10, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1396
    const-string v20, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    :cond_f
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 1399
    const-string v20, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c

    .line 1401
    :cond_10
    const-string v20, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    iget v0, v13, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_d

    .line 1408
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "j":I
    .end local v9    # "needSep":Z
    .end local v10    # "now":J
    .end local v13    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 1377
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "needSep":Z
    .restart local v10    # "now":J
    .restart local v15    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 1408
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v15    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 860
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 861
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 862
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 863
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 864
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_0

    .line 865
    monitor-exit p0

    .line 875
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 868
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 869
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 873
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 874
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 878
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    .line 879
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 881
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 887
    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 891
    :goto_1
    return-void

    .line 883
    :cond_0
    const-string v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 396
    monitor-enter p0

    .line 397
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 398
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 399
    monitor-exit p0

    .line 409
    :goto_0
    return-object v1

    .line 401
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 402
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    .line 403
    monitor-exit p0

    goto :goto_0

    .line 410
    .end local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 405
    .restart local v0    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v2    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 408
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 13
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.GET_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 371
    const/4 v4, 0x0

    .line 372
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    monitor-enter p0

    .line 373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 374
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 375
    .local v2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    move-object v5, v4

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v5, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsService$Ops;

    .line 376
    .local v3, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-direct {p0, v3, p1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v6

    .line 377
    .local v6, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v6, :cond_3

    .line 378
    if-nez v5, :cond_2

    .line 379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    :try_start_2
    new-instance v7, Landroid/app/AppOpsManager$PackageOps;

    iget-object v8, v3, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/AppOpsService$Ops;->uid:I

    invoke-direct {v7, v8, v9, v6}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 383
    .local v7, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v7    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_3
    move-object v5, v4

    .line 385
    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1

    .line 373
    .end local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_0

    .line 387
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_1
    monitor-exit p0

    .line 388
    return-object v4

    .line 387
    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v3    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_2
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .end local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    move-object v4, v5

    .end local v5    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v4    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 628
    monitor-enter p0

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 630
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 632
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :cond_0
    monitor-exit p0

    return-object v0

    .line 635
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 12
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 755
    const/4 v0, 0x1

    .line 756
    .local v0, "hintAllow":Z
    sget-boolean v7, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-eqz v7, :cond_0

    .line 757
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->checkHintDialog(IILjava/lang/String;)Z

    move-result v0

    .line 760
    :cond_0
    monitor-enter p0

    .line 761
    const/4 v7, 0x1

    :try_start_0
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v4

    .line 762
    .local v4, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v4, :cond_1

    .line 765
    const/4 v7, 0x2

    monitor-exit p0

    .line 798
    :goto_0
    return v7

    .line 767
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v4, p1, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 768
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 769
    const/4 v7, 0x1

    monitor-exit p0

    goto :goto_0

    .line 799
    .end local v3    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v4    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 771
    .restart local v3    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v4    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_2
    :try_start_1
    iget v7, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 772
    const-string v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Noting op not finished: uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v3, Lcom/android/server/AppOpsService$Op;->time:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_3
    const/4 v7, 0x0

    iput v7, v3, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 776
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v5

    .line 777
    .local v5, "switchCode":I
    if-eq v5, p1, :cond_5

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 779
    .local v6, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_1
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v6}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v0, :cond_6

    const/4 v1, 0x1

    .line 780
    .local v1, "hintDisallow":Z
    :goto_2
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v6}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v7, :cond_7

    const/4 v2, 0x1

    .line 781
    .local v2, "modeDisallow":Z
    :goto_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_9

    .line 786
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 788
    if-eqz v1, :cond_8

    .line 789
    const/4 v7, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .end local v1    # "hintDisallow":Z
    .end local v2    # "modeDisallow":Z
    .end local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_5
    move-object v6, v3

    .line 777
    goto :goto_1

    .line 779
    .restart local v6    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 780
    .restart local v1    # "hintDisallow":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 792
    .restart local v2    # "modeDisallow":Z
    :cond_8
    iget v7, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto/16 :goto_0

    .line 796
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/AppOpsService$Op;->time:J

    .line 797
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 798
    const/4 v7, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 297
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 305
    :cond_1
    monitor-exit p0

    .line 306
    return-void

    .line 305
    .end local v0    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 225
    const-string v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 226
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1113
    const/4 v4, 0x0

    const-string v5, "n"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1117
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1118
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1123
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1124
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    :cond_2
    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1131
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 1046
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v8

    .line 1047
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 1055
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1057
    .local v4, "success":Z
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1058
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1061
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_1

    if-ne v6, v11, :cond_0

    .line 1065
    :cond_1
    if-eq v6, v9, :cond_3

    .line 1066
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1086
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1099
    if-nez v4, :cond_2

    .line 1100
    :try_start_4
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1103
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1107
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1108
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1109
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_1
    return-void

    .line 1051
    :catch_1
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No existing app ops "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; starting empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    monitor-exit v8

    goto :goto_1

    .line 1108
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v7

    .line 1069
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_3
    :try_start_a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1071
    .local v1, "outerDepth":I
    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_9

    if-ne v6, v12, :cond_5

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_9

    .line 1072
    :cond_5
    if-eq v6, v12, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 1076
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1077
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "pkg"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1078
    invoke-virtual {p0, v2}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 1088
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_2
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1099
    if-nez v4, :cond_6

    .line 1100
    :try_start_c
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1103
    :cond_6
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_0

    .line 1104
    :catch_3
    move-exception v7

    goto :goto_0

    .line 1080
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_7
    :try_start_e
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <app-ops>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    .line 1090
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_4
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1099
    if-nez v4, :cond_8

    .line 1100
    :try_start_10
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1103
    :cond_8
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_0

    .line 1104
    :catch_5
    move-exception v7

    goto/16 :goto_0

    .line 1085
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_9
    const/4 v4, 0x1

    .line 1099
    if-nez v4, :cond_a

    .line 1100
    :try_start_12
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1103
    :cond_a
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/16 :goto_0

    .line 1104
    :catch_6
    move-exception v7

    goto/16 :goto_0

    .line 1092
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_7
    move-exception v0

    .line 1093
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1099
    if-nez v4, :cond_b

    .line 1100
    :try_start_15
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1103
    :cond_b
    :try_start_16
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_0

    .line 1104
    :catch_8
    move-exception v7

    goto/16 :goto_0

    .line 1094
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/io/IOException;
    :try_start_17
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1099
    if-nez v4, :cond_c

    .line 1100
    :try_start_18
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1103
    :cond_c
    :try_start_19
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_0

    .line 1104
    :catch_a
    move-exception v7

    goto/16 :goto_0

    .line 1096
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1a
    const-string v7, "AppOps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 1099
    if-nez v4, :cond_d

    .line 1100
    :try_start_1b
    iget-object v7, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 1103
    :cond_d
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/16 :goto_0

    .line 1104
    :catch_c
    move-exception v7

    goto/16 :goto_0

    .line 1099
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1
    move-exception v7

    if-nez v4, :cond_e

    .line 1100
    :try_start_1d
    iget-object v9, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 1103
    :cond_e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 1105
    :goto_3
    :try_start_1f
    throw v7

    .line 1107
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    throw v7
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 1104
    .local v0, "e":Ljava/lang/IllegalStateException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    :catch_d
    move-exception v7

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_e
    move-exception v9

    goto :goto_3
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1135
    const/4 v14, 0x0

    const-string v15, "n"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1136
    .local v13, "uid":I
    const/4 v14, 0x0

    const-string v15, "p"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1137
    .local v4, "isPrivilegedString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1138
    .local v3, "isPrivileged":Z
    if-nez v4, :cond_9

    .line 1140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    if-nez v14, :cond_0

    .line 1141
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    .line 1143
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    move-object/from16 v0, p2

    invoke-virtual {v14, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1148
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1151
    .local v8, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_c

    const/4 v14, 0x3

    if-ne v12, v14, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_c

    .line 1152
    :cond_2
    const/4 v14, 0x3

    if-eq v12, v14, :cond_1

    const/4 v14, 0x4

    if-eq v12, v14, :cond_1

    .line 1156
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1157
    .local v10, "tagName":Ljava/lang/String;
    const-string v14, "op"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1158
    new-instance v6, Lcom/android/server/AppOpsService$Op;

    const/4 v14, 0x0

    const-string v15, "n"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-direct {v6, v13, v0, v14}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;I)V

    .line 1159
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    const/4 v14, 0x0

    const-string v15, "m"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1160
    .local v5, "mode":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1161
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1163
    iget v14, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    const/16 v15, 0x64

    if-ne v14, v15, :cond_a

    .line 1164
    iget v14, v6, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v14}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v14

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1165
    const/4 v14, 0x1

    # setter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Op;->access$002(Lcom/android/server/AppOpsService$Op;Z)Z

    .line 1171
    :cond_3
    :goto_2
    const/4 v14, 0x0

    const-string v15, "t"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1172
    .local v11, "time":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 1173
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1175
    :cond_4
    const/4 v14, 0x0

    const-string v15, "r"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1176
    if-eqz v11, :cond_5

    .line 1177
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1179
    :cond_5
    const/4 v14, 0x0

    const-string v15, "d"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1180
    .local v2, "dur":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 1181
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1183
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1184
    .local v9, "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v9, :cond_7

    .line 1185
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1186
    .restart local v9    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1188
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$Ops;

    .line 1189
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_8

    .line 1190
    new-instance v7, Lcom/android/server/AppOpsService$Ops;

    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    invoke-direct {v7, v0, v13, v3}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;IZ)V

    .line 1191
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    :cond_8
    iget v14, v6, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v7, v14, v6}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1146
    .end local v2    # "dur":Ljava/lang/String;
    .end local v5    # "mode":Ljava/lang/String;
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "outerDepth":I
    .end local v9    # "pkgOps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "time":Ljava/lang/String;
    .end local v12    # "type":I
    :cond_9
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 1167
    .restart local v5    # "mode":Ljava/lang/String;
    .restart local v6    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v8    # "outerDepth":I
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_a
    const/4 v14, 0x0

    # setter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v6, v14}, Lcom/android/server/AppOpsService$Op;->access$002(Lcom/android/server/AppOpsService$Op;Z)Z

    goto :goto_2

    .line 1195
    .end local v5    # "mode":Ljava/lang/String;
    .end local v6    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_b
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown element under <pkg>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1200
    .end local v10    # "tagName":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1437
    const-string v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 1438
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1439
    return-void
.end method

.method public resetAllModes()V
    .locals 24

    .prologue
    .line 515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 516
    .local v5, "callingUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    monitor-enter p0

    .line 520
    const/4 v7, 0x0

    .line 521
    .local v7, "changed":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    add-int/lit8 v11, v20, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_6

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 523
    .local v16, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 521
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 528
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 529
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 530
    .local v10, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 531
    .local v15, "packageName":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AppOpsService$Ops;

    .line 532
    .local v17, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v20

    add-int/lit8 v14, v20, -0x1

    .local v14, "j":I
    :goto_3
    if-ltz v14, :cond_4

    .line 533
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Op;

    .line 534
    .local v8, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v20

    if-eqz v20, :cond_3

    iget v0, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v20, v0

    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 536
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v8, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 537
    const/4 v7, 0x1

    .line 538
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v4, v15, v0, v1}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 540
    iget v0, v8, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    move/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v4, v15, v0, v1}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    .line 542
    iget-wide v0, v8, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    iget-wide v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 543
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 532
    :cond_3
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_3

    .line 547
    .end local v8    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v20

    if-nez v20, :cond_2

    .line 548
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 558
    .end local v10    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v11    # "i":I
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v14    # "j":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v17    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 551
    .restart local v11    # "i":I
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v16    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_5
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v20

    if-nez v20, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->removeAt(I)V

    goto/16 :goto_1

    .line 555
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v16    # "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_6
    if-eqz v7, :cond_7

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 558
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    if-eqz v4, :cond_9

    .line 560
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 561
    .local v9, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Callback;

    .line 562
    .local v6, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 563
    .local v19, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_8

    .line 564
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/Pair;

    .line 566
    .local v18, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_2
    iget-object v0, v6, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 563
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 572
    .end local v6    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_9
    return-void

    .line 567
    .restart local v6    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v9    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v18    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v19    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v20

    goto :goto_5
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 712
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 713
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 714
    monitor-enter p0

    .line 715
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 716
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    .line 717
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 718
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 720
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 721
    if-eqz p4, :cond_3

    .line 722
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 723
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 724
    if-eqz p5, :cond_2

    .line 725
    array-length v0, p5

    .line 726
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 727
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 728
    aget-object v2, p5, v1

    .line 729
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 730
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 736
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    monitor-exit p0

    .line 737
    return-void

    .line 736
    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 434
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 440
    monitor-enter p0

    .line 441
    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 442
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_6

    .line 445
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v5, p4, :cond_1

    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v5, p4, :cond_6

    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v2}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 447
    :cond_1
    iput p4, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 449
    const/16 v5, 0x64

    if-ne p4, v5, :cond_7

    .line 450
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    iput v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 451
    const/4 v5, 0x1

    # setter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v2, v5}, Lcom/android/server/AppOpsService$Op;->access$002(Lcom/android/server/AppOpsService$Op;Z)Z

    .line 459
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 460
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_4

    .line 461
    if-nez v3, :cond_3

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .local v4, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    move-object v3, v4

    .line 464
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v4, v3

    .line 466
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v5, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 467
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_a

    .line 468
    if-nez v4, :cond_9

    .line 469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :goto_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 473
    :goto_2
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v5

    if-ne p4, v5, :cond_5

    .line 476
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 478
    :cond_5
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteNowLocked()V

    .line 481
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    if-eqz v3, :cond_8

    .line 483
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 485
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsService$Callback;

    iget-object v5, v5, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v5, p1, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 483
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 453
    .end local v1    # "i":I
    :cond_7
    const/4 v5, 0x0

    :try_start_4
    # setter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v2, v5}, Lcom/android/server/AppOpsService$Op;->access$002(Lcom/android/server/AppOpsService$Op;Z)Z

    .line 454
    sget-boolean v5, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-eqz v5, :cond_2

    .line 455
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->notifyWaitingListLocked(IILjava/lang/String;I)V

    goto :goto_0

    .line 481
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_0
    move-exception v5

    :goto_5
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 490
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_8
    return-void

    .line 486
    .restart local v1    # "i":I
    :catch_0
    move-exception v5

    goto :goto_4

    .line 481
    .end local v1    # "i":I
    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_5

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_9
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_1

    .end local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_a
    move-object v3, v4

    .end local v4    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v3    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    goto :goto_2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1419
    const-string v3, "setUserRestrictions"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 1420
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 1421
    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_0

    .line 1422
    const/16 v3, 0x34

    new-array v1, v3, [Z

    .line 1423
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1425
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 1426
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v2

    .line 1427
    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1428
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v0

    .line 1425
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1430
    :cond_1
    aput-boolean v4, v1, v0

    goto :goto_1

    .line 1433
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 318
    const-string v1, "AppOps"

    const-string v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "doWrite":Z
    monitor-enter p0

    .line 321
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 323
    const/4 v0, 0x1

    .line 325
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 329
    :cond_1
    return-void

    .line 325
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 805
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 807
    const/4 v1, 0x1

    .line 808
    .local v1, "hintAllow":Z
    sget-boolean v8, Lcom/android/server/AppOpsService;->sEnableHint:Z

    if-eqz v8, :cond_0

    .line 809
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkHintDialog(IILjava/lang/String;)Z

    move-result v1

    :cond_0
    move-object v0, p1

    .line 812
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 813
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    monitor-enter p0

    .line 814
    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, p3, p4, v8}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v5

    .line 815
    .local v5, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v5, :cond_1

    .line 818
    const/4 v8, 0x2

    monitor-exit p0

    .line 853
    :goto_0
    return v8

    .line 820
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, v5, p2, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v4

    .line 821
    .local v4, "op":Lcom/android/server/AppOpsService$Op;
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 822
    const/4 v8, 0x1

    monitor-exit p0

    goto :goto_0

    .line 854
    .end local v4    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 824
    .restart local v4    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v5    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_2
    :try_start_1
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v6

    .line 825
    .local v6, "switchCode":I
    if-eq v6, p2, :cond_4

    const/4 v8, 0x1

    invoke-direct {p0, v5, v6, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 827
    .local v7, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_1
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v7}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v1, :cond_5

    const/4 v2, 0x1

    .line 828
    .local v2, "hintDisallow":Z
    :goto_2
    # getter for: Lcom/android/server/AppOpsService$Op;->hint:Z
    invoke-static {v7}, Lcom/android/server/AppOpsService$Op;->access$000(Lcom/android/server/AppOpsService$Op;)Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v8, :cond_6

    const/4 v3, 0x1

    .line 829
    .local v3, "modeDisallow":Z
    :goto_3
    if-nez v3, :cond_3

    if-eqz v2, :cond_8

    .line 834
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 836
    if-eqz v2, :cond_7

    .line 837
    const/4 v8, 0x1

    monitor-exit p0

    goto :goto_0

    .end local v2    # "hintDisallow":Z
    .end local v3    # "modeDisallow":Z
    .end local v7    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    move-object v7, v4

    .line 825
    goto :goto_1

    .line 827
    .restart local v7    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 828
    .restart local v2    # "hintDisallow":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 840
    .restart local v3    # "modeDisallow":Z
    :cond_7
    iget v8, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    monitor-exit p0

    goto :goto_0

    .line 844
    :cond_8
    iget v8, v4, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v8, :cond_9

    .line 845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/AppOpsService$Op;->time:J

    .line 846
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 847
    const/4 v8, -0x1

    iput v8, v4, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 849
    :cond_9
    iget v8, v4, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 850
    iget-object v8, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v8, :cond_a

    .line 851
    iget-object v8, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_a
    const/4 v8, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 576
    monitor-enter p0

    .line 577
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 578
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 579
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 581
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 584
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 585
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_1

    .line 586
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 589
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_2
    if-eqz p2, :cond_4

    .line 592
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 593
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_3

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_4
    monitor-exit p0

    .line 600
    return-void

    .line 599
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 604
    monitor-enter p0

    .line 605
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 606
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_3

    .line 607
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 608
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 610
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 608
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 615
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 616
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 617
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 619
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 615
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 623
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0

    .line 624
    return-void

    .line 623
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 17

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "changed":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 233
    .local v12, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 234
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 235
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .local v9, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v9, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget v0, v9, Lcom/android/server/AppOpsService$Ops;->uid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 243
    .local v3, "curUid":I
    :goto_2
    :try_start_2
    iget v14, v9, Lcom/android/server/AppOpsService$Ops;->uid:I

    if-eq v3, v14, :cond_0

    .line 244
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pruning old package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v9, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lcom/android/server/AppOpsService$Ops;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": new uid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 247
    const/4 v2, 0x1

    goto :goto_1

    .line 240
    .end local v3    # "curUid":I
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .restart local v3    # "curUid":I
    goto :goto_2

    .line 250
    .end local v3    # "curUid":I
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_1
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v14

    if-gtz v14, :cond_2

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 231
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 255
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v12    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    :cond_3
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 256
    .local v10, "packageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    if-eqz v14, :cond_8

    if-eqz v10, :cond_8

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 259
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 260
    .local v11, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 261
    .restart local v12    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v12, :cond_5

    .line 257
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 264
    :cond_5
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$Ops;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .restart local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v9, :cond_4

    .line 269
    const/4 v14, 0x0

    :try_start_3
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-interface {v10, v11, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 271
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_4

    iget v14, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v15, 0x40000000    # 2.0f

    and-int/2addr v14, v15

    if-eqz v14, :cond_4

    .line 273
    const-string v14, "AppOps"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Privileged package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v8, Lcom/android/server/AppOpsService$Ops;

    const/4 v14, 0x1

    invoke-direct {v8, v11, v13, v14}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;IZ)V

    .line 275
    .local v8, "newOps":Lcom/android/server/AppOpsService$Ops;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v14

    if-ge v7, v14, :cond_6

    .line 276
    invoke-virtual {v9, v7}, Lcom/android/server/AppOpsService$Ops;->keyAt(I)I

    move-result v14

    invoke-virtual {v9, v7}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 278
    :cond_6
    invoke-virtual {v12, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    const/4 v2, 0x1

    goto :goto_4

    .line 281
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "j":I
    .end local v8    # "newOps":Lcom/android/server/AppOpsService$Ops;
    :catch_1
    move-exception v4

    .line 282
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v14, "AppOps"

    const-string v15, "Could not contact PackageManager"

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 291
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v9    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v10    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v13    # "uid":I
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 285
    .restart local v10    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_7
    const/4 v14, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/AppOpsService;->mLoadPrivLaterPkgs:Landroid/util/SparseArray;

    .line 288
    :cond_8
    if-eqz v2, :cond_9

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 291
    :cond_9
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 292
    return-void
.end method

.method public uidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mUidOps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 312
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 314
    :cond_0
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeState()V
    .locals 22

    .prologue
    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1204
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 1208
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    .line 1215
    .local v15, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v13, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v13}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1216
    .local v13, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v18, "utf-8"

    move-object/from16 v0, v18

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1217
    const/16 v18, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1218
    const/16 v18, 0x0

    const-string v20, "app-ops"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    if-eqz v4, :cond_9

    .line 1221
    const/4 v9, 0x0

    .line 1222
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 1223
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AppOpsManager$PackageOps;

    .line 1224
    .local v14, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1225
    if-eqz v9, :cond_0

    .line 1226
    const/16 v18, 0x0

    const-string v20, "pkg"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1228
    :cond_0
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1229
    const/16 v18, 0x0

    const-string v20, "pkg"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1230
    const/16 v18, 0x0

    const-string v20, "n"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1232
    :cond_1
    const/16 v18, 0x0

    const-string v20, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1233
    const/16 v18, 0x0

    const-string v20, "n"

    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1234
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1235
    :try_start_3
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v18

    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v11

    .line 1238
    .local v11, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v11, :cond_6

    .line 1239
    const/16 v18, 0x0

    const-string v20, "p"

    iget-boolean v0, v11, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1243
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1244
    :try_start_4
    invoke-virtual {v14}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v12

    .line 1245
    .local v12, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 1246
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 1247
    .local v10, "op":Landroid/app/AppOpsManager$OpEntry;
    const/16 v18, 0x0

    const-string v20, "op"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    const/16 v18, 0x0

    const-string v20, "n"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1249
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v18

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1250
    const/16 v18, 0x0

    const-string v20, "m"

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    :cond_2
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v16

    .line 1253
    .local v16, "time":J
    const-wide/16 v20, 0x0

    cmp-long v18, v16, v20

    if-eqz v18, :cond_3

    .line 1254
    const/16 v18, 0x0

    const-string v20, "t"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1256
    :cond_3
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v16

    .line 1257
    const-wide/16 v20, 0x0

    cmp-long v18, v16, v20

    if-eqz v18, :cond_4

    .line 1258
    const/16 v18, 0x0

    const-string v20, "r"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    :cond_4
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    .line 1261
    .local v5, "dur":I
    if-eqz v5, :cond_5

    .line 1262
    const/16 v18, 0x0

    const-string v20, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    :cond_5
    const/16 v18, 0x0

    const-string v20, "op"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1245
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1209
    .end local v5    # "dur":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "lastPkg":Ljava/lang/String;
    .end local v10    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v13    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v14    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    .end local v16    # "time":J
    :catch_0
    move-exception v6

    .line 1210
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    const-string v18, "AppOps"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to write state: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1281
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 1241
    .restart local v7    # "i":I
    .restart local v9    # "lastPkg":Ljava/lang/String;
    .restart local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v13    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :cond_6
    const/16 v18, 0x0

    :try_start_6
    const-string v20, "p"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v13, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 1243
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1276
    .end local v7    # "i":I
    .end local v9    # "lastPkg":Ljava/lang/String;
    .end local v13    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v14    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :catch_1
    move-exception v6

    .line 1277
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_8
    const-string v18, "AppOps"

    const-string v20, "Failed to write state, restoring backup."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1280
    .end local v6    # "e":Ljava/io/IOException;
    :goto_4
    monitor-exit v19

    goto :goto_3

    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v15    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v18

    .line 1266
    .restart local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "lastPkg":Ljava/lang/String;
    .restart local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v13    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v14    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v15    # "stream":Ljava/io/FileOutputStream;
    :cond_7
    const/16 v18, 0x0

    :try_start_9
    const-string v20, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1222
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1268
    .end local v8    # "j":I
    .end local v11    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v12    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v14    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_8
    if-eqz v9, :cond_9

    .line 1269
    const/16 v18, 0x0

    const-string v20, "pkg"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1273
    .end local v7    # "i":I
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x0

    const-string v20, "app-ops"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1274
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4
.end method
