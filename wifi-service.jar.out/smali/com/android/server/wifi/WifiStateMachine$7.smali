.class Lcom/android/server/wifi/WifiStateMachine$7;
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
    .line 1760
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1763
    const-string v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 1764
    .local v0, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v0, :cond_2

    .line 1766
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentWifiDisplayStatus:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentWifiDisplayStatus:I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1102(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 1769
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiDisplayStatus Change, mCurrentWifiDisplayStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentWifiDisplayStatus:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCurrentWifiDisplayStatus:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1772
    const-string v1, "WifiStateMachine"

    const-string v2, "Miracast CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->restrictScanControl(IZ)V
    invoke-static {v1, v4, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 1782
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    const-string v1, "WifiStateMachine"

    const-string v2, "Miracast CONNECTING/NOT CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$7;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->restrictScanControl(IZ)V
    invoke-static {v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1000(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto :goto_0

    .line 1780
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiStateMachine"

    const-string v2, "Broadcast Receiver: DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED, WifiDisplayStatus = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
