.class Lcom/android/internal/telephony/SMSDispatcher$7;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2580
    const-string v8, "SMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OoO Intent Received: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2586
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2588
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->updateRadiotechForVerizon()V

    .line 2661
    :cond_0
    :goto_0
    return-void

    .line 2592
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.MARK_TO_SEND_QUEUED_SMS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2594
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiDetectDataActivityCallstateForMoSms()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2595
    invoke-static {}, Lcom/android/internal/telephony/PhoneStateUtil;->getDefault()Lcom/android/internal/telephony/PhoneStateUtil;

    move-result-object v4

    .line 2596
    .local v4, "psu":Lcom/android/internal/telephony/PhoneStateUtil;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateUtil;->markToSendSmsAfterStateReady()V

    goto :goto_0

    .line 2602
    .end local v4    # "psu":Lcom/android/internal/telephony/PhoneStateUtil;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.MARK_TO_CHECK_SERVICE_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2604
    const-string v8, "check"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z
    invoke-static {v8}, Lcom/android/internal/telephony/SMSDispatcher;->access$502(Z)Z

    .line 2612
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # invokes: Lcom/android/internal/telephony/SMSDispatcher;->isAirplaneModeOn()Z
    invoke-static {v8}, Lcom/android/internal/telephony/SMSDispatcher;->access$600(Lcom/android/internal/telephony/SMSDispatcher;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2613
    const-string v8, "SMSDispatcher"

    const-string v9, "Should not check service state here if airplane mode on"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2616
    :cond_3
    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mStateInServiceTimeStamp:J
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$700()J

    move-result-wide v8

    sget-wide v10, Lcom/android/internal/telephony/SMSDispatcher;->mNotInServiceFailTimestamp:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    const/4 v2, 0x1

    .line 2617
    .local v2, "changeToStateInServiceAfterFail":Z
    :goto_1
    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$500()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 2618
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v7

    .line 2619
    .local v7, "ss":I
    if-nez v7, :cond_0

    .line 2620
    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z
    invoke-static {v8}, Lcom/android/internal/telephony/SMSDispatcher;->access$502(Z)Z

    .line 2621
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.htc.intent.action.SEND_QUEUED_SMS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2622
    .local v5, "sendIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2616
    .end local v2    # "changeToStateInServiceAfterFail":Z
    .end local v5    # "sendIntent":Landroid/content/Intent;
    .end local v7    # "ss":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 2626
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2628
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 2629
    .local v6, "serviceState":Landroid/telephony/ServiceState;
    const-string v8, "SMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ss: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_6

    .line 2632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/internal/telephony/SMSDispatcher;->mStateInServiceTimeStamp:J
    invoke-static {v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$702(J)J

    .line 2635
    :cond_6
    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$500()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2636
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_0

    .line 2637
    const/4 v8, 0x0

    # setter for: Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z
    invoke-static {v8}, Lcom/android/internal/telephony/SMSDispatcher;->access$502(Z)Z

    .line 2638
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.htc.intent.action.SEND_QUEUED_SMS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2639
    .restart local v5    # "sendIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2646
    .end local v5    # "sendIntent":Landroid/content/Intent;
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.MONITOR_MOBILE_NETWORK_FOR_CB_IMMUTABLE_NOTIFICATION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2647
    const-string v8, "SMSDispatcher"

    const-string v9, "register receiver for ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2649
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2650
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$7;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$800(Lcom/android/internal/telephony/SMSDispatcher;)Landroid/content/BroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2654
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2655
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2656
    .local v1, "airplaneModeOn":Z
    const-string v9, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disable Airplane Mode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v1, :cond_9

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    if-nez v1, :cond_0

    .line 2658
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->resetCmasFingerPrintMap()V

    goto/16 :goto_0

    .line 2656
    :cond_9
    const/4 v8, 0x0

    goto :goto_2
.end method
