.class Landroid/view/ThreadedRenderer$AtlasInitializer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtlasInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$AtlasInitializer;


# instance fields
.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Landroid/view/ThreadedRenderer$AtlasInitializer;

    invoke-direct {v0}, Landroid/view/ThreadedRenderer$AtlasInitializer;-><init>()V

    sput-object v0, Landroid/view/ThreadedRenderer$AtlasInitializer;->sInstance:Landroid/view/ThreadedRenderer$AtlasInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$AtlasInitializer;->mInitialized:Z

    .line 465
    return-void
.end method

.method private static validateMap(Landroid/content/Context;[J)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "map"    # [J

    .prologue
    .line 498
    const-string v6, "Atlas"

    const-string v7, "Validating map..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 502
    .local v4, "preloadedPointers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 503
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 505
    .local v2, "drawables":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 506
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 507
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 508
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_0

    .line 509
    iget-wide v6, v0, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 514
    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 515
    const-string v6, "Atlas"

    const-string v7, "Pointer 0x%X, not in getPreloadedDrawables?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-wide v10, p1, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-wide/16 v6, 0x0

    aput-wide v6, p1, v3

    .line 513
    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 519
    :cond_3
    return-void
.end method


# virtual methods
.method declared-synchronized init(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "renderProxy"    # J

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Landroid/view/ThreadedRenderer$AtlasInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 495
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 469
    :cond_1
    :try_start_1
    const-string v5, "assetatlas"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 470
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 472
    invoke-static {v1}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 474
    .local v0, "atlas":Landroid/view/IAssetAtlas;
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v2

    .line 476
    .local v2, "buffer":Landroid/view/GraphicBuffer;
    if-eqz v2, :cond_0

    .line 477
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getMap()[J

    move-result-object v4

    .line 478
    .local v4, "map":[J
    if-eqz v4, :cond_2

    .line 480
    invoke-static {p1, v4}, Landroid/view/ThreadedRenderer$AtlasInitializer;->validateMap(Landroid/content/Context;[J)V

    .line 481
    # invokes: Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
    invoke-static {p2, p3, v2, v4}, Landroid/view/ThreadedRenderer;->access$000(JLandroid/view/GraphicBuffer;[J)V

    .line 482
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/view/ThreadedRenderer$AtlasInitializer;->mInitialized:Z

    .line 487
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 488
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 492
    .end local v2    # "buffer":Landroid/view/GraphicBuffer;
    .end local v4    # "map":[J
    :catch_0
    move-exception v3

    .line 493
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "HardwareRenderer"

    const-string v6, "Could not acquire atlas"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 468
    .end local v0    # "atlas":Landroid/view/IAssetAtlas;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
