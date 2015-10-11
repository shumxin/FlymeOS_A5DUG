.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final NEW_BACKLIGHT_MECHANISM_FILTER:I = -0x80000000

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XAN-DPS"

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z


# instance fields
.field private final mBacklight:Lcom/android/server/lights/Light;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mButtonLight:Lcom/android/server/lights/Light;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field private mPreviousBacklight:I

.field private mScreenBrightness:I

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sput-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 63
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    .line 97
    sput-boolean v1, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 155
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 168
    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;Lcom/android/server/lights/Light;Z)V
    .locals 4
    .param p1, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p2, "backlight"    # Lcom/android/server/lights/Light;
    .param p3, "electronBeam"    # Lcom/android/server/display/ColorFade;
    .param p4, "buttonLight"    # Lcom/android/server/lights/Light;
    .param p5, "enableNewBacklight"    # Z

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v3, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    .line 378
    new-instance v0, Lcom/android/server/display/DisplayPowerState$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    .line 408
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 106
    sput-boolean p5, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    .line 109
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: ENABLE=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DPS"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandlerThread:Landroid/os/HandlerThread;

    .line 115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 121
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 122
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;

    .line 124
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    .line 126
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 127
    new-instance v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;Lcom/android/server/display/DisplayPowerState$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 128
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 138
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v0, :cond_1

    .line 139
    const/16 v0, 0x1400

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 150
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 153
    return-void

    .line 145
    :cond_1
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/DisplayPowerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerState;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerState;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method private invokeCleanListenerIfNeeded()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 372
    .local v0, "listener":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 374
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_0
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method private scheduleColorFadeDraw()V
    .locals 4

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 365
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 368
    :cond_0
    return-void
.end method

.method private scheduleScreenUpdate()V
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 353
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    .line 355
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 278
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 335
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 336
    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    .line 348
    return-void
.end method

.method public getColorFadeLevel()F
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public getScreenState()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    const-string v2, "XAN-DPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareColorFade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 261
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 268
    :goto_0
    return v0

    .line 264
    :cond_0
    const-string v2, "XAN-DPS"

    const-string v3, "prepareColorFade done"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 266
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 267
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public setButtonBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 424
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 432
    :cond_1
    return-void
.end method

.method public setColorFadeLevel(F)V
    .locals 4
    .param p1, "level"    # F

    .prologue
    const/4 v3, 0x0

    .line 294
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 295
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorFadeLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 300
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 301
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 302
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 304
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz v0, :cond_2

    .line 305
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 306
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    .line 309
    :cond_2
    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const/4 v3, 0x1

    .line 211
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-ne v0, p1, :cond_0

    .line 213
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$100(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    sget v1, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    if-eq v0, v1, :cond_4

    .line 221
    :cond_1
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 222
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    .line 228
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    .line 229
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-ne v0, v3, :cond_3

    .line 230
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSB at s off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, v3, :cond_4

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 237
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 240
    :cond_4
    return-void
.end method

.method public setScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 185
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, p1, :cond_1

    .line 186
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 192
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 194
    :cond_1
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_1

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 327
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    .line 329
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 330
    const/4 v0, 0x1

    goto :goto_0
.end method
