.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    }
.end annotation


# instance fields
.field private final HZ:J

.field private final LOCATION_PERMISSION:Ljava/lang/String;

.field private final MAX_NUM:I

.field private mAbnormalGpsCount:I

.field private mBlackList:Lorg/w3c/dom/Element;

.field private mCCUCpuUsage:F

.field private mCCUImportance:I

.field private mCCUThroughput:J

.field private mConfig:Lorg/w3c/dom/Document;

.field private mDetectPeriod:J

.field private mSleepTimeToMeasureCpu:J

.field private mTestFlag:Z

.field private mWhiteList:Lorg/w3c/dom/Element;

.field private maxWakeLockDuration:J

.field private minCPUusage:F

.field private minNetwork:J

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;)V
    .locals 18

    .prologue
    .line 388
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 339
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 340
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 341
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mTestFlag:Z

    .line 342
    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->LOCATION_PERMISSION:Ljava/lang/String;

    .line 343
    const/16 v11, 0x3e8

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->MAX_NUM:I

    .line 344
    const-wide/16 v12, 0x64

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->HZ:J

    .line 345
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAbnormalGpsCount:I

    .line 389
    const-wide/32 v12, 0x493e0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    .line 390
    const-wide/32 v12, 0x36ee80

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    .line 391
    const-wide/32 v12, 0x36ee80

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    .line 392
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    .line 393
    const-wide/16 v12, 0x2800

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    .line 394
    const/high16 v11, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    .line 395
    const-wide/16 v12, 0x5000

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    .line 396
    const/16 v11, 0x190

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    .line 398
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-nez v11, :cond_0

    .line 400
    const-string v7, "/etc/wld_config.xml"

    .line 401
    .local v7, "file_path":Ljava/lang/String;
    const-string v5, "/data/wld_config.xml"

    .line 404
    .local v5, "dest_path":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v10, "source":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v8, "input":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v4, "dest":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 408
    .local v9, "output":Ljava/io/OutputStream;
    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    .line 410
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 412
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "bytes_read":I
    if-lez v3, :cond_1

    .line 413
    const/4 v11, 0x0

    invoke-virtual {v9, v2, v11, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v2    # "buf":[B
    .end local v3    # "bytes_read":I
    .end local v4    # "dest":Ljava/io/File;
    .end local v8    # "input":Ljava/io/InputStream;
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v10    # "source":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 420
    .local v6, "e":Ljava/lang/Exception;
    const-string v11, "HtcWLD_v2.0.0"

    const-string v12, "[Warning] Fail to copy configuration file from /etc to /data."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v5    # "dest_path":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "file_path":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v11, "HtcWLD_v2.0.0"

    const-string v12, "[version] v2.0.0"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 415
    .restart local v2    # "buf":[B
    .restart local v3    # "bytes_read":I
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v5    # "dest_path":Ljava/lang/String;
    .restart local v7    # "file_path":Ljava/lang/String;
    .restart local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    .restart local v10    # "source":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    move-object/from16 v0, p1

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static {v0, v12, v13}, Lcom/android/server/power/HtcWakeLockDetector;->access$402(Lcom/android/server/power/HtcWakeLockDetector;J)J

    .line 416
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 417
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private RecordSemiUsageForAllCandidates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v3, "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    const/4 v0, 0x0

    .line 1049
    .local v0, "cid":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 1051
    .local v5, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1052
    .local v4, "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cid":I
    .local v1, "cid":I
    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->id:I

    .line 1053
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v7, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 1054
    iget v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    .line 1055
    iget v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    .line 1056
    iget-object v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    .line 1057
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1058
    .end local v1    # "cid":I
    .restart local v0    # "cid":I
    goto :goto_0

    .line 1059
    .end local v4    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    .end local v5    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_0
    return-object v3
.end method

.method private RecordSemiUsageForAllProcesses(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .local v4, "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    const/4 v1, 0x0

    .line 1066
    .local v1, "cid":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 1068
    .local v0, "candi":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    new-instance v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1069
    .local v5, "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "cid":I
    .local v2, "cid":I
    iput v1, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->id:I

    .line 1070
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 1071
    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    .line 1072
    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    .line 1073
    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    .line 1074
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1075
    .end local v2    # "cid":I
    .restart local v1    # "cid":I
    goto :goto_0

    .line 1076
    .end local v0    # "candi":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v5    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    :cond_0
    return-object v4
.end method

.method private checkAbnormalForCrazyCpuUsage(Ljava/util/List;)Ljava/util/List;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    if-nez v40, :cond_1

    .line 753
    :cond_0
    const/16 v40, 0x0

    .line 958
    :goto_0
    return-object v40

    .line 756
    :cond_1
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, " "

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, "    # Check abnormal process for crazy CPU usage case."

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v12, "force_stop_id_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, "begin_sys_stat":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->RecordSemiUsageForAllProcesses(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v27

    .line 765
    .local v27, "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "    Sleep "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "ms to get CPU/Net usage"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_1
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, "    Sleep end ... Start analyze"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v40

    if-nez v40, :cond_3

    .line 777
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    .line 958
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v40

    goto :goto_0

    .line 768
    :catch_0
    move-exception v9

    .line 769
    .local v9, "e":Ljava/lang/Exception;
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, "Error Cannot sleep"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 781
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v11

    .line 782
    .local v11, "end_sys_stat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v0, v6, v11}, Lcom/android/server/power/HtcWakeLockDetector;->access$1100(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F

    move-result v33

    .line 785
    .local v33, "sys_cpu_usage":F
    const/16 v38, 0x0

    .line 786
    .local v38, "wakelocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    .line 787
    .local v14, "held_wl_time_threshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v41

    monitor-enter v41

    .line 788
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;

    move-result-object v38

    .line 789
    monitor-exit v41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    const/16 v32, -0x1

    .line 792
    .local v32, "suid":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v22, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 795
    .local v8, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    add-int/lit8 v32, v32, 0x1

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v41, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static/range {v40 .. v41}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v10

    .line 798
    .local v10, "end_proc_stat":Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    .line 800
    .local v31, "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 801
    .local v5, "begin_proc_stat":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    if-eqz v11, :cond_4

    .line 807
    const-string v25, ""

    .line 808
    .local v25, "pkg_name":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    if-lez v40, :cond_6

    .line 810
    iget-object v4, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v30, v4, v18

    .line 812
    .local v30, "str":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_5

    .line 813
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 815
    :cond_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 810
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 789
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "begin_proc_stat":Ljava/lang/String;
    .end local v8    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v10    # "end_proc_stat":Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v20    # "len$":I
    .end local v22    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;>;"
    .end local v25    # "pkg_name":Ljava/lang/String;
    .end local v30    # "str":Ljava/lang/String;
    .end local v31    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    .end local v32    # "suid":I
    :catchall_0
    move-exception v40

    :try_start_2
    monitor-exit v41
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v40

    .line 819
    .restart local v5    # "begin_proc_stat":Ljava/lang/String;
    .restart local v8    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .restart local v10    # "end_proc_stat":Ljava/lang/String;
    .restart local v22    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;>;"
    .restart local v25    # "pkg_name":Ljava/lang/String;
    .restart local v31    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    .restart local v32    # "suid":I
    :cond_6
    iget-object v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-gt v0, v1, :cond_4

    .line 824
    const-string v40, ""

    iget-object v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v25

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_4

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v10, v6, v11}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v26

    .line 831
    .local v26, "proc_cpu_usage":F
    const/16 v40, 0x0

    cmpg-float v40, v26, v40

    if-ltz v40, :cond_4

    .line 837
    const/16 v16, 0x0

    .line 838
    .local v16, "hold_wl_flag":Z
    if-eqz v38, :cond_8

    .line 840
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 842
    .local v39, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    move/from16 v40, v0

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    .line 843
    const/16 v16, 0x1

    .line 850
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v39    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_8
    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v40

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    move-wide/from16 v42, v0

    sub-long v36, v40, v42

    .line 851
    .local v36, "tx":J
    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v40

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    move-wide/from16 v42, v0

    sub-long v28, v40, v42

    .line 852
    .local v28, "rx":J
    add-long v34, v36, v28

    .line 854
    .local v34, "throughput":J
    const/16 v24, -0x1

    .line 855
    .local v24, "pkg_id":I
    const/4 v13, 0x0

    .line 856
    .local v13, "handle_flag":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    .line 858
    .local v23, "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    add-int/lit8 v24, v24, 0x1

    .line 859
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 861
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    add-float v40, v40, v26

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    .line 862
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v40, v0

    add-long v40, v40, v36

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    .line 863
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v40, v0

    add-long v40, v40, v28

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    .line 864
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v40, v0

    add-long v40, v40, v34

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    .line 865
    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v40, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v40, v0

    :goto_4
    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    .line 866
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_c

    const/16 v40, 0x1

    :goto_5
    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    .line 867
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 869
    const/4 v13, 0x1

    .line 874
    .end local v23    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    :cond_a
    if-nez v13, :cond_4

    .line 876
    new-instance v21, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    const/16 v40, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 877
    .local v21, "new_pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->id:I

    .line 878
    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->uid:I

    .line 879
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    .line 880
    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    .line 881
    move-wide/from16 v0, v36

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    .line 882
    move-wide/from16 v0, v28

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    .line 883
    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    .line 884
    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    .line 885
    move/from16 v0, v16

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    .line 886
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 865
    .end local v21    # "new_pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    .restart local v23    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v40, v0

    goto :goto_4

    :cond_c
    move/from16 v40, v16

    .line 866
    goto :goto_5

    .line 890
    .end local v5    # "begin_proc_stat":Ljava/lang/String;
    .end local v8    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v10    # "end_proc_stat":Ljava/lang/String;
    .end local v13    # "handle_flag":Z
    .end local v16    # "hold_wl_flag":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    .end local v24    # "pkg_id":I
    .end local v25    # "pkg_name":Ljava/lang/String;
    .end local v26    # "proc_cpu_usage":F
    .end local v28    # "rx":J
    .end local v31    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    .end local v34    # "throughput":J
    .end local v36    # "tx":J
    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_2

    .line 892
    const-string v19, "         "

    .line 893
    .local v19, "indent":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    .line 895
    .restart local v23    # "pkg":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, " "

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "    pkg: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Uid: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->uid:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Importance: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ")"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "System CPU usage: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Process CPU usage : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "TX = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "   RX = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "Held wakelock over "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " ms: "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_13

    const-string v40, "true"

    :goto_7
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-ltz v40, :cond_f

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_10

    :cond_f
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-nez v40, :cond_16

    .line 909
    :cond_10
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package founded: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-ltz v40, :cond_14

    .line 911
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "CPU usage "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "% >= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "%"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_11
    :goto_8
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Held wakelock over "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ms: false"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v7, 0x1

    .line 922
    .local v7, "can_kill":Z
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipByProcessImportance(I)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 924
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package skipped: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Importance "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ") < "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ")"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v7, 0x0

    .line 936
    :cond_12
    :goto_9
    if-eqz v7, :cond_e

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v40

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 940
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package force stopped: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 903
    .end local v7    # "can_kill":Z
    :cond_13
    const-string v40, "false"

    goto/16 :goto_7

    .line 913
    :cond_14
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_11

    .line 914
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Throughput "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " bytes >= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " bytes"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 929
    .restart local v7    # "can_kill":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    move-object/from16 v40, v0

    const-string v41, "enable"

    invoke-interface/range {v40 .. v41}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v41, "true"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 931
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package skipped: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Monitor only."

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 946
    .end local v7    # "can_kill":Z
    :cond_16
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Package is normal: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "CPU usage "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "% "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v43, v0

    cmpl-float v40, v40, v43

    if-lez v40, :cond_17

    const-string v40, ">= "

    :goto_a
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v42, v0

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "%"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "Throughput "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " bytes "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v46, v0

    cmp-long v40, v44, v46

    if-lez v40, :cond_18

    const-string v40, ">= "

    :goto_b
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " bytes"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "Held wakelock over "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " ms: "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_19

    const-string v40, "true"

    :goto_c
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 947
    :cond_17
    const-string v40, "< "

    goto/16 :goto_a

    .line 949
    :cond_18
    const-string v40, "< "

    goto :goto_b

    .line 951
    :cond_19
    const-string v40, "false"

    goto :goto_c
