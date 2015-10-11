.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 472
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 474
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 478
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getResetRetryCounterScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->HtcCustomzie_KTResetRetrySequence()V

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v4, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 484
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v4, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mScreenActionFlag:Z

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 488
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPollwithoutResetPollStatus()V

    .line 490
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    .line 540
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 493
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v3, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 495
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v4, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mScreenActionFlag:Z

    .line 496
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 499
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPollwithoutResetPollStatus()V

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    goto :goto_0

    .line 502
    :cond_3
    const-string v5, "com.android.internal.telephony.data-reconnect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 503
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reconnect alarm. Previous state was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 504
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 505
    :cond_4
    const-string v5, "com.android.internal.telephony.data-restart-trysetup"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v4, "Restart trySetup alarm"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 507
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 508
    :cond_5
    const-string v5, "com.android.internal.telephony.data-stall"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 509
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 510
    :cond_6
    const-string v5, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 511
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 512
    :cond_7
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 513
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 515
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8

    move v3, v4

    :cond_8
    iput-boolean v3, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 516
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 518
    if-eqz v2, :cond_1

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->requestSetPsState(I)V

    goto/16 :goto_0

    .line 522
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_9
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 523
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    move v1, v4

    .line 526
    .local v1, "enabled":Z
    :goto_1
    if-nez v1, :cond_a

    .line 529
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v3, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 531
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsWifiConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "enabled":Z
    :cond_b
    move v1, v3

    .line 523
    goto :goto_1

    .line 535
    :cond_c
    const-string v4, "com.htc.intent.action.ACTION_IMS_STATUS_NOTIFY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v5, "status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsRCSImsEnabled:Z

    .line 537
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsRCSImsEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsRCSImsEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
