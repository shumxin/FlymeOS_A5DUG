.class public Landroid/media/htcsoundfx/DolbyManager;
.super Landroid/media/htcsoundfx/HtcEffectManagerBase;
.source "DolbyManager.java"


# static fields
.field private static final DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

.field public static final DOLBY_EARBUDS:I = 0x2

.field private static final DOLBY_EARBUDS_NAME:Ljava/lang/String; = "Earbuds"

.field public static final DOLBY_ENABLE:I = 0x0

.field public static final DOLBY_ERROR:I = -0x1

.field public static final DOLBY_HIRES:I = 0x4

.field private static final DOLBY_HIRES_NAME:Ljava/lang/String; = "Hi_Res"

.field public static final DOLBY_INEAR:I = 0x3

.field private static final DOLBY_INEAR_NAME:Ljava/lang/String; = "In_Ear"

.field public static final DOLBY_OFF:I = 0x0

.field private static final DOLBY_OFF_NAME:Ljava/lang/String; = "Off"

.field public static final DOLBY_OTHER:I = 0x5

.field private static final DOLBY_OTHER_NAME:Ljava/lang/String; = "Others"

.field public static final DOLBY_PROFILE:I = 0x1

.field public static final DOLBY_SPEAKER:I = 0x1

.field private static final DOLBY_SPEAKER_NAME:Ljava/lang/String; = "Speaker"

.field private static final TAG:Ljava/lang/String; = "DolbyManager"


# instance fields
.field private mBeatsSpeaker:Z

.field private mDefaultSoundEffect:I

.field private mDolbyController:Landroid/media/htcsoundfx/DolbyController;

.field private mDolbyEnabled:I

.field private final mDsClientListener:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

.field private mIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.dolby.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.dolby.profile"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/media/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    .line 319
    new-instance v1, Landroid/media/htcsoundfx/DolbyManager$1;

    invoke-direct {v1, p0}, Landroid/media/htcsoundfx/DolbyManager$1;-><init>(Landroid/media/htcsoundfx/DolbyManager;)V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDsClientListener:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    .line 58
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Off"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Speaker"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Earbuds"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "In_Ear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Hi_Res"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Others"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    .line 68
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v2, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Off"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Off"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v2, 0x386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "In_Ear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Earbuds"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "In_Ear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Hi_Res"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Others"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iput v7, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 77
    iput v7, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 78
    iput v6, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 79
    iput v8, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    .line 81
    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mBeatsSpeaker:Z

    .line 82
    new-instance v1, Landroid/media/htcsoundfx/DolbyController;

    invoke-direct {v1, p1}, Landroid/media/htcsoundfx/DolbyController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    .line 83
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mDsClientListener:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/DolbyController;->setObserver(Landroid/media/htcsoundfx/dolby/IDsClientEvents;)V

    .line 86
    const-string v1, "beats_effect"

    const v2, 0x30200aa

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    .line 87
    .local v0, "icon":Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    new-instance v1, Landroid/media/htcsoundfx/view/EffectViewStatusBar;

    invoke-direct {v1, p1, v0}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    .line 88
    return-void
.end method

.method private checkDolbySupport()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    const-string v2, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDolbySupport mDolbyEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBeatsSpeaker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mBeatsSpeaker:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-ne v2, v0, :cond_4

    .line 305
    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mMirrorOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mMiracastOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTA2dpHeadset:Z

    if-eqz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mHDMIOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mBeatsSpeaker:Z

    if-eqz v2, :cond_3

    .line 306
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 305
    goto :goto_0

    :cond_4
    move v0, v1

    .line 306
    goto :goto_0
.end method

