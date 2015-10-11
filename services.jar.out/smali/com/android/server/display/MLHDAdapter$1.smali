.class Lcom/android/server/display/MLHDAdapter$1;
.super Ljava/lang/Object;
.source "MLHDAdapter.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MLHDAdapter;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MLHDAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/MLHDAdapter;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/MLHDAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 61
    :try_start_0
    const-string v0, "MLHD"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 62
    .local v2, "displayToken":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    new-instance v0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    iget-object v1, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MLHDAdapter$MLHDDevice;-><init>(Lcom/android/server/display/MLHDAdapter;Landroid/os/IBinder;Landroid/view/Surface;II)V

    # setter for: Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    invoke-static {v7, v0}, Lcom/android/server/display/MLHDAdapter;->access$002(Lcom/android/server/display/MLHDAdapter;Lcom/android/server/display/MLHDAdapter$MLHDDevice;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    .line 63
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    iget-object v1, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    # getter for: Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    invoke-static {v1}, Lcom/android/server/display/MLHDAdapter;->access$000(Lcom/android/server/display/MLHDAdapter;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/MLHDAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 64
    monitor-exit v6

    .line 65
    return-void

    .line 64
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayDisconnected()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/MLHDAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    # getter for: Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    invoke-static {v0}, Lcom/android/server/display/MLHDAdapter;->access$000(Lcom/android/server/display/MLHDAdapter;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    # getter for: Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    invoke-static {v0}, Lcom/android/server/display/MLHDAdapter;->access$000(Lcom/android/server/display/MLHDAdapter;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->destroyLocked()V

    .line 73
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    iget-object v2, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    # getter for: Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    invoke-static {v2}, Lcom/android/server/display/MLHDAdapter;->access$000(Lcom/android/server/display/MLHDAdapter;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/MLHDAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 74
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$1;->this$0:Lcom/android/server/display/MLHDAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/MLHDAdapter;->mDisplayDevice:Lcom/android/server/display/MLHDAdapter$MLHDDevice;
    invoke-static {v0, v2}, Lcom/android/server/display/MLHDAdapter;->access$002(Lcom/android/server/display/MLHDAdapter;Lcom/android/server/display/MLHDAdapter$MLHDDevice;)Lcom/android/server/display/MLHDAdapter$MLHDDevice;

    .line 76
    :cond_0
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 83
    return-void
.end method
