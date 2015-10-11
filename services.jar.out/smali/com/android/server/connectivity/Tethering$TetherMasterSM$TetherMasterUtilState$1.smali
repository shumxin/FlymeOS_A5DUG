.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentIPV6Connected:Z

.field currentUpstreamIface:Ljava/lang/String;

.field lastUpstreamIface:Ljava/lang/String;

.field final synthetic this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;)V
    .locals 1

    .prologue
    .line 2092
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->lastUpstreamIface:Ljava/lang/String;

    .line 2094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 2097
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "network available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 2100
    .local v1, "lp":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->isIpv6Connected(Landroid/net/LinkProperties;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    .line 2101
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    .line 2102
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->lastUpstreamIface:Ljava/lang/String;

    .line 2103
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-boolean v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->prevIPV6Connected:Z

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    if-eq v2, v3, :cond_0

    .line 2104
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    if-eqz v2, :cond_0

    .line 2105
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->addUpstreamV6Interface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    iput-boolean v3, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->prevIPV6Connected:Z

    .line 2112
    return-void

    .line 2108
    :catch_0
    move-exception v0

    .line 2109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Tethering"

    const-string v3, "Exception querying ConnectivityManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2130
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->isIpv6Connected(Landroid/net/LinkProperties;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    .line 2131
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    .line 2132
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->lastUpstreamIface:Ljava/lang/String;

    .line 2133
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkCallback.onLinkPropertiesChanged: network="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "currentIPV6Connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "prevIPV6Connected ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-boolean v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->prevIPV6Connected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 2138
    .local v0, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-boolean v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->prevIPV6Connected:Z

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    if-eq v1, v2, :cond_0

    .line 2139
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    if-eqz v1, :cond_1

    .line 2140
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->addUpstreamV6Interface(Ljava/lang/String;)V

    .line 2144
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentIPV6Connected:Z

    iput-boolean v2, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->prevIPV6Connected:Z

    .line 2146
    :cond_0
    return-void

    .line 2142
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->currentUpstreamIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->removeUpstreamV6Interface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v3, 0x0

    .line 2116
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network lost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->lastUpstreamIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->removeUpstreamV6Interface(Ljava/lang/String;)V

    .line 2120
    const-string v0, "Tethering"

    const-string v1, "Unregistering NetworkCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2122
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2123
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->prevIPV6Connected:Z

    .line 2124
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$1;->lastUpstreamIface:Ljava/lang/String;

    .line 2126
    :cond_0
    return-void
.end method
