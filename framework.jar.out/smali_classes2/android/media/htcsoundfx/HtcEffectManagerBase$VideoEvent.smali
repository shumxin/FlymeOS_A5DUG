.class public Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;
.super Ljava/lang/Object;
.source "HtcEffectManagerBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/HtcEffectManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoEvent"
.end annotation


# instance fields
.field public mCb:Landroid/os/IBinder;

.field public mClientId:Ljava/lang/String;

.field private mSoundEffectManager:Landroid/media/htcsoundfx/HtcEffectManagerBase;

.field final synthetic this$0:Landroid/media/htcsoundfx/HtcEffectManagerBase;


# direct methods
.method public constructor <init>(Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p2, "manager"    # Landroid/media/htcsoundfx/HtcEffectManagerBase;
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "clientId"    # Ljava/lang/String;

    .prologue
    .line 352
    iput-object p1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->this$0:Landroid/media/htcsoundfx/HtcEffectManagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mSoundEffectManager:Landroid/media/htcsoundfx/HtcEffectManagerBase;

    .line 354
    iput-object p3, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    .line 355
    iput-object p4, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mClientId:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoEvent() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mSoundEffectManager:Landroid/media/htcsoundfx/HtcEffectManagerBase;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mClientId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 369
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
    .line 382
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    .line 383
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 384
    return-void
.end method

.method public unlinkToDeath()V
    .locals 4

    .prologue
    .line 373
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mCb:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in VideoEvent.unlinkToDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
