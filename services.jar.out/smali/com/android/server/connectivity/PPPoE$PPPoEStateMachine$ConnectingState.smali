.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingState"
.end annotation


# instance fields
.field private interface_added:Z

.field private mCurrentConnectionSequence:I

.field final synthetic this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 556
    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 558
    iput-boolean v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->interface_added:Z

    .line 559
    iput v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->mCurrentConnectionSequence:I

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    .line 564
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 565
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setPPPoEState(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    .line 566
    iput-boolean v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->interface_added:Z

    .line 567
    iput v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->mCurrentConnectionSequence:I

    .line 568
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 667
    const-string v0, "PPPoE"

    const-string v1, "EXIT ConnectingState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    .line 669
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 572
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 660
    const/4 v2, 0x0

    .line 662
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 576
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->interface_added:Z

    if-nez v3, :cond_3

    .line 578
    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "PPPoE"

    const-string v4, "ignore stop_msg untill interface added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_1
    iget v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->mCurrentConnectionSequence:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 580
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    invoke-virtual {v3, v5}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 581
    .local v1, "m":Landroid/os/Message;
    iget v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->mCurrentConnectionSequence:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->mCurrentConnectionSequence:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 582
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-wide/16 v4, 0x258

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 585
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    const-string v3, "PPPoE"

    const-string v4, "requested stop for long time still no interface, take as failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->removeMessages(I)V
    invoke-static {v3, v5}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1400(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    .line 587
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1600(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 592
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_1
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1700(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in stopPPPoE() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->msgcount:I
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$1100(Lcom/android/server/connectivity/PPPoE;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_4

    .line 602
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :goto_2
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v4, "FAILURE"

    const-string v5, "691"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v3, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    .line 609
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    .line 611
    :cond_4
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in ConnectingState: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    :catch_1
    move-exception v0

    .line 604
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in stopPPPoE() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v2, :cond_0

    .line 617
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed for iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v5, v5, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reomved in ConnectingState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 624
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v4, "FAILURE"

    const-string v5, "691"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v3, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    .line 626
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE;->access$402(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)Ljava/lang/String;

    .line 627
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 620
    :catch_2
    move-exception v0

    .line 621
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in stopPPPoE() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4
    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in ConnectingState: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_6

    .line 633
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2200(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2300(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 635
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->interface_added:Z

    if-ne v3, v2, :cond_7

    .line 636
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in ConnectingState: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), interface comeup again?!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 640
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->interface_added:Z

    goto/16 :goto_0

    .line 644
    :sswitch_5
    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in ConnectingState: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v2, :cond_0

    .line 650
    :try_start_3
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 654
    :goto_4
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2400(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 651
    :catch_3
    move-exception v0

    .line 652
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in stopPPPoE() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 572
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_0
    .end sparse-switch
.end method
