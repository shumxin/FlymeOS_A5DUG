.class Lcom/android/server/wifi/WifiController$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 385
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 516
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WifiController.handleMessage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 387
    :sswitch_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 388
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v9, v5}, Lcom/android/server/wifi/WifiController;->access$502(Lcom/android/server/wifi/WifiController;Z)Z

    .line 389
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v9, v5}, Lcom/android/server/wifi/WifiController;->access$602(Lcom/android/server/wifi/WifiController;Z)Z

    .line 390
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;)V

    .line 518
    :cond_0
    :goto_0
    :sswitch_1
    return v8

    .line 393
    :sswitch_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v9, v8}, Lcom/android/server/wifi/WifiController;->access$502(Lcom/android/server/wifi/WifiController;Z)Z

    .line 400
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v10, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)I

    move-result v10

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 402
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v9, v9, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_1

    .line 404
    const-string v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set idle timer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v11}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v12}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iget-object v12, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v9, v5, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const v9, 0x26005

    invoke-virtual {v5, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 413
    :sswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiController;->access$602(Lcom/android/server/wifi/WifiController;Z)Z

    .line 414
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->updateBatteryWorkSource()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$700(Lcom/android/server/wifi/WifiController;)V

    goto :goto_0

    .line 424
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 425
    .local v4, "pluggedType":I
    const-string v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "battery changed pluggedType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mScreenOff:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$500(Lcom/android/server/wifi/WifiController;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v10, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v10}, Lcom/android/server/wifi/WifiController;->access$800(Lcom/android/server/wifi/WifiController;)I

    move-result v10

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->shouldWifiStayAwake(I)Z
    invoke-static {v9, v4}, Lcom/android/server/wifi/WifiController;->access$900(Lcom/android/server/wifi/WifiController;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v12

    add-long v6, v10, v12

    .line 429
    .local v6, "triggerTime":J
    const-string v9, "WifiController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set idle timer for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleMillis:J
    invoke-static {v11}, Lcom/android/server/wifi/WifiController;->access$1000(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v5, v6, v7, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 433
    .end local v6    # "triggerTime":J
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mPluggedType:I
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiController;->access$802(Lcom/android/server/wifi/WifiController;I)I

    goto/16 :goto_0

    .line 443
    .end local v4    # "pluggedType":I
    :sswitch_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiController;->access$1102(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    .line 446
    :sswitch_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v9, "DEFERRED_TOGGLE ignored due to state change"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiController;->access$1200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :sswitch_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mEnableConfDialog:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 454
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 455
    .local v2, "labelName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x3070079

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x307007a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "body":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x30b0001

    invoke-direct {v5, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x3070078

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x307007b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/wifi/WifiController$DefaultState$4;

    invoke-direct {v10, p0}, Lcom/android/server/wifi/WifiController$DefaultState$4;-><init>(Lcom/android/server/wifi/WifiController$DefaultState;)V

    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x307007c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/wifi/WifiController$DefaultState$3;

    invoke-direct {v10, p0}, Lcom/android/server/wifi/WifiController$DefaultState$3;-><init>(Lcom/android/server/wifi/WifiController$DefaultState;)V

    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v9, Lcom/android/server/wifi/WifiController$DefaultState$2;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/WifiController$DefaultState$2;-><init>(Lcom/android/server/wifi/WifiController$DefaultState;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v9, Lcom/android/server/wifi/WifiController$DefaultState$1;

    invoke-direct {v9, p0}, Lcom/android/server/wifi/WifiController$DefaultState$1;-><init>(Lcom/android/server/wifi/WifiController$DefaultState;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 499
    .local v1, "confirmDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 500
    .local v3, "mDialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v9, 0x7d3

    invoke-virtual {v5, v9}, Landroid/view/Window;->setType(I)V

    .line 501
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 502
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mEnableConfDialog:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiController;->access$1302(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    .line 504
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "confirmDialog":Landroid/app/AlertDialog$Builder;
    .end local v2    # "labelName":Ljava/lang/String;
    .end local v3    # "mDialog":Landroid/app/AlertDialog;
    :cond_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v9, "Do not pop-out setwifienable dialog since it does not get response yet !"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiController;->access$2000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :sswitch_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v8, :cond_4

    move v5, v8

    :cond_4
    # setter for: Lcom/android/server/wifi/WifiController;->mQuickPowerOff:Z
    invoke-static {v9, v5}, Lcom/android/server/wifi/WifiController;->access$2102(Lcom/android/server/wifi/WifiController;Z)Z

    goto/16 :goto_0

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_1
        0x26002 -> :sswitch_0
        0x26003 -> :sswitch_2
        0x26004 -> :sswitch_4
        0x26005 -> :sswitch_3
        0x26006 -> :sswitch_1
        0x26007 -> :sswitch_1
        0x26008 -> :sswitch_1
        0x26009 -> :sswitch_1
        0x2600a -> :sswitch_1
        0x2600b -> :sswitch_6
        0x2600c -> :sswitch_5
        0x26014 -> :sswitch_7
        0x26064 -> :sswitch_8
    .end sparse-switch
.end method
