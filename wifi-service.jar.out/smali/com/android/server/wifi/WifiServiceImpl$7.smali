.class Lcom/android/server/wifi/WifiServiceImpl$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerQuickPowerRecevier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 3691
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 3694
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Intent received: ACTION_QUICKBOOT_POWEROFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mEnablingWifiInterrupted:Z
    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiServiceImpl;->access$3202(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 3696
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$900(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v2

    const v3, 0x26064

    invoke-virtual {v2, v3, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 3698
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 3699
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi is still starting up"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    const/16 v1, 0xf

    .line 3701
    .local v1, "waitSecond":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v5, :cond_0

    if-lez v1, :cond_0

    .line 3702
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quickboot - Wait for the end of wifi starting up: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3707
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3710
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 3711
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mEnablingWifiInterrupted:Z
    invoke-static {v2, v7}, Lcom/android/server/wifi/WifiServiceImpl;->access$3202(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 3712
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Power-off interrupt wifi starting up"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    .end local v1    # "waitSecond":I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$7;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 3722
    .local v0, "mWDManager":Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_2

    .line 3723
    const-string v2, "WifiService"

    const-string v3, "setFingerGestureEnable to false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    invoke-virtual {v0, v6}, Lcom/htc/service/WirelessDisplayManager;->setFingerGestureEnable(Z)V

    .line 3727
    :cond_2
    return-void

    .line 3714
    .end local v0    # "mWDManager":Lcom/htc/service/WirelessDisplayManager;
    .restart local v1    # "waitSecond":I
    :cond_3
    const-string v2, "WifiService"

    const-string v3, "Quickboot - Wifi started"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3705
    :catch_0
    move-exception v2

    goto :goto_1
.end method
