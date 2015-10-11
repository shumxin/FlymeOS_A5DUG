.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2713
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 2714
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2715
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 2719
    iget v1, p1, Landroid/os/Message;->what:I

    .line 2720
    .local v1, "message":I
    packed-switch v1, :pswitch_data_0

    .line 2760
    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_1

    .line 2762
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2764
    :cond_1
    return-void

    .line 2722
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_2

    .line 2723
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleEnable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4600(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2725
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDisable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$4700(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2729
    :pswitch_2
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] SET_REQUEST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    .line 2731
    .local v0, "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2734
    .end local v0    # "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    :pswitch_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] UPDATE_NETWORK_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v2}, Lcom/android/server/location/GpsLocationProvider;->access$4900(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2738
    :pswitch_4
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] INJECT_NTP_TIME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5000(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2742
    :pswitch_5
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] DOWNLOAD_XTRA_DATA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2744
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5200(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2748
    :pswitch_6
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] INJECT_NTP_TIME_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I
    invoke-static {v2, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5302(Lcom/android/server/location/GpsLocationProvider;I)I

    goto :goto_0

    .line 2752
    :pswitch_7
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] DOWNLOAD_XTRA_DATA_FINISHED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I
    invoke-static {v2, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5402(Lcom/android/server/location/GpsLocationProvider;I)I

    goto/16 :goto_0

    .line 2756
    :pswitch_8
    const-string v2, "GpsLocationProvider"

    const-string v3, "[handleMessage] UPDATE_LOCATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v2}, Lcom/android/server/location/GpsLocationProvider;->access$5500(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto/16 :goto_0

    .line 2720
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
