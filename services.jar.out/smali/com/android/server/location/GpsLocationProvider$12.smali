.class Lcom/android/server/location/GpsLocationProvider$12;
.super Landroid/location/INetInitiatedListener$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 2502
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$12;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 4
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .prologue
    const/4 v3, 0x2

    .line 2509
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNiResponse, notifId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$12;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->Is_MULTI_RAB_TRAFFIC_support:Z
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2516
    if-ne p2, v3, :cond_0

    .line 2518
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$12;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->enableMRTT()V

    .line 2524
    :cond_0
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mIsCMCC:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 2525
    const-string v0, "GpsLocationProvider"

    const-string v1, "Trun on fastDormany "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$12;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->enableFastDormancy()V

    .line 2531
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$12;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->access$4500(Lcom/android/server/location/GpsLocationProvider;II)V

    .line 2532
    const/4 v0, 0x1

    return v0
.end method