.end method

.method private checkAbnormalForGps(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 681
    :cond_0
    const/16 v16, 0x0

    .line 747
    :goto_0
    return-object v16

    .line 684
    :cond_1
    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, " "

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, "    # Check abnormal process for GPS case."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-wide/32 v14, 0x1d4c0

    .line 688
    .local v14, "sleep_time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v16 .. v17}, Lcom/android/server/power/HtcWakeLockDetector;->access$302(Lcom/android/server/power/HtcWakeLockDetector;I)I

    .line 690
    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    Sleep "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms to get the count of non GPS fix"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, "    Sleep end ... Start analyze"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v7, "force_stop_id_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v16

    if-nez v16, :cond_3

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    .line 747
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_0

    .line 693
    .end local v7    # "force_stop_id_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    .line 694
    .local v6, "e":Ljava/lang/Exception;
    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, "Error Cannot sleep"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 707
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "force_stop_id_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    long-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x40dd4c0000000000L    # 30000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    .line 708
    .local v5, "critical_count":I
    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 709
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v16

    move/from16 v0, v16

    if-lt v0, v5, :cond_a

    .line 711
    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    Non GPS fix count ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") is not smaller than critical count ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 716
    .local v4, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget-object v12, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    .line 717
    .local v12, "pkg_list":[Ljava/lang/String;
    if-eqz v12, :cond_5

    array-length v0, v12

    move/from16 v16, v0

    if-lez v16, :cond_5

    .line 719
    const/4 v2, 0x0

    .line 720
    .local v2, "access_flag":Z
    const-string v13, ""

    .line 721
    .local v13, "pkg_name":Ljava/lang/String;
    move-object v3, v12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_4
    if-ge v9, v10, :cond_7

    aget-object v11, v3, v9

    .line 723
    .local v11, "pkg":Ljava/lang/String;
    if-nez v2, :cond_6

    const-string v16, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    :cond_6
    const/4 v2, 0x1

    .line 724
    :goto_5
    if-eqz v2, :cond_9

    .line 725
    move-object v13, v11

    .line 730
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_5

    .line 732
    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 734
    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    ==== Abnormal process force stopped: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") ===="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 723
    .restart local v11    # "pkg":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 721
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 742
    .end local v2    # "access_flag":Z
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pkg_list":[Ljava/lang/String;
    .end local v13    # "pkg_name":Ljava/lang/String;
    :cond_a
    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    No abnormal founded (NonFirstFixCount:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " < "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), do nothing"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkAbnormalForWakeLock(Ljava/util/List;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 523
    :cond_0
    const/4 v5, 0x0

    .line 675
    :goto_0
    return-object v5

    .line 526
    :cond_1
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "    # Check abnormal process for wakelock case."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v20, "force_stop_id_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v29, 0x0

    .line 533
    .local v29, "wakelocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 534
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;

    move-result-object v29

    .line 535
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    const/16 v35, 0x0

    .line 538
    .local v35, "wl_count":I
    if-eqz v29, :cond_2

    .line 539
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 542
    :cond_2
    if-lez v35, :cond_f

    .line 544
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    There are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wakelocks held over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v13

    .line 548
    .local v13, "begin_sys_stat":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->RecordSemiUsageForAllCandidates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v23

    .line 549
    .local v23, "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$000(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v14

    .line 552
    .local v14, "begin_satellite_count":J
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    Sleep "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms to get CPU/Net usage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :goto_1
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "    Sleep end ... Start analyze"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v5

    if-nez v5, :cond_4

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    .line 675
    .end local v13    # "begin_sys_stat":Ljava/lang/String;
    .end local v14    # "begin_satellite_count":J
    .end local v23    # "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0

    .line 535
    .end local v35    # "wl_count":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 555
    .restart local v13    # "begin_sys_stat":Ljava/lang/String;
    .restart local v14    # "begin_satellite_count":J
    .restart local v23    # "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    .restart local v35    # "wl_count":I
    :catch_0
    move-exception v17

    .line 556
    .local v17, "e":Ljava/lang/Exception;
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "Error Cannot sleep"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 568
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v19

    .line 569
    .local v19, "end_sys_stat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$000(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v6

    sub-long v30, v6, v14

    .line 570
    .local v30, "total_satellite":J
    const-string v36, "        "

    .line 571
    .local v36, "wl_indent":Ljava/lang/String;
    const/16 v27, 0x0

    .line 572
    .local v27, "suid":I
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 574
    .local v34, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 576
    .local v16, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    if-ne v5, v6, :cond_5

    .line 579
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    wl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v18

    .line 583
    .local v18, "end_proc_stat":Ljava/lang/String;
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    .line 585
    .local v26, "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    .line 586
    .local v4, "begin_proc_stat":Ljava/lang/String;
    if-eqz v4, :cond_6

    if-eqz v18, :cond_6

    if-eqz v13, :cond_6

    if-nez v19, :cond_8

    .line 588
    :cond_6
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skip because of empty stat!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v4    # "begin_proc_stat":Ljava/lang/String;
    .end local v16    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v18    # "end_proc_stat":Ljava/lang/String;
    .end local v26    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    :cond_7
    add-int/lit8 v27, v27, 0x1

    .line 667
    goto/16 :goto_3

    .line 592
    .restart local v4    # "begin_proc_stat":Ljava/lang/String;
    .restart local v16    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .restart local v18    # "end_proc_stat":Ljava/lang/String;
    .restart local v26    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    :cond_8
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Package name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Process name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   Uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Importance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    move-object/from16 v0, v26

    iget-boolean v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    if-eqz v5, :cond_a

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 606
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "There is GPS request, do nothing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 609
    :cond_9
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "No GPS request, continue to check CPU/network usage."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v5, v13, v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1100(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F

    move-result v28

    .line 616
    .local v28, "sys_cpu_usage":F
    const/4 v5, 0x0

    cmpg-float v5, v28, v5

    if-gez v5, :cond_b

    .line 617
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skip because fail to get cpu usage!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 620
    :cond_b
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "System CPU usage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v4, v0, v13, v1}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    .line 625
    .local v9, "proc_cpu_usage":F
    const/4 v5, 0x0

    cmpg-float v5, v9, v5

    if-gez v5, :cond_c

    .line 626
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skip because fail to get cpu usage of process!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 629
    :cond_c
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Process CPU usage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    move-wide/from16 v38, v0

    sub-long v32, v6, v38

    .line 633
    .local v32, "tx":J
    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    move-wide/from16 v38, v0

    sub-long v24, v6, v38

    .line 634
    .local v24, "rx":J
    add-long v10, v32, v24

    .line 635
    .local v10, "throughput":J
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "TX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   RX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    cmpg-float v5, v9, v5

    if-gtz v5, :cond_d

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    cmp-long v5, v10, v6

    if-gtz v5, :cond_d

    .line 639
    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipAbnormalWakeLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJI)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 644
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 646
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL released: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal package force stopped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 654
    :cond_d
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Wakelock is reasonable to hold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_e

    .line 657
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Because CPU usage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_e
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    cmp-long v5, v10, v6

    if-lez v5, :cond_5

    .line 661
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Because Throughput "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 672
    .end local v4    # "begin_proc_stat":Ljava/lang/String;
    .end local v9    # "proc_cpu_usage":F
    .end local v10    # "throughput":J
    .end local v13    # "begin_sys_stat":Ljava/lang/String;
    .end local v14    # "begin_satellite_count":J
    .end local v16    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v18    # "end_proc_stat":Ljava/lang/String;
    .end local v19    # "end_sys_stat":Ljava/lang/String;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "semi_usages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;>;"
    .end local v24    # "rx":J
    .end local v26    # "su":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    .end local v27    # "suid":I
    .end local v28    # "sys_cpu_usage":F
    .end local v30    # "total_satellite":J
    .end local v32    # "tx":J
    .end local v34    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .end local v36    # "wl_indent":Ljava/lang/String;
    :cond_f
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    There is no wakelock held over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkIfInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "wl_name"    # Ljava/lang/String;
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "proc_name"    # Ljava/lang/String;

    .prologue
    .line 1245
    const/4 v7, 0x0

    .line 1247
    .local v7, "result":Z
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-eqz v8, :cond_0

    .line 1249
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v9, "enable"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1252
    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v9, "item"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1253
    .local v6, "items":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1255
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1256
    .local v2, "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_6

    .line 1258
    const-string v8, "name"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1259
    .local v4, "item_name":Ljava/lang/String;
    const-string v8, "category"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1260
    .local v3, "item_category":Ljava/lang/String;
    const-string v8, "operation"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1261
    .local v5, "item_operation":Ljava/lang/String;
    const-string v0, ""

    .line 1263
    .local v0, "candidate_name":Ljava/lang/String;
    const-string v8, "package"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1264
    move-object v0, p2

    .line 1273
    :goto_1
    const-string v8, "equal"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1274
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1275
    const/4 v7, 0x1

    .line 1296
    .end local v0    # "candidate_name":Ljava/lang/String;
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "item_category":Ljava/lang/String;
    .end local v4    # "item_name":Ljava/lang/String;
    .end local v5    # "item_operation":Ljava/lang/String;
    .end local v6    # "items":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_2
    return v7

    .line 1265
    .restart local v0    # "candidate_name":Ljava/lang/String;
    .restart local v1    # "idx":I
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    .restart local v3    # "item_category":Ljava/lang/String;
    .restart local v4    # "item_name":Ljava/lang/String;
    .restart local v5    # "item_operation":Ljava/lang/String;
    .restart local v6    # "items":Lorg/w3c/dom/NodeList;
    :cond_1
    const-string v8, "process"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1266
    move-object v0, p3

    goto :goto_1

    .line 1267
    :cond_2
    const-string v8, "wakelock"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1268
    move-object v0, p1

    goto :goto_1

    .line 1270
    :cond_3
    move-object v0, p2

    goto :goto_1

    .line 1277
    :cond_4
    const-string v8, "contain"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1278
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1279
    const/4 v7, 0x1

    goto :goto_2

    .line 1282
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1283
    const/4 v7, 0x1

    goto :goto_2

    .line 1253
    .end local v0    # "candidate_name":Ljava/lang/String;
    .end local v3    # "item_category":Ljava/lang/String;
    .end local v4    # "item_name":Ljava/lang/String;
    .end local v5    # "item_operation":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z
    .locals 6
    .param p1, "wl"    # Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .prologue
    .line 1216
    const/4 v3, 0x0

    .line 1218
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    .line 1220
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "enable"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1224
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1225
    .local v2, "items":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1227
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 1228
    .local v1, "item":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_1

    iget-object v4, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1229
    const/4 v3, 0x1

    .line 1241
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return v3

    .line 1225
    .restart local v0    # "idx":I
    .restart local v1    # "item":Lorg/w3c/dom/Element;
    .restart local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    .end local v0    # "idx":I
    .end local v1    # "item":Lorg/w3c/dom/Element;
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkIfSkipAbnormalWakeLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJI)Z
    .locals 9
    .param p1, "wl_name"    # Ljava/lang/String;
    .param p2, "pkg_name"    # Ljava/lang/String;
    .param p3, "proc_name"    # Ljava/lang/String;
    .param p4, "proc_cpu"    # F
    .param p5, "throughput"    # J
    .param p7, "importance"    # I

    .prologue
    .line 1190
    const/4 v2, 0x0

    .line 1191
    .local v2, "result":Z
    move-object v1, p1

    .line 1192
    .local v1, "name":Ljava/lang/String;
    const-string v0, "        "

    .line 1194
    .local v0, "indent":Ljava/lang/String;
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal WL founded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal package founded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CPU usage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Throughput "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1201
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal WL skipped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal package skipped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "It\'s in ignore list."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v2, 0x1

    .line 1207
    :cond_0
    return v2
.end method

.method private checkIfSkipByProcessImportance(I)Z
    .locals 1
    .param p1, "importance"    # I

    .prologue
    .line 1212
    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "permission_name"    # Ljava/lang/String;

    .prologue
    .line 1374
    const/4 v4, 0x0

    .line 1376
    .local v4, "result":Z
    const/4 v2, 0x0

    .line 1377
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$1900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1379
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$1900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1380
    .local v3, "pkg_info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1382
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1387
    .end local v3    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v2, :cond_1

    .line 1389
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 1391
    aget-object v5, v2, v1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1393
    const/4 v4, 0x1

    .line 1399
    .end local v1    # "idx":I
    :cond_1
    return v4

    .line 1377
    .restart local v3    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1389
    .end local v3    # "pkg_info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "idx":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;
    .locals 23
    .param p1, "threshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    const/4 v11, 0x0

    .line 1008
    .local v11, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    move-object/from16 v16, v11

    .line 1038
    .end local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    .local v16, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    :goto_0
    return-object v16

    .line 1010
    .end local v16    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    .restart local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1011
    .local v19, "numWakeLocks":I
    if-lez v19, :cond_2

    .line 1012
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .restart local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1500(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    .line 1017
    .local v22, "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1018
    .local v20, "now":J
    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mAcquiredTime:J

    .line 1019
    .local v12, "WLacquiredTime":J
    sub-long v14, v20, v12

    .line 1020
    .local v14, "WLheldTime":J
    cmp-long v3, v14, p1

    if-ltz v3, :cond_1

    .line 1022
    new-instance v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mFlags:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-direct/range {v2 .. v10}, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;-><init>(Lcom/android/server/power/HtcWakeLockDetector;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    .line 1029
    .local v2, "tmp":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    wl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1032
    .end local v2    # "tmp":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    .end local v12    # "WLacquiredTime":J
    .end local v14    # "WLheldTime":J
    .end local v20    # "now":J
    :catch_0
    move-exception v17

    .line 1033
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "HtcWLD_v2.0.0"

    const-string v4, "Error copy wakelock"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v17    # "e":Ljava/lang/Exception;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v22    # "wl":Lcom/android/server/power/HtcWakeLockDetector$WakeLock;
    :cond_2
    move-object/from16 v16, v11

    .line 1038
    .end local v11    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    .restart local v16    # "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/HtcWakeLockDetector$WakeLock;>;"
    goto/16 :goto_0
.end method

.method private getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "ele_name"    # Ljava/lang/String;
    .param p2, "tag_name"    # Ljava/lang/String;

    .prologue
    .line 1301
    const/4 v3, 0x0

    .line 1303
    .local v3, "result":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-eqz v4, :cond_0

    .line 1305
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1306
    .local v2, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1308
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1309
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1310
    move-object v3, v0

    .line 1316
    .end local v0    # "element":Lorg/w3c/dom/Element;
    .end local v1    # "idx":I
    .end local v2    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_0
    return-object v3

    .line 1306
    .restart local v0    # "element":Lorg/w3c/dom/Element;
    .restart local v1    # "idx":I
    .restart local v2    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 8

    .prologue
    .line 1336
    const/4 v5, 0x0

    .line 1339
    .local v5, "result":Landroid/location/Location;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1340
    .local v1, "gps_enabled":Z
    const/4 v2, 0x0

    .line 1341
    .local v2, "gps_loc":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 1342
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 1344
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 1345
    .local v3, "net_enabled":Z
    const/4 v4, 0x0

    .line 1346
    .local v4, "net_loc":Landroid/location/Location;
    if-eqz v3, :cond_1

    .line 1347
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 1350
    :cond_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    .line 1352
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1353
    move-object v5, v2

    .line 1369
    .end local v1    # "gps_enabled":Z
    .end local v2    # "gps_loc":Landroid/location/Location;
    .end local v3    # "net_enabled":Z
    .end local v4    # "net_loc":Landroid/location/Location;
    :cond_2
    :goto_0
    return-object v5

    .line 1355
    .restart local v1    # "gps_enabled":Z
    .restart local v2    # "gps_loc":Landroid/location/Location;
    .restart local v3    # "net_enabled":Z
    .restart local v4    # "net_loc":Landroid/location/Location;
    :cond_3
    move-object v5, v4

    goto :goto_0

    .line 1360
    :cond_4
    if-eqz v2, :cond_5

    move-object v5, v2

    .line 1361
    :cond_5
    if-eqz v4, :cond_2

    move-object v5, v4

    goto :goto_0

    .line 1363
    .end local v1    # "gps_enabled":Z
    .end local v2    # "gps_loc":Landroid/location/Location;
    .end local v3    # "net_enabled":Z
    .end local v4    # "net_loc":Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 1366
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "HtcWLD_v2.0.0"

    const-string v7, "[Warning] Fail to get location."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcessInfoBy(ILjava/util/List;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;"
        }
    .end annotation

    .prologue
    .line 1081
    .local p2, "running_procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const-string v4, "no_name"

    .line 1082
    .local v4, "proc_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1083
    .local v1, "importance":I
    if-eqz p2, :cond_1

    .line 1085
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1087
    .local v2, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 1088
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1089
    iget v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 1095
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    new-instance v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 1096
    .local v3, "proc_info":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;
    iput-object v4, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->name:Ljava/lang/String;

    .line 1097
    iput v1, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->importance:I

    .line 1098
    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->strImportance:Ljava/lang/String;

    .line 1100
    return-object v3
.end method

.method private impCode2Str(I)Ljava/lang/String;
    .locals 1
    .param p1, "importance_code"    # I

    .prologue
    .line 1321
    const-string v0, ""

    .line 1322
    .local v0, "result":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1331
    :goto_0
    return-object v0

    .line 1324
    :sswitch_0
    const-string v0, "foreground"

    goto :goto_0

    .line 1325
    :sswitch_1
    const-string v0, "visible"

    goto :goto_0

    .line 1326
    :sswitch_2
    const-string v0, "perceptible"

    goto :goto_0

    .line 1327
    :sswitch_3
    const-string v0, "service"

    goto :goto_0

    .line 1328
    :sswitch_4
    const-string v0, "background"

    goto :goto_0

    .line 1329
    :sswitch_5
    const-string v0, "empty"

    goto :goto_0

    .line 1322
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x82 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method private isDeviceIdle()Z
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1300(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNonIdleMessage()V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1300(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    const-string v0, "HtcWLD_v2.0.0"

    const-string v1, "    Screen on, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    const-string v0, "HtcWLD_v2.0.0"

    const-string v1, "    Audio is active, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    .local p2, "force_stop_id_list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 966
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    .line 968
    .local v0, "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    iget v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 969
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    .end local v0    # "cand":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v2, p1

    .line 977
    :cond_2
    return-object v2
.end method


# virtual methods
.method public loadConfiguration()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v7, 0x0

    .line 1120
    iput-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 1121
    const-string v5, "WhiteList"

    const-string v6, "items"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    .line 1122
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-nez v5, :cond_0

    .line 1123
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] White list is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    iput-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 1126
    const-string v5, "BlackList"

    const-string v6, "items"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    .line 1127
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-nez v5, :cond_1

    .line 1128
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] Black list is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_1
    const-string v5, "Setting"

    const-string v6, "tab"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1133
    .local v4, "setting":Lorg/w3c/dom/Element;
    if-eqz v4, :cond_4

    .line 1135
    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1136
    .local v3, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1138
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1139
    .local v2, "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_2

    .line 1141
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DetectPeriod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1142
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    .line 1136
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    :cond_3
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SleepTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1144
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    goto :goto_1

    .line 1151
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] Setting from configuration is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_5
    const-string v5, "Criteria"

    const-string v6, "tab"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1154
    .local v0, "criteria":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_c

    .line 1156
    const-string v5, "item"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1157
    .restart local v3    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .restart local v1    # "idx":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_d

    .line 1159
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 1160
    .restart local v2    # "item":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_6

    .line 1162
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HeldTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1163
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    .line 1157
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1164
    :cond_7
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CpuUsage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1165
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    goto :goto_3

    .line 1166
    :cond_8
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Throughput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1167
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    goto :goto_3

    .line 1168
    :cond_9
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CCUCpuUsage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1169
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    goto :goto_3

    .line 1170
    :cond_a
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CCUImportance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1171
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    goto :goto_3

    .line 1172
    :cond_b
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CCUThroughput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1173
    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    goto/16 :goto_3

    .line 1180
    .end local v1    # "idx":I
    .end local v2    # "item":Lorg/w3c/dom/Element;
    .end local v3    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_c
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] Criteria from configuration is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_d
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Configuration] DetectPeriod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SleepTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HeldTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CpuUsage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Throughput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CCUCpuUsage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CCUImportance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CCUThroughput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-void
.end method

