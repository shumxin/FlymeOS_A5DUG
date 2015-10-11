.class Lcom/android/server/wifi/WifiStateMachine$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0xb

    .line 1621
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1623
    const-string v7, "start_safe_channel"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1624
    .local v4, "startSafeChannel":I
    const-string v7, "end_safe_channel"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1626
    .local v3, "endSafeChannel":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->startChannel:I
    invoke-static {v7, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 1627
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->endChannel:I
    invoke-static {v7, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 1629
    const-string v7, "WifiStateMachine"

    const-string v8, "Received WIFI_CHANNELS_CHANGED broadcast--WifiStateMachine"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start_safe_ch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end_safe_ch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    .line 1633
    .local v5, "state":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v6

    .line 1637
    .local v6, "wifistate":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWlanSolution()I

    move-result v7

    if-ne v7, v12, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isQcaOldFrameworkLteCoex()Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1638
    const-string v7, "wifi.hotspot.coex.preferCH11"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1639
    if-gt v4, v10, :cond_0

    if-lt v3, v10, :cond_0

    .line 1640
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->startChannel:I
    invoke-static {v7, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$002(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 1645
    :cond_0
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restarting soft ap if needed. WifiAp state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/16 v7, 0xd

    if-ne v5, v7, :cond_2

    .line 1647
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWlanSolution()I

    move-result v7

    if-ne v7, v12, :cond_2

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isQcaOldFrameworkLteCoex()Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$200(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1648
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getSapAutoChannelSelection()I

    move-result v0

    .line 1649
    .local v0, "autochannel":I
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autochannel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    if-ne v11, v0, :cond_2

    .line 1651
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getSapOperatingChannel()I

    move-result v2

    .line 1652
    .local v2, "currentChannel":I
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentChannel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    if-ltz v2, :cond_2

    if-lt v2, v4, :cond_1

    if-le v2, v3, :cond_2

    .line 1658
    :cond_1
    if-lt v2, v11, :cond_2

    const/16 v7, 0xe

    if-gt v2, v7, :cond_2

    .line 1659
    const-string v7, "WifiStateMachine"

    const-string v8, "Operating on restricted channel. Restarting softAp--wifiStateMachine"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->restartSoftApIfOn()V
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 1667
    .end local v0    # "autochannel":I
    .end local v2    # "currentChannel":I
    :cond_2
    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 1668
    const/4 v1, 0x0

    .line 1669
    .local v1, "bitmap":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->getWlanSolution()I

    move-result v7

    if-eq v7, v12, :cond_3

    .line 1670
    const/4 v7, 0x5

    if-ne v4, v7, :cond_4

    if-lt v3, v10, :cond_4

    .line 1672
    const/16 v1, 0xf

    .line 1683
    :goto_0
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setup LTE coex channel "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$3;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/wifi/WifiNative;->setLteCoex(I)V

    .line 1689
    .end local v1    # "bitmap":I
    .end local v3    # "endSafeChannel":I
    .end local v4    # "startSafeChannel":I
    .end local v5    # "state":I
    .end local v6    # "wifistate":I
    :cond_3
    return-void

    .line 1673
    .restart local v1    # "bitmap":I
    .restart local v3    # "endSafeChannel":I
    .restart local v4    # "startSafeChannel":I
    .restart local v5    # "state":I
    .restart local v6    # "wifistate":I
    :cond_4
    const/4 v7, 0x7

    if-ne v4, v7, :cond_5

    if-lt v3, v10, :cond_5

    .line 1675
    const/16 v1, 0x3f

    goto :goto_0

    .line 1676
    :cond_5
    if-ne v4, v11, :cond_6

    const/16 v7, 0x9

    if-ne v3, v7, :cond_6

    .line 1678
    const/16 v1, 0x3800

    goto :goto_0

    .line 1681
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method
