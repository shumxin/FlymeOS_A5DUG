.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localForegroundNoti:Landroid/app/Notification;

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Landroid/app/Notification;III)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iput p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 428
    const-class v2, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 430
    .local v1, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 435
    :cond_0
    :try_start_0
    goto :goto_flyme_0

    const-string v2, "com.smithmicro.DM"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 436
    .local v14, "isOutlier":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-nez v2, :cond_2

    if-nez v14, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 448
    .local v11, "appName":Ljava/lang/CharSequence;
    if-nez v11, :cond_1

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_1
    const/4 v12, 0x0

    .line 453
    .local v12, "ctx":Landroid/content/Context;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 455
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v16, "runningIntent":Landroid/content/Intent;
    const-string v2, "package"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 461
    .local v15, "pi":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:color@system_notification_accent_color#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Landroid/app/Notification;->color:I

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, #android:string@app_running_notification_title#t

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, #android:string@app_running_notification_text#t

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v12, v3, v4, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    .end local v11    # "appName":Ljava/lang/CharSequence;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v15    # "pi":Landroid/app/PendingIntent;
    .end local v16    # "runningIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-nez v2, :cond_3

    if-nez v14, :cond_3

    .line 484
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "icon must be non-zero"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 490
    .end local v14    # "isOutlier":Z
    :catch_0
    move-exception v13

    .line 491
    .local v13, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Error showing notification for service"

    invoke-static {v2, v3, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad notification for startForeground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "appName":Ljava/lang/CharSequence;
    .restart local v12    # "ctx":Landroid/content/Context;
    .restart local v14    # "isOutlier":Z
    :catch_1
    move-exception v13

    .line 475
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    const/4 v3, 0x0

    iput v3, v2, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 486
    .end local v11    # "appName":Ljava/lang/CharSequence;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_flyme_0
    const/4 v2, 0x1

    new-array v9, v2, [I

    .line 487
    .local v9, "outId":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v10, v10, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
