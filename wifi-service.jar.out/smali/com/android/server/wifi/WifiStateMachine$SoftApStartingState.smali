.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 11632
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 11635
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$30900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    .line 11636
    .local v1, "message":Landroid/os/Message;
    iget v3, v1, Landroid/os/Message;->what:I

    const v4, 0x20015

    if-ne v3, v4, :cond_5

    .line 11637
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 11639
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 11641
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "SoftApStartingState: config is null"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11643
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isQcaOldFrameworkLteCoex()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->startChannel:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 11644
    const-string v3, "WifiStateMachine"

    const-string v4, "Calling setChannelRange ---CMD_START_AP SoftApStartingState()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11645
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWlanSolution()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 11646
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->startChannel:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->endChannel:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v9}, Lcom/android/server/wifi/WifiStateMachine;->setChannelRange(III)V

    .line 11651
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$7400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x2001b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 11694
    :goto_0
    return-void

    .line 11660
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v4, "SoftApStartingState: config != null"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11662
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getSenseVersion()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_3

    .line 11663
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    if-ne v3, v8, :cond_2

    .line 11664
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->setHTCWifiAPConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    .line 11665
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iput v8, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 11666
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 11668
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 11669
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 11670
    .local v2, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateFromWifiApConfigStore(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v3, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 11671
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iput v9, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 11672
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iput v8, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 11673
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 11676
    .end local v2    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 11677
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->setHTCWifiAPConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    .line 11678
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iput v8, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 11679
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 11681
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 11682
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 11683
    .restart local v2    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateFromWifiApConfigStore(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v3, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 11684
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iput v9, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 11685
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iput v8, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 11686
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 11692
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11697
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v3, p1, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 11699
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 11753
    :goto_0
    return v1

    .line 11712
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$31200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    :goto_1
    move v1, v2

    .line 11753
    goto :goto_0

    .line 11715
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 11726
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateFromWifiApConfigStore(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V

    .line 11727
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11728
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hotspotType:I

    .line 11729
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 11731
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Softap config is null!"

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11732
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20017

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 11737
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v4, 0xd

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 11739
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 11740
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUloghotspotMaxUsers:I
    invoke-static {v3, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5702(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11741
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUlogHotspotDuration:J
    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$31302(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11742
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUlogHotspotStartTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$31402(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11744
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 11747
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v3, 0xe

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 11748
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$10100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$31700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 11699
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_2
        0x20017 -> :sswitch_3
        0x20018 -> :sswitch_0
        0x2001c -> :sswitch_1
        0x2001d -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20050 -> :sswitch_0
        0x20054 -> :sswitch_0
        0x20055 -> :sswitch_0
        0x2005a -> :sswitch_0
    .end sparse-switch
.end method
