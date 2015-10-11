.class final Lcom/android/server/display/MLHDAdapter$MLHDDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "MLHDAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MLHDAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MLHDDevice"
.end annotation


# instance fields
.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/display/MLHDAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/MLHDAdapter;Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 0
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->this$0:Lcom/android/server/display/MLHDAdapter;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 95
    iput-object p3, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    .line 96
    iput p4, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mWidth:I

    .line 97
    iput p5, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mHeight:I

    .line 98
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 130
    const-string v0, "MLHDAdapter"

    const-string v1, "destroyLocked to release surface and native display"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 111
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-string v1, "MLHD"

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 113
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 114
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 115
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xa0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 116
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 117
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 118
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 119
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/MLHDAdapter$MLHDDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 105
    :cond_0
    return-void
.end method
