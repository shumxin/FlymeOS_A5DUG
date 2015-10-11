.class Landroid/media/AudioService$DLNAPlayingDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLNAPlayingDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 4
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 7515
    iput-object p1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7516
    iput-object p2, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    .line 7518
    iget-object v1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 7520
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7526
    :cond_0
    :goto_0
    return-void

    .line 7521
    :catch_0
    move-exception v0

    .line 7522
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAPlayingDeathHandler() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7523
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 7529
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAPlayingDeathHandler binderDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7530
    iget-object v0, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->this$0:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioService;->setDLNAPlayingOn(Landroid/os/IBinder;Z)V

    .line 7531
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 7544
    invoke-virtual {p0}, Landroid/media/AudioService$DLNAPlayingDeathHandler;->unlinkToDeath()V

    .line 7545
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7546
    return-void
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    .line 7535
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 7536
    iget-object v1, p0, Landroid/media/AudioService$DLNAPlayingDeathHandler;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7540
    :cond_0
    :goto_0
    return-void

    .line 7537
    :catch_0
    move-exception v0

    .line 7538
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in DLNAPlayingDeathHandler.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
