.class Lcom/android/server/wifi/WifiServiceImpl$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->registerGanLiteV2Receiver()V
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
    .line 4191
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 4194
    const-string v1, "Event"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4196
    .local v0, "myString":Ljava/lang/String;
    const-string v1, "WFC_DEREGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4197
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_DEREGISTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->VoWIFILockCPU(Z)V

    .line 4220
    :cond_0
    :goto_0
    return-void

    .line 4201
    :cond_1
    const-string v1, "WFC_REGISTERED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4202
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_REGISTERED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4205
    :cond_2
    const-string v1, "WFC_DEDICATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4206
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_DEDICATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->VoWIFILockCPU(Z)V

    goto :goto_0

    .line 4210
    :cond_3
    const-string v1, "WFC_VOICE_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4211
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$10;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Lcom/android/server/wifi/WifiStateMachine;->VoWIFILockCPU(Z)V

    goto :goto_0

    .line 4215
    :cond_4
    const-string v1, "WFC_BARRED_COUNTRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4216
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_BARRED_COUNTRY"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4217
    :cond_5
    const-string v1, "WFC_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4218
    const-string v1, "WifiService"

    const-string v2, "VoWIFI: Ganlite v2.0 intent received: WFC_SETTINGS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
