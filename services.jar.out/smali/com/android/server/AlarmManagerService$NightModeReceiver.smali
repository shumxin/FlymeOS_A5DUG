.class Lcom/android/server/AlarmManagerService$NightModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NightModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 4

    .prologue
    .line 2647
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2648
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2649
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_ON_MOBILE_SN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2650
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_OFF_MOBILE_SN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2651
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2652
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2655
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_MOBILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2656
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_OFF_MOBILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2657
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2658
    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2662
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc.permission.APP_PLATFORM"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2666
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2669
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConnectStateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2670
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2671
    .local v0, "action":Ljava/lang/String;
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_ON_MOBILE_SN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2673
    :cond_0
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] night mode turn on mobile"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2688
    :cond_1
    :goto_0
    monitor-exit v2

    .line 2689
    return-void

    .line 2675
    :cond_2
    const-string v1, "POWERSAVERMODE_NIGHT_MODE_TURN_OFF_MOBILE_SN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_OFF_MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2677
    :cond_3
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] night mode turn off mobile"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 2688
    .end local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2679
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2681
    :cond_5
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] smartsync night mode turn on wifi"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2102(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 2683
    :cond_6
    const-string v1, "SMARTSYNC_NIGHT_MODE_TURN_OFF_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.htc.intent.action.HTCPOWERMGR_SMARTSYNC_NIGHT_MODE_TURN_ON_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2685
    :cond_7
    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] smartsync night mode turn off wifi"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$NightModeReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$2102(Lcom/android/server/AlarmManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
