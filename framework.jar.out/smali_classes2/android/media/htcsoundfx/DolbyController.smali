.class public Landroid/media/htcsoundfx/DolbyController;
.super Ljava/lang/Object;
.source "DolbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/DolbyController$DsClientListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

.field private mDsClientBound:Z

.field private mDsClientConnected:Z

.field private mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

.field private mLock:Ljava/lang/Object;

.field private mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    .line 28
    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    .line 29
    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 31
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    .line 34
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    .line 28
    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    .line 29
    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 31
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    .line 33
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    .line 34
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    .line 48
    const-string v0, "DolbyController"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    invoke-direct {v0, p0, p0}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;-><init>(Landroid/media/htcsoundfx/DolbyController;Landroid/media/htcsoundfx/DolbyController;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    .line 51
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->prepareAsync()V

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/htcsoundfx/DolbyController;

    .prologue
    .line 21
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/DsClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/htcsoundfx/DolbyController;

    .prologue
    .line 21
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/htcsoundfx/DolbyController;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/htcsoundfx/DolbyController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/htcsoundfx/DolbyController;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/htcsoundfx/DolbyController;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    return-void
.end method

.method static synthetic access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    .locals 1
    .param p0, "x0"    # Landroid/media/htcsoundfx/DolbyController;

    .prologue
    .line 21
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/htcsoundfx/DolbyController;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/htcsoundfx/DolbyController;

    .prologue
    .line 21
    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    return v0
.end method

.method private findProfileById(I)Ljava/lang/String;
    .locals 2
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 159
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v1}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v1}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "profiles":[Ljava/lang/String;
    aget-object v1, v0, p1

    .line 163
    .end local v0    # "profiles":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findProfileByName(Ljava/lang/String;)I
    .locals 3
    .param p1, "profile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "profiles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 169
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 168
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isDoblyInstanceExist()Z
    .locals 2

    .prologue
    .line 39
    :try_start_0
    const-string v1, "android.dolby.DsClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v1, 0x1

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareAsync()V
    .locals 3

    .prologue
    .line 71
    const-string v1, "DolbyController"

    const-string v2, "prepareAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    new-instance v1, Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-direct {v1}, Landroid/media/htcsoundfx/dolby/DsClient;-><init>()V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    .line 74
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->getProxeyInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/dolby/DsClient;->setEventListener(Ljava/lang/Object;)V

    .line 76
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 79
    :cond_0
    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "DolbyController"

    const-string v2, "Bound DsService successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v1, "DolbyController"

    const-string v2, "Bound DsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    const-string v0, "DolbyController"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    if-eqz v0, :cond_1

    .line 91
    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    .line 93
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/media/htcsoundfx/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v0, v3}, Landroid/media/htcsoundfx/dolby/DsClient;->setEventListener(Ljava/lang/Object;)V

    .line 98
    :cond_1
    iput-object v3, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    .line 99
    iput-boolean v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    .line 100
    return-void
.end method

.method private restart()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "DolbyController"

    const-string v1, "restart DsClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    .line 105
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->prepareAsync()V

    .line 106
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 58
    const-string v1, "DolbyController"

    const-string v2, "finalize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DolbyController"

    const-string v3, "exception occure at finalize"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    return v1

    .line 208
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v3}, Landroid/media/htcsoundfx/dolby/DsClient;->getDsOn()Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 211
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    .line 215
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getProfile()Ljava/lang/String;
    .locals 6

    .prologue
    .line 140
    const-string v2, "DolbyController"

    const-string v3, "getProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "profile":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    return-object v2

    .line 146
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getSelectedProfile()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/htcsoundfx/DolbyController;->findProfileById(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "DolbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :goto_1
    :try_start_2
    monitor-exit v3

    move-object v2, v1

    .line 155
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 150
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    goto :goto_1

    .line 154
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 151
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "res":Z
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 223
    :goto_0
    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-nez v1, :cond_0

    .line 224
    const-string v1, "DolbyController"

    const-string v3, "Havn\'t bound to DsClient, try to restart"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->restart()V

    .line 227
    :cond_0
    monitor-exit v2

    .line 228
    return v0

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObserver(Landroid/media/htcsoundfx/dolby/IDsClientEvents;)V
    .locals 0
    .param p1, "observer"    # Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    .line 233
    return-void
.end method

.method public setOn(Z)Z
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 175
    sget v3, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    .line 177
    .local v3, "res":I
    iget-object v5, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    return v4

    .line 181
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Landroid/media/htcsoundfx/dolby/DsClient;->getDsOn()Z

    move-result v0

    .line 182
    .local v0, "bDsOn":Z
    if-eq p1, v0, :cond_1

    .line 183
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6, p1}, Landroid/media/htcsoundfx/dolby/DsClient;->setDsOnChecked(Z)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 191
    .end local v0    # "bDsOn":Z
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz p1, :cond_2

    const-string v1, "on"

    .line 194
    .local v1, "command":Ljava/lang/String;
    :goto_2
    sget v5, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    if-ne v3, v5, :cond_3

    .line 195
    const-string v4, "DolbyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v4, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "command":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Landroid/os/DeadObjectException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 187
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    goto :goto_1

    .line 191
    .end local v2    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 188
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "off"

    goto :goto_2

    .line 199
    .restart local v1    # "command":Ljava/lang/String;
    :cond_3
    const-string v5, "DolbyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)Z
    .locals 9
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 109
    const-string v5, "DolbyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setProfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v5, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    return v4

    .line 114
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/htcsoundfx/DolbyController;->findProfileByName(Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "profileId":I
    if-ltz v1, :cond_3

    .line 116
    const-string v6, "DolbyController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "res":Z
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Landroid/media/htcsoundfx/dolby/DsClient;->getSelectedProfile()I

    move-result v6

    if-ne v1, v6, :cond_1

    .line 119
    const/4 v2, 0x1

    .line 124
    :goto_1
    if-eqz v2, :cond_3

    .line 125
    const-string v6, "DolbyController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " successed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    goto :goto_0

    .line 121
    :cond_1
    :try_start_3
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6, v1}, Landroid/media/htcsoundfx/dolby/DsClient;->setSelectedProfile(I)V

    .line 122
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Landroid/media/htcsoundfx/dolby/DsClient;->getSelectedProfile()I
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-ne v1, v6, :cond_2

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    .line 129
    .end local v1    # "profileId":I
    .end local v2    # "res":Z
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_4
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 131
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    .line 135
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_3
    :goto_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 132
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