.method public loadXmlDocument(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1106
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v3, "file":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 1108
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1109
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 1110
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    .line 1111
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcWLD_v2.0.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Warning] Fail to open file \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 30

    .prologue
    .line 430
    :try_start_0
    const-string v25, "HtcWLD_v2.0.0"

    const-string v26, "<< Wake Lock Detector >>"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v8, Ljava/io/File;

    const-string v25, "/data/wld_config.xml"

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v8, "config":Ljava/io/File;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static/range {v25 .. v25}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-lez v25, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v25, v0

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v26

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mConfigLastModified:J
    invoke-static/range {v25 .. v27}, Lcom/android/server/power/HtcWakeLockDetector;->access$402(Lcom/android/server/power/HtcWakeLockDetector;J)J

    .line 437
    const-string v25, "/data/wld_config.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V

    .line 441
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v25

    if-nez v25, :cond_1

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    .line 511
    :goto_0
    const-string v25, "HtcWLD_v2.0.0"

    const-string v26, " "

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;
    invoke-static/range {v25 .. v25}, Lcom/android/server/power/HtcWakeLockDetector;->access$800(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    .end local v8    # "config":Ljava/io/File;
    :goto_1
    return-void

    .line 449
    .restart local v8    # "config":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 450
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 451
    .local v15, "running_processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v25

    const/16 v26, 0x3e8

    invoke-virtual/range {v25 .. v26}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v16

    .line 452
    .local v16, "running_services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_6

    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_6

    .line 458
    const/4 v5, 0x0

    .line 459
    .local v5, "candidate_id":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v7, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    move v6, v5

    .end local v5    # "candidate_id":I
    .local v6, "candidate_id":I
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 462
    .local v11, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v25, v0

    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v26, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Lcom/android/server/power/HtcWakeLockDetector;->access$600(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v14

    .line 463
    .local v14, "proc_stat":Ljava/lang/String;
    const-wide/16 v18, 0x0

    .line 464
    .local v18, "running_time":J
    const-wide/16 v20, 0x0

    .line 465
    .local v20, "start_time":J
    if-eqz v14, :cond_3

    .line 467
    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 468
    .local v24, "stats":[Ljava/lang/String;
    const/16 v17, 0x15

    .line 469
    .local v17, "start_time_idx":I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 470
    aget-object v25, v24, v17

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 472
    :cond_2
    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v20

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    div-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-long v0, v0

    move-wide/from16 v22, v0

    .line 473
    .local v22, "start_time_ms":J
    sub-long v18, v12, v22

    .line 477
    .end local v17    # "start_time_idx":I
    .end local v22    # "start_time_ms":J
    .end local v24    # "stats":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v26, v0

    cmp-long v25, v18, v26

    if-lez v25, :cond_7

    .line 479
    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    .line 480
    .local v4, "candidate":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "candidate_id":I
    .restart local v5    # "candidate_id":I
    iput v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    .line 481
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    .line 482
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    .line 483
    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    .line 484
    iget v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    .line 485
    iget-object v0, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    .line 486
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->heldTime:J

    .line 487
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "candidate":Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;
    :goto_3
    move v6, v5

    .line 490
    .end local v5    # "candidate_id":I
    .restart local v6    # "candidate_id":I
    goto/16 :goto_2

    .line 492
    .end local v11    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v14    # "proc_stat":Ljava/lang/String;
    .end local v18    # "running_time":J
    .end local v20    # "start_time":J
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_5

    .line 494
    const-string v25, "HtcWLD_v2.0.0"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    There are "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " processes held over "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForWakeLock(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 499
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForCrazyCpuUsage(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_0

    .line 503
    :cond_5
    const-string v25, "HtcWLD_v2.0.0"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    There is no process held over "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ms, do nothing"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 515
    .end local v6    # "candidate_id":I
    .end local v7    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    .end local v8    # "config":Ljava/io/File;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "now":J
    .end local v15    # "running_processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v16    # "running_services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catch_0
    move-exception v9

    .line 516
    .local v9, "e":Ljava/lang/Exception;
    const-string v25, "HtcWLD_v2.0.0"

    const-string v26, "Exception on main runnable function."

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 508
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "config":Ljava/io/File;
    .restart local v12    # "now":J
    .restart local v15    # "running_processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v16    # "running_services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_6
    :try_start_1
    const-string v25, "HtcWLD_v2.0.0"

    const-string v26, "    There is no running process, do nothing"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .restart local v6    # "candidate_id":I
    .restart local v7    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v14    # "proc_stat":Ljava/lang/String;
    .restart local v18    # "running_time":J
    .restart local v20    # "start_time":J
    :cond_7
    move v5, v6

    .end local v6    # "candidate_id":I
    .restart local v5    # "candidate_id":I
    goto/16 :goto_3
.end method
