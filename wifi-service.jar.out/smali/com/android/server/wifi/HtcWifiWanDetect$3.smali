.class Lcom/android/server/wifi/HtcWifiWanDetect$3;
.super Ljava/lang/Object;
.source "HtcWifiWanDetect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiWanDetect;->doWanDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiWanDetect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 231
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$100(Lcom/android/server/wifi/HtcWifiWanDetect;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    .line 232
    .local v5, "networkId":I
    const/4 v4, 0x0

    .line 233
    .local v4, "inetAddress":Ljava/net/InetAddress;
    const-string v0, "www.htc.com"

    .line 234
    .local v0, "DnsAddressForWAN1":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getDnsAddressForWanDetection()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "DnsAddressForWAN2":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 237
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->waitDNS()V
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$900(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    .line 238
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->checkStopWanDetection()Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetect;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    :cond_0
    :goto_1
    return-void

    .line 240
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 241
    const-string v6, "HtcWifiWanDetect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find DNS Address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "HtcWifiWanDetect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WAN problem detected A. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->checkStopWanDetection()Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 249
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->waitDNS()V
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$900(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    .line 250
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->checkStopWanDetection()Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 252
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 253
    const-string v6, "HtcWifiWanDetect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Find DNS Address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 257
    :catch_1
    move-exception v2

    .line 258
    const-string v6, "HtcWifiWanDetect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WAN problem detected B. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->checkStopWanDetection()Z
    invoke-static {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$1000(Lcom/android/server/wifi/HtcWifiWanDetect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 265
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-virtual {v6}, Lcom/android/server/wifi/HtcWifiWanDetect;->isVzwAvoidBadConnection()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 266
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    const/16 v7, 0x17

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->sendVzwErrorBroadcast(II)V
    invoke-static {v6, v7, v5}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$1100(Lcom/android/server/wifi/HtcWifiWanDetect;II)V

    goto/16 :goto_1

    .line 269
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/HtcWifiWanDetect$3;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    const/16 v7, 0x16

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->sendErrorBroadcast(II)V
    invoke-static {v6, v7, v5}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$1200(Lcom/android/server/wifi/HtcWifiWanDetect;II)V

    goto/16 :goto_1
.end method
