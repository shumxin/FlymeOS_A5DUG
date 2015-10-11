.class Lcom/android/server/am/HtcAppErrorDialog;
.super Landroid/app/Dialog;
.source "HtcAppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_AUTO_REPORT:I = 0x2

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcAppErrorDialog"


# instance fields
.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mWindowTitle:Ljava/lang/String;

.field private final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v15, Lcom/android/server/am/HtcAppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/am/HtcAppErrorDialog$1;-><init>(Lcom/android/server/am/HtcAppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 52
    .local v10, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v15, "com.htc.feedback"

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 57
    .local v13, "res":Landroid/content/res/Resources;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;)Z

    move-result v2

    .line 59
    .local v2, "autoSend":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 60
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 61
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 62
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Application Error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    .line 63
    new-instance v15, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    .line 65
    move-object/from16 v0, p4

    iget-boolean v15, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v15, :cond_2

    .line 66
    const/16 v15, 0x7da

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    .line 71
    :goto_1
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "name":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    .line 77
    :goto_2
    const/4 v9, 0x0

    .local v9, "negativeBtnName":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .local v12, "positiveBtnName":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 78
    .local v4, "dlgMsg":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .local v8, "negativeBtnMsgId":I
    const/4 v11, 0x0

    .line 79
    .local v11, "positiveBtnMsgId":I
    const/4 v6, 0x0

    .line 80
    .local v6, "hasTwoBtns":Z
    const/4 v14, 0x0

    .line 81
    .local v14, "resId":I
    if-eqz v2, :cond_4

    const/4 v3, 0x2

    .line 84
    .local v3, "dismissMsgId":I
    :goto_3
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p4

    iget v15, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v15

    if-eqz v15, :cond_0

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_6

    const-string v15, "com.htc.feedback"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 88
    :cond_0
    const/4 v3, 0x0

    .line 89
    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 91
    const v15, 0x1040471

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 100
    :goto_4
    const v15, 0x1040478

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 101
    const/4 v11, 0x0

    .line 124
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const v16, 0x1040470

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v15, v4}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v15, v12, v11}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    .line 129
    if-eqz v6, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v15, v9, v8}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    .line 133
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    const-wide/32 v16, 0x493e0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v3, v0, v1}, Lcom/android/server/am/HtcErrorDialogBase;->sendMessageDelayed(IJ)V

    .line 135
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_6
    return-void

    .line 53
    .end local v2    # "autoSend":Z
    .end local v3    # "dismissMsgId":I
    .end local v4    # "dlgMsg":Ljava/lang/CharSequence;
    .end local v6    # "hasTwoBtns":Z
    .end local v7    # "name":Ljava/lang/CharSequence;
    .end local v8    # "negativeBtnMsgId":I
    .end local v9    # "negativeBtnName":Ljava/lang/CharSequence;
    .end local v11    # "positiveBtnMsgId":I
    .end local v12    # "positiveBtnName":Ljava/lang/CharSequence;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "resId":I
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .restart local v13    # "res":Landroid/content/res/Resources;
    goto/16 :goto_0

    .line 68
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "autoSend":Z
    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    goto/16 :goto_1

    .line 74
    :cond_3
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .restart local v7    # "name":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 81
    .restart local v4    # "dlgMsg":Ljava/lang/CharSequence;
    .restart local v6    # "hasTwoBtns":Z
    .restart local v8    # "negativeBtnMsgId":I
    .restart local v9    # "negativeBtnName":Ljava/lang/CharSequence;
    .restart local v11    # "positiveBtnMsgId":I
    .restart local v12    # "positiveBtnName":Ljava/lang/CharSequence;
    .restart local v14    # "resId":I
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 95
    .restart local v3    # "dismissMsgId":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 96
    const v15, 0x1040472

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 102
    :cond_6
    if-eqz v2, :cond_7

    .line 103
    const-string v15, "msg_app_crash_auto"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 104
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 105
    const-string v15, "btn_close"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 106
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 107
    const/4 v11, 0x2

    goto/16 :goto_5

    .line 109
    :cond_7
    const-string v15, "msg_app_crash"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 110
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 111
    const-string v15, "btn_dont_send"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 112
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 113
    const/4 v11, 0x0

    .line 116
    const-string v15, "btn_send_report"

    const-string v16, "string"

    const-string v17, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 117
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 118
    const/4 v8, 0x1

    .line 121
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 136
    :catch_1
    move-exception v5

    .line 137
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    invoke-virtual {v15, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 138
    const-string v15, "HtcAppErrorDialog"

    const-string v16, "Constructor()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAppErrorDialog;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAppErrorDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppErrorDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method private generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 18
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 193
    const/4 v8, 0x0

    .line 195
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    if-nez v12, :cond_0

    .line 197
    const/4 v12, 0x0

    monitor-exit v13

    .line 253
    :goto_0
    return-object v12

    .line 199
    :cond_0
    const/4 v3, 0x0

    .line 200
    .local v3, "dropboxTag":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 201
    .local v4, "entryTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "dropboxTag"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "dropboxTag"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dropboxTag":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 203
    .restart local v3    # "dropboxTag":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "entryTime"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "entryTime"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 205
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 206
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_0

    .line 254
    .end local v3    # "dropboxTag":Ljava/lang/String;
    .end local v4    # "entryTime":J
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 207
    .restart local v3    # "dropboxTag":Ljava/lang/String;
    .restart local v4    # "entryTime":J
    :cond_3
    const-wide/16 v14, 0x0

    cmp-long v12, v4, v14

    if-gtz v12, :cond_4

    .line 208
    const/4 v12, 0x0

    :try_start_1
    monitor-exit v13

    goto :goto_0

    .line 210
    :cond_4
    const/4 v11, 0x0

    .line 211
    .local v11, "tombstoneName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "tombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "tombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "tombstoneName":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 213
    .restart local v11    # "tombstoneName":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    .line 214
    .local v9, "mediaServerTombstoneName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "mediaServerTombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "mediaServerTombstoneName"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mediaServerTombstoneName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 216
    .restart local v9    # "mediaServerTombstoneName":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .line 217
    .local v7, "errorReportKey":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportKey"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [B

    if-eqz v12, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportKey"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v7, v0

    .line 219
    :cond_7
    const/4 v6, 0x0

    .line 220
    .local v6, "errorReportIv":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportIv"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, [B

    if-eqz v12, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "errorReportIv"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    move-object v0, v12

    check-cast v0, [B

    move-object v6, v0

    .line 222
    :cond_8
    const/4 v10, 0x0

    .line 223
    .local v10, "oomPid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "oomPid"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Integer;

    if-eqz v12, :cond_9

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v14, "oomPid"

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 227
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 230
    new-instance v2, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>()V

    .line 231
    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    if-eqz v12, :cond_a

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v12, v12, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    iput-object v12, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 236
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v8

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    const/4 v14, 0x0

    iput-object v14, v12, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 239
    if-eqz v8, :cond_e

    .line 240
    const-string v12, "dropboxTag"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 242
    const-string v12, "tombstoneName"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 244
    const-string v12, "mediaServerTombstoneName"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    :cond_c
    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    .line 246
    const-string v12, "errorReportKey"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 247
    const-string v12, "errorReportIv"

    invoke-virtual {v8, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 249
    :cond_d
    if-lez v10, :cond_e

    .line 250
    const-string v12, "oomPid"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    :cond_e
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    .line 150
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/am/HtcAppErrorDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/HtcAppErrorDialog;->mWindowType:I

    const/4 v3, 0x0

    const/16 v4, 0x110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;III)V

    .line 145
    :cond_0
    return-void
.end method
