.class Lcom/android/server/AlarmManagerService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenReceiver"
.end annotation


# instance fields
.field mLockObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 2460
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2461
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2462
    .local v0, "SRfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2463
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isQuickbootSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2464
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2466
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2467
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2472
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2473
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2474
    sput-boolean v7, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    .line 2476
    const-string v5, "AlarmManager"

    const-string v6, "ACTION_SCREEN_ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v5, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2478
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->dumpBlockedAlarmsLocked()V
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)V

    .line 2479
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverBlockedAlarmsLocked()V
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)V

    .line 2482
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverEPSScreenOffBlockedAlarmsLocked()V
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)V

    .line 2484
    monitor-exit v6

    .line 2521
    :cond_0
    :goto_0
    return-void

    .line 2484
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2485
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2486
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    .line 2487
    const-string v5, "AlarmManager"

    const-string v6, "ACTION_SCREEN_OFF"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConnectStateLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2490
    :try_start_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    # setter for: Lcom/android/server/AlarmManagerService;->mScreenOffElapsedTime:J
    invoke-static {v5, v8, v9}, Lcom/android/server/AlarmManagerService;->access$1902(Lcom/android/server/AlarmManagerService;J)J

    .line 2491
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v5, v7}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2492
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v5, v7}, Lcom/android/server/AlarmManagerService;->access$2102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2494
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "connectivity"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2496
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2497
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v5, v7}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2500
    :cond_2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 2502
    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2504
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 2505
    .local v4, "wifiState":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 2506
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v5, v7}, Lcom/android/server/AlarmManagerService;->access$2102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2510
    .end local v4    # "wifiState":I
    :cond_3
    const-string v5, "AlarmManager"

    const-string v7, "[AlarmQueuing] screen off now: "

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const-string v5, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AlarmQueuing] data connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    const-string v5, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AlarmQueuing] wifi connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    monitor-exit v6

    goto/16 :goto_0

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "wifi":Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 2515
    :cond_4
    invoke-static {}, Lcom/android/server/AlarmManagerService;->isQuickbootSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2516
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    .line 2517
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2518
    .local v2, "intent_quickboot_poweroff":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2519
    const-string v5, "AlarmManager"

    const-string v6, "ALARM_FRAMEWORK_BROADCAST_ACTION_QUICKBOOT_POWEROFF"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
