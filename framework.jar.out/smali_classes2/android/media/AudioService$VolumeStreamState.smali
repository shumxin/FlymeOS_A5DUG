.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 4
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 4276
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4272
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4278
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4280
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 4281
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4200()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4282
    const/4 v0, 0x0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4283
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 4288
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 4289
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/media/AudioService$1;

    .prologue
    .line 4267
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isExtremed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4102(Landroid/media/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4267
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 4267
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->extremeCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4267
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4891
    const-string v6, "   Mute count: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4892
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4893
    const-string v6, "   Max: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4894
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4895
    const-string v6, "   Current: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4896
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4897
    .local v5, "set":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4898
    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4899
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4900
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4901
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4902
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_2

    const-string v1, "default"

    .line 4904
    .local v1, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4905
    const-string v6, " ("

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4906
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4907
    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4909
    :cond_1
    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4910
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v4, v6, 0xa

    .line 4911
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4912
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4913
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 4902
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4916
    .end local v0    # "device":I
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_3
    return-void
.end method

.method private declared-synchronized extremeCount()I
    .locals 4

    .prologue
    .line 4850
    monitor-enter p0

    const/4 v0, 0x0

    .line 4851
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4852
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4853
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mExtremeCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$6200(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 4852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4855
    :cond_0
    monitor-exit p0

    return v0

    .line 4850
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4872
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4873
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4874
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 4875
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$6300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    move-object v1, v0

    .line 4887
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .line 4873
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4881
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 4882
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    move-object v1, v0

    .line 4887
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .line 4884
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v4, "AudioService"

    const-string v5, "stream was not muted by this client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4885
    const/4 v0, 0x0

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4683
    if-gez p1, :cond_1

    .line 4684
    const/4 p1, 0x0

    .line 4689
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 4685
    .restart local p1    # "index":I
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 4686
    :cond_2
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method

.method private declared-synchronized isExtremed()Z
    .locals 1

    .prologue
    .line 4865
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->extremeCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isMuted()Z
    .locals 1

    .prologue
    .line 4860
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized muteCount()I
    .locals 4

    .prologue
    .line 4840
    monitor-enter p0

    const/4 v0, 0x0

    .line 4841
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4842
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4843
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2400(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v0, v3

    .line 4842
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4845
    :cond_0
    monitor-exit p0

    return v0

    .line 4840
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public adjustIndex(II)Z
    .locals 1
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I

    .prologue
    .line 4498
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 4422
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4424
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsLockMusicVolumeToMax:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsLockMusicVolumeUI:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v6, :cond_3

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x6

    if-eq v6, v8, :cond_3

    .line 4427
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mLockedMusicVolume:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4428
    const-string v6, "AudioService"

    const-string v8, "disable volume in applyAllVolumes"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    :cond_1
    monitor-exit v7

    .line 4495
    :goto_0
    return-void

    .line 4430
    :cond_2
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4431
    .local v5, "set":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4432
    .local v4, "itr":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4433
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4434
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4435
    .local v0, "device":I
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v3, v6, 0xa

    .line 4436
    .local v3, "index":I
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v6, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_1

    .line 4494
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "index":I
    .end local v4    # "itr":Ljava/util/Iterator;
    .end local v5    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 4446
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4447
    const/4 v3, 0x0

    .line 4453
    .restart local v3    # "index":I
    :goto_2
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v3, v8}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4455
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4456
    .restart local v5    # "set":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4457
    .local v2, "i":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4458
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4459
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4462
    .restart local v0    # "device":I
    const/high16 v6, 0x20000000

    if-eq v0, v6, :cond_4

    .line 4466
    if-eq v0, v9, :cond_4

    .line 4467
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4468
    const/4 v3, 0x0

    .line 4480
    :goto_4
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIgnoreMute:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_5

    .line 4481
    const/4 v3, 0x0

    .line 4485
    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_6

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isDLNAVolumeFixed()Z
    invoke-static {v6}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4488
    const/16 v3, 0xf

    .line 4491
    :cond_6
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v6, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_3

    .line 4448
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v5    # "set":Ljava/util/Set;
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isExtremed()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4449
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4200()[I

    move-result-object v6

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v6, v8

    .restart local v3    # "index":I
    goto :goto_2

    .line 4451
    .end local v3    # "index":I
    :cond_8
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v3, v6, 0xa

    .restart local v3    # "index":I
    goto :goto_2

    .line 4469
    .restart local v0    # "device":I
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v5    # "set":Ljava/util/Set;
    :cond_9
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isExtremed()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4470
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4200()[I

    move-result-object v6

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v6, v8

    goto :goto_4

    .line 4471
    :cond_a
    and-int/lit16 v6, v0, 0x380

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v6}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v6, v6, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_d

    .line 4475
    :cond_c
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v3, v6, 0xa

    goto :goto_4

    .line 4477
    :cond_d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v3, v6, 0xa

    goto :goto_4

    .line 4494
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_e
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public applyDeviceVolume(I)V
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 4386
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsLockMusicVolumeToMax:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsLockMusicVolumeUI:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 4389
    const-string v1, "AudioService"

    const-string v2, "disable volume in applyDeviceVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_1
    :goto_0
    return-void

    .line 4394
    :cond_2
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4395
    const/4 v0, 0x0

    .line 4405
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIgnoreMute:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 4406
    const/4 v0, 0x0

    .line 4410
    :cond_3
    const/high16 v1, 0x20000000

    if-ne p1, v1, :cond_4

    .line 4411
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isDLNAVolumeFixed()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4413
    const/4 p1, 0x2

    .line 4414
    const/16 v0, 0xf

    .line 4417
    :cond_4
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyDeviceVolume stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_0

    .line 4396
    .end local v0    # "index":I
    :cond_5
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isExtremed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4397
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4200()[I

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v1, v2

    .restart local v0    # "index":I
    goto :goto_1

    .line 4398
    .end local v0    # "index":I
    :cond_6
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v1, v1, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_9

    .line 4400
    :cond_8
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_1

    .line 4402
    .end local v0    # "index":I
    :cond_9
    invoke-virtual {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto/16 :goto_1
.end method

.method public checkFixedVolumeDevices()V
    .locals 8

    .prologue
    .line 4663
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 4665
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)[I

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v5, v5, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 4666
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4667
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4668
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4669
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4670
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4671
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4672
    .local v3, "index":I
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v0

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 4674
    :cond_0
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4676
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    goto :goto_0

    .line 4679
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4680
    return-void
.end method

.method public declared-synchronized extreme(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4649
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 4650
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 4651
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for streme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4655
    :goto_0
    monitor-exit p0

    return-void

    .line 4654
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->extreme(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4649
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllIndexes()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4584
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getIndex(I)I
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 4565
    const-class v2, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4566
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4567
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 4569
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 4571
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 4572
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 4576
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 4292
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 4293
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 4294
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4297
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 4659
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public declared-synchronized mute(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4639
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 4640
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 4641
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get client death handler for stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4645
    :goto_0
    monitor-exit p0

    return-void

    .line 4644
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4639
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public readSettings()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x7

    const/4 v6, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 4301
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4303
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4304
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4305
    monitor-exit v7

    .line 4382
    :goto_0
    return-void

    .line 4310
    :cond_0
    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v8, v12, :cond_1

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v8, v9, :cond_3

    .line 4312
    :cond_1
    sget-object v6, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    mul-int/lit8 v3, v6, 0xa

    .line 4313
    .local v3, "index":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v6}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4314
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v6}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4315
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4317
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4318
    :try_start_2
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4319
    monitor-exit v7

    goto :goto_0

    .line 4381
    .end local v3    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4317
    .restart local v3    # "index":I
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    .line 4322
    .end local v3    # "index":I
    :cond_3
    const v5, 0x603fffff

    .line 4324
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v5, :cond_a

    .line 4325
    shl-int v1, v12, v2

    .line 4326
    .local v1, "device":I
    and-int v8, v1, v5

    if-nez v8, :cond_5

    .line 4324
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4329
    :cond_5
    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v5, v8

    .line 4332
    invoke-virtual {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    .line 4335
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v11, :cond_7

    sget-object v8, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v8, v9

    .line 4337
    .local v0, "defaultIndex":I
    :goto_3
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, v4, v0, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4339
    .restart local v3    # "index":I
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readsettings index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", from:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    if-ne v3, v6, :cond_6

    .line 4343
    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    packed-switch v8, :pswitch_data_0

    .line 4375
    :cond_6
    :goto_4
    :pswitch_0
    if-eq v3, v6, :cond_4

    .line 4379
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    mul-int/lit8 v10, v3, 0xa

    invoke-direct {p0, v10}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "defaultIndex":I
    .end local v3    # "index":I
    :cond_7
    move v0, v6

    .line 4335
    goto :goto_3

    .line 4346
    .restart local v0    # "defaultIndex":I
    .restart local v3    # "index":I
    :pswitch_1
    if-ne v1, v11, :cond_6

    .line 4347
    # getter for: Landroid/media/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/media/AudioService;->access$4500()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "has_default_ringtone_volume"

    const/4 v10, 0x7

    invoke-interface {v8, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 4352
    :pswitch_2
    if-ne v1, v11, :cond_6

    .line 4353
    # getter for: Landroid/media/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/media/AudioService;->access$4500()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "has_default_ringtone_volume"

    const/4 v10, 0x5

    invoke-interface {v8, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 4356
    :pswitch_3
    if-ne v1, v11, :cond_6

    .line 4357
    # getter for: Landroid/media/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/media/AudioService;->access$4500()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "has_default_ringtone_volume"

    const/16 v10, 0xb

    invoke-interface {v8, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 4362
    :pswitch_4
    const/4 v8, 0x4

    if-eq v1, v8, :cond_8

    const/16 v8, 0x8

    if-ne v1, v8, :cond_9

    .line 4363
    :cond_8
    # getter for: Landroid/media/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/media/AudioService;->access$4500()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "has_default_media_headset_volume"

    const/4 v10, 0x7

    invoke-interface {v8, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    .line 4364
    :cond_9
    const/4 v8, 0x2

    if-ne v1, v8, :cond_6

    .line 4365
    # getter for: Landroid/media/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/media/AudioService;->access$4500()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "has_default_media_speaker_volume"

    const/16 v10, 0xa

    invoke-interface {v8, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 4368
    :pswitch_5
    if-ne v1, v11, :cond_6

    .line 4369
    # getter for: Landroid/media/AudioService;->reader:Lcom/htc/customization/HtcCustomizationReader;
    invoke-static {}, Landroid/media/AudioService;->access$4500()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "has_default_alarm_volume"

    const/4 v10, 0x6

    invoke-interface {v8, v9, v10}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    goto :goto_4

    .line 4381
    .end local v0    # "defaultIndex":I
    .end local v1    # "device":I
    .end local v3    # "index":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_a
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 9
    .param p1, "srcStream"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4588
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4589
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    .line 4592
    .local v5, "srcStreamType":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 4593
    .local v3, "index":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v8}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;III)I

    move-result v3

    .line 4594
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4595
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4596
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4597
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4598
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4611
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    .end local v5    # "srcStreamType":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 4601
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v3    # "index":I
    .restart local v4    # "set":Ljava/util/Set;
    .restart local v5    # "srcStreamType":I
    :cond_0
    :try_start_1
    iget-object v6, p1, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4602
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4603
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4604
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4605
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4606
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4607
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v8}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;III)I

    move-result v3

    .line 4609
    invoke-virtual {p0, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    goto :goto_1

    .line 4611
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4612
    return-void
.end method

.method public setAllIndexesToMax()V
    .locals 5

    .prologue
    .line 4615
    const-class v4, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 4616
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 4617
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4618
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4619
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4620
    .local v0, "entry":Ljava/util/Map$Entry;
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4622
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v2    # "set":Ljava/util/Set;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4623
    return-void
.end method

.method public setAllIndexesToValue(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 4626
    const-class v5, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 4627
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 4628
    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4629
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4630
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4631
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4632
    .local v0, "device":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    .line 4634
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    goto :goto_0

    .line 4636
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4637
    return-void
.end method

.method public setIndex(II)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4503
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4505
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsLockMusicVolumeToMax:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mIsLockMusicVolumeUI:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v8, :cond_1

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_1

    .line 4508
    const-string v6, "AudioService"

    const-string v8, "disable volume in setIndex"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    monitor-exit v7

    .line 4559
    :goto_0
    return v5

    .line 4513
    :cond_1
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update volume cache, stream:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", device:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 4518
    .local v2, "oldIndex":I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 4519
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v8}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4520
    :try_start_1
    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v9}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4521
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 4523
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4524
    :try_start_2
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4528
    const/high16 v8, 0x20000000

    if-ne p2, v8, :cond_3

    .line 4529
    monitor-exit v7

    goto :goto_0

    .line 4561
    .end local v2    # "oldIndex":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 4523
    .restart local v2    # "oldIndex":I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5

    .line 4533
    :cond_3
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-virtual {v8}, Landroid/media/AudioService;->isFMActive()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAnalogFM:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4536
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    add-int/lit8 v9, p1, 0x5

    div-int/lit8 v9, v9, 0xa

    # invokes: Landroid/media/AudioService;->sendFMVolmeUpdate(I)V
    invoke-static {v8, v9}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;I)V

    .line 4539
    :cond_4
    if-eq v2, p1, :cond_8

    .line 4543
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v9}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;I)I

    move-result v8

    if-ne p2, v8, :cond_6

    move v0, v6

    .line 4544
    .local v0, "currentDevice":Z
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 4545
    .local v1, "numStreamTypes":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "streamType":I
    :goto_2
    if-ltz v4, :cond_7

    .line 4546
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)[I

    move-result-object v5

    aget v5, v5, v4

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v5, v8, :cond_5

    .line 4548
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v5, p1, v8, v4}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;III)I

    move-result v3

    .line 4549
    .local v3, "scaledIndex":I
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v5}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5, v3, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 4551
    if-eqz v0, :cond_5

    .line 4552
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v5}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v5

    aget-object v5, v5, v4

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v4}, Landroid/media/AudioService;->access$5400(Landroid/media/AudioService;I)I

    move-result v8

    invoke-virtual {v5, v3, v8}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 4545
    .end local v3    # "scaledIndex":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :cond_6
    move v0, v5

    .line 4543
    goto :goto_1

    .line 4557
    .restart local v0    # "currentDevice":Z
    .restart local v1    # "numStreamTypes":I
    .restart local v4    # "streamType":I
    :cond_7
    monitor-exit v7

    move v5, v6

    goto/16 :goto_0

    .line 4559
    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :cond_8
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
