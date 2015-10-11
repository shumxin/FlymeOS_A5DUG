.class Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    .line 425
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 426
    return-void
.end method

.method private getValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 455
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 441
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiNotificationController;->access$1102(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 444
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getWifiStatusType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->checkVzwShowNotification(Z)V

    .line 452
    :cond_0
    return-void

    .line 444
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$1000(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 432
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    monitor-enter v2

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->getValue()Z

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$1102(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 434
    monitor-exit v2

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
