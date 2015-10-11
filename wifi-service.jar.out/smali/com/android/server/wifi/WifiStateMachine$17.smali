.class Lcom/android/server/wifi/WifiStateMachine$17;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .prologue
    .line 6519
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-object p2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6528
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6529
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isEnableImeiSsid()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 6530
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isEnableImeiPassword()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->isEnableMdnPassword()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 6531
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "start wifi hotspot "

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 6537
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v5, "HTC transfer tool "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    const-string v5, "192.168.1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6539
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->resetDhcpConfig()V

    .line 6540
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v5, "start wifi hotspot for frisbee "

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 6546
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v5, v2, :cond_5

    :goto_0
    invoke-interface {v4, v2}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 6547
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6577
    :goto_1
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Soft AP start successful"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6578
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20016

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 6579
    :goto_2
    return-void

    :cond_5
    move v2, v3

    .line 6546
    goto :goto_0

    .line 6549
    :catch_0
    move-exception v0

    .line 6550
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6552
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 6559
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isEnableImeiSsid()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 6560
    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isEnableImeiPassword()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->isEnableMdnPassword()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 6562
    :cond_8
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isQcaOldFrameworkLteCoex()Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->startChannel:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eqz v2, :cond_9

    .line 6563
    const-string v2, "WifiStateMachine"

    const-string v3, "Calling setChannelRange ---startSoftApWithConfig()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6564
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWlanSolution()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 6565
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->startChannel:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->endChannel:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->setChannelRange(III)V

    .line 6569
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$17;->val$config:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 6571
    :catch_1
    move-exception v1

    .line 6572
    .local v1, "e1":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in softap re-start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6573
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$17;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20017

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2
.end method
