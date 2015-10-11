.class Lcom/android/server/wifi/WifiApConfigStore$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 163
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 201
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    .line 165
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 166
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 172
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    # setter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->access$002(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 176
    :cond_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 181
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 182
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiApConfigStore;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 189
    :goto_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 190
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 195
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/WifiApConfigStore;->access$300(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->access$400(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 197
    :cond_5
    const-string v2, "WifiApConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to setup AP config without SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
    .end packed-switch
.end method
