.class Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 125
    :pswitch_0
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 143
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v1}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 149
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$200(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2001c

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
