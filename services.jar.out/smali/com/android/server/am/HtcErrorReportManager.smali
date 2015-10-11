.class public Lcom/android/server/am/HtcErrorReportManager;
.super Ljava/lang/Object;
.source "HtcErrorReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcErrorReportManager$Log;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_FOR_FINALIZER_TIMEOUT:Ljava/lang/String; = "finalizer_timeout"

.field public static final EVENT_TYPE_FOR_HOME_RESTART:Ljava/lang/String; = "home_restart"

.field static final IS_SHIPPING_ROM:Z

.field public static final SYSTEM_CRASH_ENTRY:Ljava/lang/String; = "/data/system/error_report/last_crash_msg"

.field public static final SYSTEM_ERROR_REPORT_DIR:Ljava/lang/String; = "/data/system/error_report"

.field static final TAG:Ljava/lang/String;

.field static final htcDebugFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/am/HtcErrorReportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    .line 56
    invoke-static {}, Lcom/htc/server/report/error/ReportConfig;->isShippingRom()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/io/OutputStreamWriter;
    .param p2, "x2"    # Ljava/lang/Integer;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ProcessBuilder;
    .param p1, "x1"    # Ljava/io/OutputStreamWriter;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Z

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/OutputStreamWriter;I)V
    .locals 0
    .param p0, "x0"    # Ljava/io/OutputStreamWriter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->writeKernelLog(Ljava/io/OutputStreamWriter;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 13
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "report"    # Ljava/lang/String;
    .param p7, "logFile"    # Ljava/io/File;
    .param p8, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 244
    move-object/from16 v0, p9

    invoke-static {v0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p10, :cond_2

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p10

    invoke-static {v2, v0}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    :cond_2
    move-object v1, p0

    .line 254
    .local v1, "eventTypeString":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Lcom/android/server/am/HtcErrorReportManager;->isFinalizerTimeoutMessageInner(Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    const-string v1, "finalizer_timeout"

    .line 257
    :cond_3
    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0
.end method

.method private static addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V
    .locals 36
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "report"    # Ljava/lang/String;
    .param p7, "logFile"    # Ljava/io/File;
    .param p8, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "memoryLog"    # Ljava/lang/String;
    .param p11, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 267
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Begin---add error logs to dropbox"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/HtcErrorReportManager;->isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z

    move-result v20

    .line 273
    .local v20, "isSystemServer":Z
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/HtcErrorReportManager;->generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "dropboxTag":Ljava/lang/String;
    const-string v3, "HTC_APP_CRASH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTC_APP_ANR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTC_HOME_RESTART"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HTC_APP_NATIVE_CRASH"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    :cond_0
    invoke-static {v5}, Lcom/htc/server/report/up/HtcSystemUPLogger;->addErrorCount(Ljava/lang/String;)V

    .line 280
    :cond_1
    const-string v3, "dropbox"

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/DropBoxManager;

    .line 284
    .local v22, "dbox":Landroid/os/DropBoxManager;
    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 630
    :cond_2
    :goto_0
    return-void

    .line 287
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 292
    .local v6, "entryTime":J
    const-string v3, "native_crash"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    .line 293
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v3, v12, v13, v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v23

    .line 294
    .local v23, "tombstoneName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_9

    .line 295
    const-string v3, "mediaserver"

    const-wide/32 v12, 0x1b7740

    invoke-static {v3, v6, v7, v12, v13}, Lcom/android/server/am/HtcErrorReportManager;->getTombstone(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v24

    .line 304
    .local v24, "mediaServerTombstoneName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getSecretKey()[B

    move-result-object v8

    .line 305
    .local v8, "errorReportKey":[B
    invoke-static {}, Lcom/htc/server/report/error/ErrorReportPreference;->getIV()[B

    move-result-object v9

    .line 307
    .local v9, "errorReportIv":[B
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 308
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v3, "Type: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    if-eqz v20, :cond_b

    .line 310
    const-string v3, "Process: system_server\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :goto_2
    const-string v3, "Time: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    if-eqz p1, :cond_10

    .line 319
    monitor-enter p11

    .line 321
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 322
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "dropboxTag"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "entryTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 325
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "tombstoneName"

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_4
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 327
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "mediaServerTombstoneName"

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_5
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 329
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "errorReportKey"

    invoke-virtual {v3, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "errorReportIv"

    invoke-virtual {v3, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_6
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_7

    const-string v3, "crash"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p8, :cond_7

    const-string v3, "java.lang.OutOfMemoryError"

    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 334
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v4, "oomPid"

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v27, v0

    .line 338
    .local v27, "flags":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v33

    .line 339
    .local v33, "pm":Landroid/content/pm/IPackageManager;
    const-string v3, "Flags: 0x"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_c

    .line 342
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 343
    .local v32, "pkg":Ljava/lang/String;
    const-string v3, "Package: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    if-eqz v33, :cond_8

    .line 346
    const/4 v3, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v31

    .line 347
    .local v31, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v31, :cond_8

    .line 348
    const-string v3, " v"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 350
    const-string v3, " ("

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .end local v31    # "pi":Landroid/content/pm/PackageInfo;
    :cond_8
    :goto_4
    :try_start_3
    const-string v3, "\n"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 297
    .end local v8    # "errorReportKey":[B
    .end local v9    # "errorReportIv":[B
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "mediaServerTombstoneName":Ljava/lang/String;
    .end local v27    # "flags":I
    .end local v28    # "i":I
    .end local v32    # "pkg":Ljava/lang/String;
    .end local v33    # "pm":Landroid/content/pm/IPackageManager;
    :cond_9
    const/16 v24, 0x0

    .restart local v24    # "mediaServerTombstoneName":Ljava/lang/String;
    goto/16 :goto_1

    .line 299
    .end local v23    # "tombstoneName":Ljava/lang/String;
    .end local v24    # "mediaServerTombstoneName":Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    .line 300
    .restart local v23    # "tombstoneName":Ljava/lang/String;
    const/16 v24, 0x0

    .restart local v24    # "mediaServerTombstoneName":Ljava/lang/String;
    goto/16 :goto_1

    .line 312
    .restart local v8    # "errorReportKey":[B
    .restart local v9    # "errorReportIv":[B
    .restart local v14    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    const-string v3, "Process: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 354
    .restart local v27    # "flags":I
    .restart local v28    # "i":I
    .restart local v32    # "pkg":Ljava/lang/String;
    .restart local v33    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v26

    .line 355
    .local v26, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting package info: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 359
    .end local v26    # "e":Landroid/os/RemoteException;
    .end local v32    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v26

    .line 360
    .local v26, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Error in get Package:"

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    .line 363
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_17

    .line 364
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_d
    :goto_5
    and-int/lit8 v3, v27, 0x1

    if-eqz v3, :cond_e

    .line 391
    const-string v3, "System App: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v27, 0x1

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    :cond_e
    if-eqz v33, :cond_f

    .line 394
    :try_start_6
    const-string v3, "Installed By: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 401
    :cond_f
    :goto_7
    :try_start_7
    monitor-exit p11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 403
    .end local v27    # "flags":I
    .end local v28    # "i":I
    .end local v33    # "pm":Landroid/content/pm/IPackageManager;
    :cond_10
    if-eqz p3, :cond_11

    .line 404
    const-string v3, "Activity: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_11
    if-eqz p4, :cond_12

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_12

    if-eqz p1, :cond_12

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v3, v4, :cond_12

    .line 407
    const-string v3, "Parent-Process: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_12
    if-eqz p4, :cond_13

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_13

    .line 410
    const-string v3, "Parent-Activity: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_13
    if-eqz p5, :cond_14

    .line 413
    const-string v3, "Subject: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_14
    const-string v3, "Build: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v3, "Project Branch: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.project"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v3, "ro.build.buildline: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.buildline"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v3, "Changelist: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.changelist"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v3, "Release: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v3, "Number of hibernations: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.shutdown.resume.count"

    const-string v11, "0"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v3, "Time of resume from hibernation: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sys.shutdown.resume.timestamp"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v3, "Bootloader: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.bootloader"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v3, "Radio: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.baseband"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_15

    .line 427
    const-string v3, "Network: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.operator.alpha"

    const-string v11, "unknown"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_15
    const/16 v35, 0x0

    .line 437
    .local v35, "result":Landroid/content/Intent;
    if-eqz p1, :cond_16

    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v3, :cond_16

    const-string v3, "home_restart"

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    .line 438
    invoke-static/range {v3 .. v9}, Lcom/android/server/am/HtcErrorReportManager;->createIntentForLMKHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;J[B[B)Landroid/content/Intent;

    move-result-object v35

    .line 440
    :cond_16
    move-object/from16 v25, v35

    .line 444
    .local v25, "homeRestartIntent":Landroid/content/Intent;
    new-instance v10, Lcom/android/server/am/HtcErrorReportManager$1;

    move-object v11, v5

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p0

    move-object/from16 v19, p9

    move-object/from16 v21, p10

    invoke-direct/range {v10 .. v25}, Lcom/android/server/am/HtcErrorReportManager$1;-><init>(Ljava/lang/String;[B[BLjava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 625
    .local v10, "worker":Ljava/lang/Runnable;
    if-nez p1, :cond_1b

    .line 626
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 366
    .end local v10    # "worker":Ljava/lang/Runnable;
    .end local v25    # "homeRestartIntent":Landroid/content/Intent;
    .end local v35    # "result":Landroid/content/Intent;
    .restart local v27    # "flags":I
    .restart local v28    # "i":I
    .restart local v33    # "pm":Landroid/content/pm/IPackageManager;
    :cond_17
    const/16 v30, 0x0

    .line 368
    .local v30, "packageContext":Landroid/content/Context;
    :try_start_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v30

    .line 369
    if-eqz v30, :cond_d

    .line 370
    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    .line 371
    .local v34, "resources":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 372
    .local v2, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 373
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 374
    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 375
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_18

    .line 376
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 377
    .local v29, "label":Ljava/lang/String;
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 382
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    .end local v29    # "label":Ljava/lang/String;
    .end local v34    # "resources":Landroid/content/res/Resources;
    :catch_2
    move-exception v26

    .line 383
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting package label: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<ERROR>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 401
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v27    # "flags":I
    .end local v28    # "i":I
    .end local v30    # "packageContext":Landroid/content/Context;
    .end local v33    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v3

    monitor-exit p11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v3

    .line 379
    .restart local v2    # "configuration":Landroid/content/res/Configuration;
    .restart local v27    # "flags":I
    .restart local v28    # "i":I
    .restart local v30    # "packageContext":Landroid/content/Context;
    .restart local v33    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v34    # "resources":Landroid/content/res/Resources;
    :cond_18
    :try_start_a
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<UNKOWN>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 388
    .end local v2    # "configuration":Landroid/content/res/Configuration;
    .end local v30    # "packageContext":Landroid/content/Context;
    .end local v34    # "resources":Landroid/content/res/Resources;
    :cond_19
    :try_start_b
    const-string v3, "Application Label: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<MULTIPLE_PACKAGE>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 391
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 396
    :catch_3
    move-exception v26

    .line 397
    .local v26, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting installer package: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 398
    .end local v26    # "e":Landroid/os/RemoteException;
    :catch_4
    move-exception v26

    .line 399
    .local v26, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting installer package: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_7

    .line 628
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v27    # "flags":I
    .end local v28    # "i":I
    .end local v33    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "worker":Ljava/lang/Runnable;
    .restart local v25    # "homeRestartIntent":Landroid/content/Intent;
    .restart local v35    # "result":Landroid/content/Intent;
    :cond_1b
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error dump: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static canShowHtcDialog(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v0}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method private static checkTombstone(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p0, "tombstone"    # Ljava/io/File;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1160
    const/4 v4, 0x0

    .line 1161
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1162
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1164
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1166
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1168
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1169
    .local v2, "counter":I
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_4

    const/4 v9, 0x5

    if-ge v2, v9, :cond_4

    .line 1170
    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v9

    if-eqz v9, :cond_3

    .line 1171
    const/4 v9, 0x1

    .line 1179
    if-eqz v1, :cond_0

    .line 1180
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1185
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 1186
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1191
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 1192
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 1197
    .end local v2    # "counter":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_4
    return v9

    .line 1181
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "counter":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1182
    .local v3, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close BufferedReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1187
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1188
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close InputStreamReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1193
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1194
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close FileInputStream"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1173
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1179
    :cond_4
    if-eqz v1, :cond_5

    .line 1180
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1185
    :cond_5
    :goto_5
    if-eqz v7, :cond_6

    .line 1186
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1191
    :cond_6
    :goto_6
    if-eqz v5, :cond_7

    .line 1192
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 1197
    .end local v2    # "counter":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1181
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "counter":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "str":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 1182
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close BufferedReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1187
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 1188
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close InputStreamReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1193
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 1194
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close FileInputStream"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 1196
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1175
    .end local v2    # "counter":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "str":Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 1176
    .local v3, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_a
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Exception in check tombstone exist "

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1179
    if-eqz v0, :cond_9

    .line 1180
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 1185
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    .line 1186
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 1191
    :cond_a
    :goto_a
    if-eqz v4, :cond_8

    .line 1192
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_7

    .line 1193
    :catch_7
    move-exception v3

    .line 1194
    .local v3, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close FileInputStream"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1181
    .local v3, "e":Ljava/lang/Exception;
    :catch_8
    move-exception v3

    .line 1182
    .local v3, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close BufferedReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1187
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 1188
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "error when close InputStreamReader"

    invoke-static {v9, v10, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1178
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1179
    :goto_b
    if-eqz v0, :cond_b

    .line 1180
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 1185
    :cond_b
    :goto_c
    if-eqz v6, :cond_c

    .line 1186
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 1191
    :cond_c
    :goto_d
    if-eqz v4, :cond_d

    .line 1192
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 1195
    :cond_d
    :goto_e
    throw v9

    .line 1181
    :catch_a
    move-exception v3

    .line 1182
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close BufferedReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 1187
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 1188
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close InputStreamReader"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1193
    .end local v3    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v3

    .line 1194
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "error when close FileInputStream"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 1178
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "counter":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_b

    .line 1175
    .end local v2    # "counter":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_d
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v3

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "counter":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_8
.end method

.method private static final createIntentForLMKHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;J[B[B)Landroid/content/Intent;
    .locals 9
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "dropboxTag"    # Ljava/lang/String;
    .param p3, "entryTime"    # J
    .param p5, "errorReportKey"    # [B
    .param p6, "errorReportIv"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 734
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createIntentForLMKHomeRestart proc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", eventType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    if-nez p0, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-object v2

    .line 738
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 740
    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-lez v3, :cond_0

    .line 743
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.htc.feedback"

    const-string v5, "com.htc.feedback.reportagent.receiver.ReportAgentReceiver"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .local v0, "receiver":Landroid/content/ComponentName;
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 748
    .local v1, "report":Landroid/app/ApplicationErrorReport;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 749
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 750
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 751
    iput-wide p3, v1, Landroid/app/ApplicationErrorReport;->time:J

    .line 752
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 754
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .local v2, "result":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 756
    const-string v3, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 757
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 760
    const-string v3, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v3, "fromDropBox"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    const-string v3, "tag"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string v3, "time"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 764
    if-eqz p5, :cond_2

    if-eqz p6, :cond_2

    .line 765
    const-string v3, "errorReportKey"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 766
    const-string v3, "errorReportIv"

    invoke-virtual {v2, v3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 769
    :cond_2
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create intent tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 752
    .end local v2    # "result":Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 790
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .local v2, "entry":Ljava/io/File;
    const/4 v4, 0x0

    .line 792
    .local v4, "writer":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 794
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 795
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v5, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 802
    if-eqz v0, :cond_0

    .line 803
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 808
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 809
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    move-object v4, v5

    .line 814
    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return-void

    .line 804
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 805
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing BufferedReader br"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 810
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 811
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing FileWriter writer"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .line 813
    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .line 798
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 799
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in storing log entry message"

    invoke-static {v6, v7, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 802
    if-eqz v0, :cond_3

    .line 803
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 808
    :cond_3
    :goto_3
    if-eqz v4, :cond_2

    .line 809
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 810
    :catch_3
    move-exception v3

    .line 811
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing FileWriter writer"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 804
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 805
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Error in closing BufferedReader br"

    invoke-static {v6, v7, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 801
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 802
    :goto_4
    if-eqz v0, :cond_4

    .line 803
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 808
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 809
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 812
    :cond_5
    :goto_6
    throw v6

    .line 804
    :catch_5
    move-exception v3

    .line 805
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "Error in closing BufferedReader br"

    invoke-static {v7, v8, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 810
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 811
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "Error in closing FileWriter writer"

    invoke-static {v7, v8, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 801
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 798
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v5    # "writer":Ljava/io/FileWriter;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static dump(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileWriter"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 953
    sget-boolean v1, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v1, :cond_0

    .line 954
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "HtcFeedback is dumping status information"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    :try_start_0
    const-string v1, "\n----- DEVICE STATUS -----"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 957
    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V

    .line 958
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 959
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :goto_0
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "dumping error"

    invoke-static {v1, v2, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static dumpHomeRestart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V
    .locals 12
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "memoryLog"    # Ljava/lang/String;
    .param p4, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 947
    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpHomeRestart, eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v9, p2

    move-object v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTCInner(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;)V

    .line 949
    return-void
.end method

.method private static dumpPostInstalledHTCAppInfo(Landroid/content/Context;Ljava/io/OutputStreamWriter;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "fileWriter"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 1041
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1042
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 1045
    .local v6, "pkgInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v1, "<UNKNOWN>"

    .line 1048
    .local v1, "defaultStr":Ljava/lang/String;
    :try_start_0
    const-string v8, "\n----- POST-INSTALLED HTC APP -----\n"

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1050
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1051
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 1052
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1053
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_3

    .line 1050
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1056
    :cond_3
    invoke-static {v0}, Lcom/android/server/am/HtcErrorReportManager;->isPostInstalledApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1059
    iget-boolean v8, v0, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-eqz v8, :cond_2

    .line 1062
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, "installerPackageName":Ljava/lang/String;
    const-string v8, "PackageName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1065
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v8, :cond_5

    move-object v8, v1

    :goto_3
    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1066
    const-string v8, ",VersionName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1067
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object v8, v1

    :goto_4
    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1068
    const-string v8, ",VersionCode="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1069
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1070
    const-string v8, ",InstallerPackageName="

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1071
    if-nez v4, :cond_4

    move-object v4, v1

    .end local v4    # "installerPackageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1072
    const-string v8, "\n"

    invoke-virtual {p1, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1074
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 1075
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "IOException in dumpPostInstalledHTCAppInfo"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1065
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "i":I
    .restart local v4    # "installerPackageName":Ljava/lang/String;
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_1
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    .line 1067
    :cond_6
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1076
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i":I
    .end local v4    # "installerPackageName":Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v2

    .line 1077
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v9, "Exception in dumpPostInstalledHTCAppInfo"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/io/File;
    .locals 16
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 633
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v10, "sourceFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/misc/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".dbox_tmp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    .local v11, "targetFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 636
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 637
    .local v9, "os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 639
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x1

    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v8, v12, v0, v1}, Lcom/htc/server/report/error/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;Z[B[B)Ljava/io/OutputStream;

    move-result-object v9

    .line 643
    const/16 v12, 0x400

    new-array v2, v12, [B

    .line 645
    .local v2, "buf":[B
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    if-lez v3, :cond_0

    .line 646
    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 648
    .end local v2    # "buf":[B
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 649
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in encryptFile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 652
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 657
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 662
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 668
    :goto_4
    return-object v11

    .line 652
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "bytesRead":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 657
    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 662
    :goto_6
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 665
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 653
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 654
    .local v4, "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fis.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 658
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 659
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in os.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 663
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fos.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 666
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 653
    .end local v2    # "buf":[B
    .end local v3    # "bytesRead":I
    .local v4, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 654
    .local v4, "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fis.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 658
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 659
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in os.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 663
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v13, "IOException in fos.close()"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 651
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 652
    :goto_7
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 657
    :goto_8
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 662
    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 665
    :goto_a
    throw v12

    .line 653
    :catch_7
    move-exception v4

    .line 654
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v14, "IOException in fis.close()"

    invoke-static {v13, v14, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 658
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 659
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v14, "IOException in os.close()"

    invoke-static {v13, v14, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 663
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 664
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v14, "IOException in fos.close()"

    invoke-static {v13, v14, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 651
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 648
    :catch_a
    move-exception v4

    goto/16 :goto_1

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_b
    move-exception v4

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static generateTag(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 775
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_3

    .line 776
    :cond_0
    const-string v0, "crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native_crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "watchdog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "finalizer_timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "others"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    :cond_1
    const-string v0, "SYSTEM_CRASH"

    .line 785
    :goto_0
    return-object v0

    .line 779
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_3
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isHtcLauncher(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "home_restart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "native_crash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    :cond_4
    const-string v0, "HTC_HOME_RESTART"

    goto :goto_0

    .line 782
    :cond_5
    const-string v0, "finalizer_timeout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 783
    const-string v0, "HTC_APP_CRASH"

    goto :goto_0

    .line 785
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_APP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getReadableSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    const-wide/16 v2, 0x400

    .line 1029
    const-string v0, "K"

    .line 1030
    .local v0, "unit":Ljava/lang/String;
    div-long/2addr p0, v2

    .line 1031
    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 1032
    div-long/2addr p0, v2

    .line 1033
    const-string v0, "M"

    .line 1036
    :cond_0
    const-string v1, "%4d%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTombstone(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 15
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "targetTime"    # J
    .param p3, "timeRange"    # J

    .prologue
    .line 1102
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/tombstones/"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v10, "tombstoneDir":Ljava/io/File;
    const/4 v4, 0x0

    .line 1104
    .local v4, "fileName":Ljava/lang/String;
    new-instance v11, Lcom/android/server/am/HtcErrorReportManager$2;

    invoke-direct {v11}, Lcom/android/server/am/HtcErrorReportManager$2;-><init>()V

    invoke-virtual {v10, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1114
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 1116
    :try_start_0
    new-instance v11, Lcom/android/server/am/HtcErrorReportManager$3;

    invoke-direct {v11}, Lcom/android/server/am/HtcErrorReportManager$3;-><init>()V

    invoke-static {v5, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1129
    const/4 v1, 0x0

    .line 1130
    .local v1, "count":I
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v0, v6

    .line 1132
    .local v3, "f":Ljava/io/File;
    const/16 v11, 0xa

    if-ge v1, v11, :cond_2

    .line 1133
    add-int/lit8 v1, v1, 0x1

    .line 1138
    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-lez v11, :cond_1

    const-wide/16 v12, 0x0

    cmp-long v11, p3, v12

    if-lez v11, :cond_1

    .line 1139
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long v8, p1, v12

    .line 1140
    .local v8, "timeDiff":J
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-ltz v11, :cond_0

    cmp-long v11, v8, p3

    if-lez v11, :cond_1

    .line 1130
    .end local v8    # "timeDiff":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    invoke-static {v3, p0}, Lcom/android/server/am/HtcErrorReportManager;->checkTombstone(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1145
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1156
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "count":I
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    :goto_1
    return-object v4

    .line 1149
    :catch_0
    move-exception v2

    .line 1150
    .local v2, "e":Ljava/lang/ClassCastException;
    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "ClassCastException in sorting tombstone files"

    invoke-static {v11, v12, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1151
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 1152
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "error in checking tombstone files"

    invoke-static {v11, v12, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z
    .locals 6
    .param p0, "processUserId"    # I
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 1202
    monitor-enter p1

    .line 1203
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 1204
    .local v3, "userId":I
    if-ne p0, v3, :cond_0

    .line 1205
    const/4 v4, 0x1

    monitor-exit p1

    .line 1213
    .end local v3    # "userId":I
    :goto_1
    return v4

    .line 1203
    .restart local v3    # "userId":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1208
    .end local v3    # "userId":I
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_2

    .line 1211
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "The app is not running under the current user"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1208
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 68
    const-string v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "factoryTestStr":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 70
    .local v0, "factoryTest":I
    :goto_0
    if-eqz v0, :cond_2

    .line 71
    const/4 v2, 0x1

    .line 75
    .local v2, "profile_force_disable_error_report":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 76
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    .line 77
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "Disable Error Report by local property (profiler.force_disable_err_rpt=1)"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_2
    return v3

    .line 69
    .end local v0    # "factoryTest":I
    .end local v2    # "profile_force_disable_error_report":Z
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 73
    .restart local v0    # "factoryTest":I
    :cond_2
    const-string v4, "profiler.force_disable_err_rpt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2    # "profile_force_disable_error_report":Z
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "send_htc_error_report"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    .line 82
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    .line 83
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "Disable Error Report by uncheck error report"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 87
    :cond_4
    const-string v4, "com.htc.feedback"

    invoke-static {p0, v4}, Lcom/htc/server/report/error/HtcErrorReportUtils;->hasHtcSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 88
    sget-boolean v4, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v4, :cond_0

    .line 89
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v5, "Disable Error Report by UDove doesn\'t have htc signature"

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :cond_5
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public static isEnableHomeRestartReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 176
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->IS_SHIPPING_ROM:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isHtcLauncher(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget-boolean v0, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable Home Restart Report"

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFinalizerTimeoutMessageInner(Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 3
    .param p0, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 200
    const-string v0, ".finalize() timed out after "

    .line 201
    .local v0, "msgPattern":Ljava/lang/String;
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    const-string v2, ".finalize() timed out after "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v2, "[isFinalizerTimeoutMessage]: True"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x1

    .line 205
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 132
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHandledByHtc(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/content/Context;)Z
    .locals 2
    .param p0, "eventType"    # Ljava/lang/String;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "report"    # Ljava/lang/String;
    .param p7, "logFile"    # Ljava/io/File;
    .param p8, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p9, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-static {p9, p1}, Lcom/android/server/am/HtcErrorReportManager;->logMarketAppInfo(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 224
    const-string v1, "crash"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "anr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "native_crash"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "watchdog"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "others"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p9, v1}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 99
    if-nez p1, :cond_1

    move v7, v8

    .line 127
    :cond_0
    :goto_0
    return v7

    .line 103
    :cond_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    move v3, v7

    .line 104
    .local v3, "isSystemApp":Z
    :goto_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_9

    move v5, v7

    .line 105
    .local v5, "isUpdatedSystemApp":Z
    :goto_2
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_a

    move v2, v7

    .line 106
    .local v2, "isDataPreloadApp":Z
    :goto_3
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_b

    move v4, v7

    .line 107
    .local v4, "isUpdatedDataPreloadApp":Z
    :goto_4
    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    .line 108
    :cond_3
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-nez v9, :cond_0

    .line 110
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    :cond_4
    const/4 v1, 0x0

    .line 117
    .local v1, "installerPackageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 118
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :goto_5
    iget-boolean v9, p1, Landroid/content/pm/ApplicationInfo;->hasHtcSignature:Z

    if-eqz v9, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    :cond_5
    if-nez v5, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    invoke-static {p1}, Lcom/android/server/am/HtcErrorReportManager;->isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_7
    move v7, v8

    .line 127
    goto :goto_0

    .end local v1    # "installerPackageName":Ljava/lang/String;
    .end local v2    # "isDataPreloadApp":Z
    .end local v3    # "isSystemApp":Z
    .end local v4    # "isUpdatedDataPreloadApp":Z
    .end local v5    # "isUpdatedSystemApp":Z
    :cond_8
    move v3, v8

    .line 103
    goto :goto_1

    .restart local v3    # "isSystemApp":Z
    :cond_9
    move v5, v8

    .line 104
    goto :goto_2

    .restart local v5    # "isUpdatedSystemApp":Z
    :cond_a
    move v2, v8

    .line 105
    goto :goto_3

    .restart local v2    # "isDataPreloadApp":Z
    :cond_b
    move v4, v8

    .line 106
    goto :goto_4

    .line 119
    .restart local v1    # "installerPackageName":Ljava/lang/String;
    .restart local v4    # "isUpdatedDataPreloadApp":Z
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Fail to get installer"

    invoke-static {v9, v10, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static isHtcLauncher(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 169
    if-eqz p0, :cond_0

    const-string v0, "com.htc.launcher"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPostInstalledApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1084
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v0, v4

    .line 1085
    .local v0, "isPreloadAP":Z
    :goto_0
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    move v2, v4

    .line 1086
    .local v2, "isUpdatedPreloadAP":Z
    :goto_1
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v1, v4

    .line 1087
    .local v1, "isSystemApp":Z
    :goto_2
    iget v6, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_4

    move v3, v4

    .line 1089
    .local v3, "isUpdatedSystemApp":Z
    :goto_3
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 1098
    :cond_0
    :goto_4
    return v5

    .end local v0    # "isPreloadAP":Z
    .end local v1    # "isSystemApp":Z
    .end local v2    # "isUpdatedPreloadAP":Z
    .end local v3    # "isUpdatedSystemApp":Z
    :cond_1
    move v0, v5

    .line 1084
    goto :goto_0

    .restart local v0    # "isPreloadAP":Z
    :cond_2
    move v2, v5

    .line 1085
    goto :goto_1

    .restart local v2    # "isUpdatedPreloadAP":Z
    :cond_3
    move v1, v5

    .line 1086
    goto :goto_2

    .restart local v1    # "isSystemApp":Z
    :cond_4
    move v3, v5

    .line 1087
    goto :goto_3

    .line 1093
    .restart local v3    # "isUpdatedSystemApp":Z
    :cond_5
    if-eqz v3, :cond_6

    move v5, v4

    .line 1094
    goto :goto_4

    .line 1095
    :cond_6
    if-nez v1, :cond_0

    move v5, v4

    .line 1096
    goto :goto_4
.end method

.method private static isSystemServerProcrss(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p0, "process"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 187
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logMarketAppInfo(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 147
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    .line 148
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 149
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "installer":Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v3}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/server/am/HtcErrorReportManager;->isGMSPackageName(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    sget-object v4, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Market AP] processName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isSystem="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", installer="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", isHtcApp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v5}, Lcom/android/server/am/HtcErrorReportManager;->isHtcApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "installer":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_2
    return-void

    .line 153
    .restart local v1    # "installer":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Fail to get installer"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 163
    .end local v1    # "installer":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "proc or proc.info or pm is null"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;Z)V
    .locals 12
    .param p0, "processBuilder"    # Ljava/lang/ProcessBuilder;
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;
    .param p2, "lines"    # Ljava/lang/Integer;
    .param p3, "needPrintExceptionToLogfile"    # Z

    .prologue
    .line 856
    const/4 v3, 0x0

    .line 857
    .local v3, "input":Ljava/io/BufferedReader;
    if-nez p2, :cond_1

    const/4 v7, 0x0

    .line 858
    .local v7, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_0
    const/4 v5, 0x0

    .line 859
    .local v5, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 861
    .local v0, "count":I
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 863
    .local v6, "process":Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 864
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 865
    :goto_2
    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 867
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v4, "input":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 868
    if-eqz v7, :cond_2

    .line 869
    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 870
    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 871
    .local v8, "tmp":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v0, v9

    .line 873
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_0
    invoke-interface {v7, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    add-int/2addr v0, v9

    goto :goto_3

    .line 857
    .end local v0    # "count":I
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 876
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "process":Ljava/lang/Process;
    .restart local v7    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_2
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 887
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 889
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "process":Ljava/lang/Process;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :goto_4
    if-eqz p3, :cond_3

    .line 890
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 897
    :cond_3
    :goto_5
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 901
    :goto_6
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 903
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_7
    return-void

    .line 879
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "process":Ljava/lang/Process;
    :cond_5
    if-nez v7, :cond_7

    .line 880
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 897
    :try_start_a
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 901
    :goto_8
    if-eqz v4, :cond_6

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_9
    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    goto :goto_7

    .line 898
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 899
    .local v2, "e1":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 884
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_7
    :goto_a
    :try_start_c
    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 885
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    .line 896
    :catchall_0
    move-exception v9

    move-object v3, v4

    .line 897
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "process":Ljava/lang/Process;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :goto_b
    :try_start_d
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 901
    :goto_c
    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :cond_8
    :goto_d
    throw v9

    .line 897
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "process":Ljava/lang/Process;
    :cond_9
    :try_start_f
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 901
    :goto_e
    if-eqz v4, :cond_a

    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    goto :goto_7

    .line 898
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 899
    .restart local v2    # "e1":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 901
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v9

    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    goto :goto_7

    .line 892
    .end local v6    # "process":Ljava/lang/Process;
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 893
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_11
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "Error running process"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    .line 896
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    goto :goto_b

    .line 898
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 899
    .local v2, "e1":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v10, "flush exception"

    invoke-static {v9, v10}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 898
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 899
    .restart local v2    # "e1":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "flush exception"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 901
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "process":Ljava/lang/Process;
    :catch_7
    move-exception v9

    goto :goto_9

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v6    # "process":Ljava/lang/Process;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_8
    move-exception v9

    goto :goto_7

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v10

    goto :goto_d

    .line 887
    :catch_a
    move-exception v1

    goto/16 :goto_4

    .line 864
    .restart local v6    # "process":Ljava/lang/Process;
    :catch_b
    move-exception v9

    goto/16 :goto_2

    .line 863
    :catch_c
    move-exception v9

    goto/16 :goto_1

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :cond_a
    move-object v3, v4

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_7
.end method

.method private static logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 839
    const/4 v2, 0x0

    .line 840
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 842
    .local v4, "line":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 844
    .local v0, "count":I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 848
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 849
    .end local v0    # "count":I
    .end local v3    # "input":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 851
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 847
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 851
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "count":I
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v5

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_3

    .line 848
    .end local v0    # "count":I
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "writer"    # Ljava/io/OutputStreamWriter;
    .param p2, "lines"    # Ljava/lang/Integer;

    .prologue
    .line 817
    const/4 v2, 0x0

    .line 818
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 819
    .local v4, "line":Ljava/lang/String;
    if-nez p2, :cond_3

    const/16 v5, 0x800

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 821
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 823
    .local v0, "count":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 825
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 826
    const-string v5, "\n\n[[TRUNCATED]]"

    invoke-virtual {p1, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 830
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 834
    if-eqz v3, :cond_5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 836
    .end local v0    # "count":I
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-void

    .line 819
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 834
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_1

    .line 831
    .end local v0    # "count":I
    :catch_1
    move-exception v1

    .line 832
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error logging text file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "count":I
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_3

    .line 831
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    :cond_5
    move-object v2, v3

    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static sGetPartitionInfo(Ljava/io/OutputStreamWriter;)V
    .locals 8
    .param p0, "fileWriter"    # Ljava/io/OutputStreamWriter;

    .prologue
    .line 1002
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1004
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v2, "statFs":Landroid/os/StatFs;
    const-string v3, "Filesystem               Size     Used     Free   Blksize\n"

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1007
    const-string v3, "%-20s  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1009
    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1011
    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/HtcErrorReportManager;->getReadableSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1013
    const-string v3, "   "

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1026
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "statFs":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-void

    .line 1017
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v3, :cond_0

    .line 1018
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get the path of data directory"

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1021
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "IOException in sGetPartitionInfo"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1023
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v4, "Exception in sGetPartitionInfo"

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sIsDataPartitionReadOnly(Ljava/lang/String;Ljava/io/OutputStreamWriter;)V
    .locals 10
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileWriter"    # Ljava/io/OutputStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 966
    const/4 v3, 0x0

    .line 967
    .local v3, "isReadOnly":Z
    const/4 v1, 0x0

    .line 968
    .local v1, "foutput":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 970
    .local v4, "tmp":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".testReadOnly.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .end local v4    # "tmp":Ljava/io/File;
    .local v5, "tmp":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 976
    .end local v1    # "foutput":Ljava/io/FileOutputStream;
    .local v2, "foutput":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_4

    .line 978
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    move-object v1, v2

    .line 984
    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v1    # "foutput":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 985
    const-string v6, "\n/data read-only=true\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 990
    :goto_1
    if-eqz v4, :cond_1

    .line 991
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 995
    :cond_1
    :goto_2
    return-void

    .line 979
    .end local v1    # "foutput":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":Ljava/io/File;
    .restart local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    move-object v1, v2

    .line 981
    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v1    # "foutput":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 972
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 973
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t write: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 974
    const/4 v3, 0x1

    .line 976
    if-eqz v1, :cond_0

    .line 978
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 979
    :catch_2
    move-exception v0

    .line 980
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "sIsDataPartitionReadOnly error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 976
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_2

    .line 978
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 981
    :cond_2
    :goto_5
    throw v6

    .line 979
    :catch_3
    move-exception v0

    .line 980
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v8, "sIsDataPartitionReadOnly error: "

    invoke-static {v7, v8, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 987
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const-string v6, "\n/data read-only=false\n"

    invoke-virtual {p1, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 992
    :catch_4
    move-exception v0

    .line 993
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v7, "error: "

    invoke-static {v6, v7, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 976
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "tmp":Ljava/io/File;
    .restart local v5    # "tmp":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    goto :goto_4

    .line 972
    .end local v4    # "tmp":Ljava/io/File;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    goto :goto_3

    .end local v1    # "foutput":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":Ljava/io/File;
    .restart local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :cond_4
    move-object v4, v5

    .end local v5    # "tmp":Ljava/io/File;
    .restart local v4    # "tmp":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    .restart local v1    # "foutput":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static writeKernelLog(Ljava/io/OutputStreamWriter;I)V
    .locals 13
    .param p0, "writer"    # Ljava/io/OutputStreamWriter;
    .param p1, "lines"    # I

    .prologue
    .line 678
    const/4 v8, 0x0

    .line 679
    .local v8, "localSocket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 680
    .local v4, "input":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 681
    .local v7, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 683
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .local v9, "localSocket":Landroid/net/LocalSocket;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x5

    if-ge v2, v10, :cond_0

    .line 686
    :try_start_1
    new-instance v10, Landroid/net/LocalSocketAddress;

    const-string v11, "htc_dk"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v10, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v9, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 687
    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 692
    :cond_0
    invoke-virtual {v9}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v10

    if-nez v10, :cond_5

    .line 693
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Cannot connect to socket!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 717
    if-eqz v4, :cond_1

    .line 719
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 720
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 723
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 725
    :try_start_3
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    .line 726
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-object v8, v9

    .line 730
    .end local v2    # "i":I
    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    :cond_3
    :goto_3
    return-void

    .line 689
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v2    # "i":I
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :cond_4
    :try_start_4
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Connect socket fail, wait 1 second..."

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :catch_0
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 727
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 697
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_5
    :try_start_5
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_6

    .line 698
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 699
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[writeKernelLog] Connect!, fd = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_6
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 703
    .end local v4    # "input":Ljava/io/BufferedReader;
    .local v5, "input":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 704
    .local v0, "count":I
    :cond_7
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 706
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_7

    .line 707
    const-string v10, "\n\n[[TRUNCATED]]"

    invoke-virtual {p0, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 711
    :cond_8
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 717
    if-eqz v5, :cond_9

    .line 719
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 720
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 723
    :cond_9
    :goto_4
    if-eqz v9, :cond_f

    .line 725
    :try_start_8
    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V

    .line 726
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_a

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .line 727
    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_3

    .line 721
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_2
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 727
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_3

    .line 712
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 713
    .restart local v6    # "ioe":Ljava/io/IOException;
    :goto_5
    :try_start_9
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 717
    if-eqz v4, :cond_b

    .line 719
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 720
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 723
    :cond_b
    :goto_6
    if-eqz v8, :cond_3

    .line 725
    :try_start_b
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 726
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    .line 727
    :catch_5
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 721
    :catch_6
    move-exception v6

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 714
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 715
    .local v3, "ie":Ljava/lang/InterruptedException;
    :goto_7
    :try_start_c
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v3}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 717
    if-eqz v4, :cond_c

    .line 719
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 720
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_c

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close input stream success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 723
    :cond_c
    :goto_8
    if-eqz v8, :cond_3

    .line 725
    :try_start_e
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 726
    sget-boolean v10, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog] Close localSocket success!"

    invoke-static {v10, v11}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_3

    .line 727
    :catch_8
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 721
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v11, "[writeKernelLog]"

    invoke-static {v10, v11, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 717
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_9
    if-eqz v4, :cond_d

    .line 719
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 720
    sget-boolean v11, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v11, :cond_d

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog] Close input stream success!"

    invoke-static {v11, v12}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 723
    :cond_d
    :goto_a
    if-eqz v8, :cond_e

    .line 725
    :try_start_10
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 726
    sget-boolean v11, Lcom/android/server/am/HtcErrorReportManager;->htcDebugFlag:Z

    if-eqz v11, :cond_e

    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog] Close localSocket success!"

    invoke-static {v11, v12}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 727
    :cond_e
    :goto_b
    throw v10

    .line 721
    :catch_a
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog]"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 727
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_b
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    sget-object v11, Lcom/android/server/am/HtcErrorReportManager;->TAG:Ljava/lang/String;

    const-string v12, "[writeKernelLog]"

    invoke-static {v11, v12, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 717
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v2    # "i":I
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto :goto_9

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto :goto_9

    .line 714
    .end local v0    # "count":I
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_c
    move-exception v3

    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto :goto_7

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_d
    move-exception v3

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto :goto_7

    .line 712
    .end local v0    # "count":I
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_e
    move-exception v6

    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_5

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v0    # "count":I
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :catch_f
    move-exception v6

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_5

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v8    # "localSocket":Landroid/net/LocalSocket;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v9    # "localSocket":Landroid/net/LocalSocket;
    :cond_f
    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "localSocket":Landroid/net/LocalSocket;
    .restart local v8    # "localSocket":Landroid/net/LocalSocket;
    goto/16 :goto_3
.end method


# virtual methods
.method public isFinalizerTimeoutMessage(Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 1
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method