.method private showDolbyIcon(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    const-string v0, "DolbyManager"

    const-string v1, "enable Dolby notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->show()V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string v0, "DolbyManager"

    const-string v1, "disable Dolby notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public getSoundEffect(Z)I
    .locals 7
    .param p1, "isSystemWise"    # Z

    .prologue
    const/16 v2, 0x320

    .line 180
    const-string v3, "DolbyManager"

    const-string v4, "getSoundEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/media/htcsoundfx/DolbyManager;->getSystemProperty(I)I

    move-result v1

    .line 183
    .local v1, "enabled":I
    if-nez v1, :cond_0

    .line 203
    :goto_0
    :pswitch_0
    return v2

    .line 186
    :cond_0
    const/4 v0, -0x1

    .line 187
    .local v0, "effect":I
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    if-eqz p1, :cond_1

    .line 189
    :try_start_0
    const-string v4, "DolbyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSystemSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 195
    :goto_1
    monitor-exit v3

    .line 197
    packed-switch v0, :pswitch_data_0

    .line 203
    const/16 v2, 0x386

    goto :goto_0

    .line 192
    :cond_1
    const-string v4, "DolbyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    goto :goto_1

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 201
    :pswitch_1
    const/16 v2, -0x64

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSystemProperty(I)I
    .locals 4
    .param p1, "name"    # I

    .prologue
    .line 238
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 249
    :try_start_0
    const-string v0, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    monitor-exit v1

    .line 255
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 242
    :pswitch_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 247
    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadSoundEffect()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 91
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "enabled":I
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "effect":I
    const/16 v2, 0x320

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/DolbyManager;->isValidSystemSoundEffect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    :cond_0
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 98
    :cond_1
    const-string v2, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSoundEffect dolby_enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 100
    :try_start_0
    iput v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    .line 101
    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 103
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyManager;->updateSoundEffect()V

    .line 104
    monitor-exit v3

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onMessageBeatsNotify()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_0
    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 120
    .local v1, "enabled":Z
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v3, 0x3

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 122
    .local v0, "active":Z
    const-string v2, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    and-int v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/htcsoundfx/DolbyManager;->showDolbyIcon(Z)V

    .line 124
    return-void

    .end local v0    # "active":Z
    .end local v1    # "enabled":Z
    :cond_0
    move v1, v2

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 288
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPersistProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 297
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const-string v0, "DolbyManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "DolbyManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperty(II)V
    .locals 8
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 259
    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v7, 0x0

    .line 261
    .local v7, "changed":Z
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    packed-switch p1, :pswitch_data_0

    .line 278
    :try_start_0
    const-string v0, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    if-eqz v7, :cond_1

    .line 284
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 285
    :cond_1
    return-void

    .line 264
    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-eq v0, p2, :cond_0

    .line 265
    iput p2, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    .line 266
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyManager;->updateSoundEffect()V

    .line 267
    const/4 v7, 0x1

    goto :goto_0

    .line 271
    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 272
    iput p2, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 273
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyManager;->updateSoundEffect()V

    .line 274
    const/4 v7, 0x1

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSystemSoundEffect(I)V
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 212
    const-string v1, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v1, -0x64

    if-eq p1, v1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/DolbyManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 235
    :goto_0
    return-void

    .line 218
    :cond_0
    iget p1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 221
    :cond_1
    const/16 v1, 0x386

    if-ne p1, v1, :cond_3

    .line 222
    iget p1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    .line 227
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 228
    const/4 v0, 0x0

    .line 232
    .local v0, "enabled":I
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    .line 233
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/media/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    goto :goto_0

    .line 223
    .end local v0    # "enabled":I
    :cond_3
    const/16 v1, 0x320

    if-ne p1, v1, :cond_2

    .line 224
    const/4 p1, 0x0

    goto :goto_1

    .line 230
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "enabled":I
    goto :goto_2
.end method

.method updateSoundEffect()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    .local v9, "effectChanged":Z
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v10

    .line 129
    .local v10, "isDolbySupport":Z
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    iget v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 131
    .local v11, "oldCommand":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_5

    :cond_0
    iget v8, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    .line 133
    .local v8, "effect":I
    :goto_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 134
    iget v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v3, v0, :cond_1

    .line 135
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v3, 0x320

    if-ne v0, v3, :cond_6

    .line 136
    iput v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 139
    :goto_1
    const/4 v9, 0x1

    .line 151
    :cond_1
    :goto_2
    if-eqz v9, :cond_4

    .line 152
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    iget v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 153
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    const-string v0, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v12, 0x0

    .line 157
    .local v12, "res":Z
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-nez v0, :cond_9

    .line 158
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    invoke-virtual {v0, v1}, Landroid/media/htcsoundfx/DolbyController;->setOn(Z)Z

    move-result v12

    .line 164
    :cond_2
    :goto_3
    if-nez v12, :cond_a

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 166
    const-string v0, "DolbyManager"

    const-string v2, "updateSoundEffect failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v12    # "res":Z
    :cond_3
    :goto_4
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 173
    .end local v7    # "command":Ljava/lang/String;
    :cond_4
    return-void

    .end local v8    # "effect":I
    :cond_5
    move v8, v2

    .line 131
    goto :goto_0

    .line 138
    .restart local v8    # "effect":I
    :cond_6
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    goto :goto_1

    .line 142
    :cond_7
    if-nez v10, :cond_8

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_8

    .line 143
    iput v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 144
    const/4 v9, 0x1

    goto :goto_2

    .line 146
    :cond_8
    if-eqz v10, :cond_1

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_1

    .line 147
    iput v8, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    .line 148
    const/4 v9, 0x1

    goto :goto_2

    .line 160
    .restart local v7    # "command":Ljava/lang/String;
    .restart local v12    # "res":Z
    :cond_9
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    invoke-virtual {v0, v2}, Landroid/media/htcsoundfx/DolbyController;->setOn(Z)Z

    move-result v12

    .line 161
    if-eqz v12, :cond_2

    .line 162
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    invoke-virtual {v0, v7}, Landroid/media/htcsoundfx/DolbyController;->setProfile(Ljava/lang/String;)Z

    move-result v12

    goto :goto_3

    .line 168
    :cond_a
    const-string v0, "DolbyManager"

    const-string v2, "updateSoundEffect successful"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
