.class Lcom/android/server/wifi/WifiServiceImpl$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerDockModeReceiver()V
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
    .line 3740
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3743
    const-string v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3744
    .local v0, "dockState":I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - dockState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAutoEnableWifiInDockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    if-nez v0, :cond_1

    .line 3746
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mInDockMode:Z
    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 3747
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3748
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnableInDockMode(Z)V
    invoke-static {v1, v5}, Lcom/android/server/wifi/WifiServiceImpl;->access$3500(Lcom/android/server/wifi/WifiServiceImpl;Z)V

    .line 3756
    :cond_0
    :goto_0
    return-void

    .line 3750
    :cond_1
    if-ne v0, v4, :cond_0

    .line 3751
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mInDockMode:Z
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$3402(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 3752
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mAutoEnableWifiInDockMode:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$3300(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3753
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$8;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnableInDockMode(Z)V
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$3500(Lcom/android/server/wifi/WifiServiceImpl;Z)V

    goto :goto_0
.end method
