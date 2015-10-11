.class Lcom/android/server/am/HtcAppNotRespondingDialog;
.super Landroid/app/Dialog;
.source "HtcAppNotRespondingDialog.java"


# static fields
.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field static final FORCE_CLOSE:I = 0x1

.field static final FORCE_CLOSE_AND_AUTO_REPORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HtcAppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_AUTO_REPORT:I = 0x5

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

.field private final mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

.field private mInit:Z

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mWindowTitle:Ljava/lang/String;

.field private final mWindowType:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 25
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "aboveSystem"    # Z

    .prologue
    .line 42
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v22, Lcom/android/server/am/HtcAppNotRespondingDialog$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/HtcAppNotRespondingDialog$1;-><init>(Lcom/android/server/am/HtcAppNotRespondingDialog;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    .line 45
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 47
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Application Not Responding: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowTitle:Ljava/lang/String;

    .line 48
    new-instance v22, Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBaseCallback:Lcom/android/server/am/HtcErrorDialogBase$Callback;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;-><init>(Landroid/content/Context;Lcom/android/server/am/HtcErrorDialogBase$Callback;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    .line 51
    if-eqz p5, :cond_4

    .line 52
    const/16 v22, 0x7da

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowType:I

    .line 59
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 61
    .local v16, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v22, "com.htc.feedback"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 66
    .local v19, "res":Landroid/content/res/Resources;
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/htc/server/report/error/HtcErrorReportUtils;->isAutoSend(Landroid/content/Context;)Z

    move-result v4

    .line 70
    .local v4, "autoSend":Z
    const/4 v13, 0x0

    .local v13, "negativeBtnName":Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .local v15, "neutralBtnName":Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .local v18, "positiveBtnName":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 71
    .local v5, "dlgMsg":Ljava/lang/CharSequence;
    const/4 v12, 0x0

    .local v12, "negativeBtnMsgId":I
    const/4 v14, 0x0

    .local v14, "neutralBtnMsgId":I
    const/16 v17, 0x0

    .line 72
    .local v17, "positiveBtnMsgId":I
    const/4 v7, 0x0

    .local v7, "hasNegativeBtn":Z
    const/4 v8, 0x0

    .local v8, "hasNeutralBtn":Z
    const/4 v9, 0x0

    .line 73
    .local v9, "hasPositiveBtn":Z
    const/16 v20, 0x0

    .line 75
    .local v20, "resId":I
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 78
    .local v10, "name1":Ljava/lang/CharSequence;
    :goto_2
    const/4 v11, 0x0

    .line 79
    .local v11, "name2":Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 81
    if-eqz v10, :cond_6

    .line 95
    :goto_3
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/HtcErrorReportManager;->isEnableHTCErrorReport(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/HtcErrorReportManager;->isCurrentUser(ILcom/android/server/am/ActivityManagerService;)Z

    move-result v22

    if-eqz v22, :cond_0

    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    const-string v22, "com.htc.feedback"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 100
    :cond_0
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 103
    :goto_4
    const/4 v11, 0x0

    .line 104
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 106
    if-eqz v10, :cond_a

    .line 107
    const v21, 0x1040474

    .line 123
    .local v21, "resid":I
    :goto_5
    if-eqz v11, :cond_d

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 127
    :goto_6
    const v22, 0x1040478

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 128
    const/16 v17, 0x1

    .line 129
    const/4 v9, 0x1

    .line 131
    const v22, 0x104047a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 132
    const/4 v12, 0x2

    .line 133
    const/4 v7, 0x1

    .line 164
    .end local v21    # "resid":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    const v23, 0x1040473

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/HtcErrorDialogBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/server/am/HtcErrorDialogBase;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/HtcErrorDialogBase;->setCancelable(Z)V

    .line 167
    if-eqz v7, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v12}, Lcom/android/server/am/HtcErrorDialogBase;->setNegativeButton(Ljava/lang/CharSequence;I)V

    .line 169
    :cond_1
    if-eqz v8, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v14}, Lcom/android/server/am/HtcErrorDialogBase;->setNeutralButton(Ljava/lang/CharSequence;I)V

    .line 171
    :cond_2
    if-eqz v9, :cond_3

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HtcErrorDialogBase;->setPositiveButton(Ljava/lang/CharSequence;I)V

    .line 174
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_8
    return-void

    .line 54
    .end local v4    # "autoSend":Z
    .end local v5    # "dlgMsg":Ljava/lang/CharSequence;
    .end local v7    # "hasNegativeBtn":Z
    .end local v8    # "hasNeutralBtn":Z
    .end local v9    # "hasPositiveBtn":Z
    .end local v10    # "name1":Ljava/lang/CharSequence;
    .end local v11    # "name2":Ljava/lang/CharSequence;
    .end local v12    # "negativeBtnMsgId":I
    .end local v13    # "negativeBtnName":Ljava/lang/CharSequence;
    .end local v14    # "neutralBtnMsgId":I
    .end local v15    # "neutralBtnName":Ljava/lang/CharSequence;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "positiveBtnMsgId":I
    .end local v18    # "positiveBtnName":Ljava/lang/CharSequence;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "resId":I
    :cond_4
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowType:I

    goto/16 :goto_0

    .line 62
    .restart local v16    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .restart local v19    # "res":Landroid/content/res/Resources;
    goto/16 :goto_1

    .line 75
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "autoSend":Z
    .restart local v5    # "dlgMsg":Ljava/lang/CharSequence;
    .restart local v7    # "hasNegativeBtn":Z
    .restart local v8    # "hasNeutralBtn":Z
    .restart local v9    # "hasPositiveBtn":Z
    .restart local v12    # "negativeBtnMsgId":I
    .restart local v13    # "negativeBtnName":Ljava/lang/CharSequence;
    .restart local v14    # "neutralBtnMsgId":I
    .restart local v15    # "neutralBtnName":Ljava/lang/CharSequence;
    .restart local v17    # "positiveBtnMsgId":I
    .restart local v18    # "positiveBtnName":Ljava/lang/CharSequence;
    .restart local v20    # "resId":I
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 83
    .restart local v10    # "name1":Ljava/lang/CharSequence;
    .restart local v11    # "name2":Ljava/lang/CharSequence;
    :cond_6
    move-object v10, v11

    .line 84
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 87
    :cond_7
    if-eqz v10, :cond_8

    .line 88
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 90
    :cond_8
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto/16 :goto_3

    .line 100
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 109
    :cond_a
    move-object v10, v11

    .line 110
    :try_start_2
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 111
    const v21, 0x1040476

    .restart local v21    # "resid":I
    goto/16 :goto_5

    .line 114
    .end local v21    # "resid":I
    :cond_b
    if-eqz v10, :cond_c

    .line 115
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 116
    const v21, 0x1040475

    .restart local v21    # "resid":I
    goto/16 :goto_5

    .line 118
    .end local v21    # "resid":I
    :cond_c
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 119
    const v21, 0x1040477

    .restart local v21    # "resid":I
    goto/16 :goto_5

    .line 123
    :cond_d
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 135
    .end local v21    # "resid":I
    :cond_e
    if-eqz v4, :cond_f

    .line 136
    const-string v22, "msg_app_anr_auto"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 137
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 138
    const-string v22, "btn_close"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 139
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 140
    const/16 v17, 0x4

    .line 141
    const/4 v9, 0x1

    .line 143
    const v22, 0x104047a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 144
    const/4 v12, 0x5

    .line 145
    const/4 v7, 0x1

    goto/16 :goto_7

    .line 147
    :cond_f
    const-string v22, "msg_app_anr"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 148
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 149
    const-string v22, "btn_dont_send"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 150
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 151
    const/16 v17, 0x1

    .line 152
    const/4 v9, 0x1

    .line 154
    const v22, 0x104047a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 155
    if-eqz v4, :cond_10

    const/4 v12, 0x5

    .line 156
    :goto_9
    const/4 v7, 0x1

    .line 158
    const-string v22, "btn_send_report"

    const-string v23, "string"

    const-string v24, "com.htc.feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 159
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 160
    const/4 v14, 0x3

    .line 161
    const/4 v8, 0x1

    goto/16 :goto_7

    .line 155
    :cond_10
    const/4 v12, 0x2

    goto :goto_9

    .line 175
    :catch_1
    move-exception v6

    .line 176
    .local v6, "e":Ljava/lang/Exception;
    const-string v22, "HtcAppNotRespondingDialog"

    const-string v23, "Constructor()"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8
.end method

.method static synthetic access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppNotRespondingDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppNotRespondingDialog;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/am/HtcAppNotRespondingDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/HtcAppNotRespondingDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method private generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 15
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v10, 0x0

    .line 254
    const/4 v7, 0x0

    .line 256
    .local v7, "intent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 257
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    if-nez v9, :cond_0

    .line 258
    monitor-exit v11

    move-object v9, v10

    .line 292
    :goto_0
    return-object v9

    .line 260
    :cond_0
    const/4 v2, 0x0

    .line 261
    .local v2, "dropboxTag":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 262
    .local v4, "entryTime":J
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "dropboxTag"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 263
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "dropboxTag"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "dropboxTag":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 264
    .restart local v2    # "dropboxTag":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "entryTime"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_2

    .line 265
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v12, "entryTime"

    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 266
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 267
    monitor-exit v11

    move-object v9, v10

    goto :goto_0

    .line 268
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v9, v4, v12

    if-gtz v9, :cond_4

    .line 269
    monitor-exit v11

    move-object v9, v10

    goto :goto_0

    .line 271
    :cond_4
    const/4 v6, 0x0

    .line 272
    .local v6, "errorReportKey":[B
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportKey"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, [B

    if-eqz v9, :cond_5

    .line 273
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportKey"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v6, v0

    .line 274
    :cond_5
    const/4 v3, 0x0

    .line 275
    .local v3, "errorReportIv":[B
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportIv"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, [B

    if-eqz v9, :cond_6

    .line 276
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->errorReportInfo:Landroid/util/ArrayMap;

    const-string v10, "errorReportIv"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v3, v0

    .line 279
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v9, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 280
    .local v8, "originalReceiver":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 281
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v7

    .line 282
    iget-object v9, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iput-object v8, v9, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 284
    if-eqz v7, :cond_7

    .line 285
    const-string v9, "dropboxTag"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    .line 287
    const-string v9, "errorReportKey"

    invoke-virtual {v7, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 288
    const-string v9, "errorReportIv"

    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 292
    :cond_7
    monitor-exit v11

    move-object v9, v7

    goto/16 :goto_0

    .line 293
    .end local v2    # "dropboxTag":Ljava/lang/String;
    .end local v3    # "errorReportIv":[B
    .end local v4    # "entryTime":J
    .end local v6    # "errorReportKey":[B
    .end local v8    # "originalReceiver":Landroid/content/ComponentName;
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-virtual {v0}, Lcom/android/server/am/HtcErrorDialogBase;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mInit:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mDlgBase:Lcom/android/server/am/HtcErrorDialogBase;

    iget-object v1, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowTitle:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/HtcAppNotRespondingDialog;->mWindowType:I

    const/4 v3, 0x0

    const/16 v4, 0x110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/HtcErrorDialogBase;->show(Ljava/lang/String;III)V

    .line 183
    :cond_0
    return-void
.end method
