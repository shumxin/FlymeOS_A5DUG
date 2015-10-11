.class Lcom/android/server/wifi/WifiDataStallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDataStallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiDataStallTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    iget-object v6, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$002(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 117
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->startDataStallAlarm()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiDataStallTracker;->access$002(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 121
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto :goto_0

    .line 128
    :cond_2
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 129
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 131
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v2

    .line 132
    .local v2, "mIsOldWifiConnected":Z
    iget-object v7, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v7, v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$102(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 133
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v5

    if-eq v2, v5, :cond_0

    .line 135
    const-string v5, "WifiDataStallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v8}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->startDataStallAlarm()V

    goto :goto_0

    :cond_3
    move v5, v6

    .line 132
    goto :goto_1

    .line 139
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    .line 140
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsRoutingComplete:Z
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiDataStallTracker;->access$202(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 141
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J
    invoke-static {v5, v6, v7}, Lcom/android/server/wifi/WifiDataStallTracker;->access$302(Lcom/android/server/wifi/WifiDataStallTracker;J)J

    goto :goto_0

    .line 144
    .end local v2    # "mIsOldWifiConnected":Z
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v7, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 145
    const-string v5, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/WifiDisplayStatus;

    .line 146
    .local v4, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v4, :cond_8

    .line 148
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 149
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$400(Lcom/android/server/wifi/WifiDataStallTracker;)I

    move-result v5

    if-nez v5, :cond_0

    .line 150
    const-string v5, "WifiDataStallTracker"

    const-string v6, "WifiDisplay connected, stopDataStallAlarm"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiDataStallTracker;->access$402(Lcom/android/server/wifi/WifiDataStallTracker;I)I

    .line 152
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 154
    :cond_6
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    if-nez v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$400(Lcom/android/server/wifi/WifiDataStallTracker;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 156
    const-string v5, "WifiDataStallTracker"

    const-string v7, "WifiDisplay disconnected, startDataStallAlarm if Wifi connected"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiDataStallTracker;->access$402(Lcom/android/server/wifi/WifiDataStallTracker;I)I

    .line 158
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 159
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->startDataStallAlarm()V

    goto/16 :goto_0

    .line 161
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 165
    :cond_8
    const-string v5, "WifiDataStallTracker"

    const-string v6, "Broadcast Receiver: DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED, WifiDisplayStatus = null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .end local v4    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_9
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 169
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const-string v6, "WifiDataStallTracker"

    const-string v7, "Set mIsRoutingComplete = true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v6, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsRoutingComplete:Z
    invoke-static {v6, v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$202(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    goto/16 :goto_0
.end method
