.class public Landroid/media/htcsoundfx/HtcEffectManager;
.super Landroid/media/htcsoundfx/HtcEffectManagerBase;
.source "HtcEffectManager.java"


# static fields
.field private static final SET_SYSTEM_EFFECT_PROFILE:I = 0x0

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static SUPPORT_DTS:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcEffectManager"

.field private static eADSReaderName:Ljava/lang/String;

.field private static manager:Lcom/htc/customization/HtcCustomizationManager;

.field private static reader:Lcom/htc/customization/HtcCustomizationReader;

.field private static readerNeedSIMReady:Z


# instance fields
.field private mBeatsSpeaker:Z

.field private mDefaultSoundEffect:I

.field private mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

.field private mIconId:I

.field private mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

.field private mVideoOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 24
    const-string v0, "Android_Multimedia"

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->eADSReaderName:Ljava/lang/String;

    .line 25
    sput-boolean v1, Landroid/media/htcsoundfx/HtcEffectManager;->readerNeedSIMReady:Z

    .line 26
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    .line 27
    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager;->eADSReaderName:Ljava/lang/String;

    const/4 v3, 0x1

    sget-boolean v4, Landroid/media/htcsoundfx/HtcEffectManager;->readerNeedSIMReady:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    .line 30
    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_theater_effect_logo"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    sput-boolean v0, Landroid/media/htcsoundfx/HtcEffectManager;->SUPPORT_DTS:Z

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 30
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;
    .param p4, "type"    # I

    .prologue
    const/16 v7, 0x386

    const/16 v6, 0x384

    const/16 v5, 0x320

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    .line 42
    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 43
    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 44
    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    .line 51
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    .line 56
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput v5, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    .line 58
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput v6, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    .line 61
    const-string v0, "beats_effect"

    const v1, 0x30200a9

    invoke-static {v0, v1, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 70
    :goto_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-direct {v0, p1, v1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    .line 72
    sget-boolean v0, Landroid/media/htcsoundfx/HtcEffectManager;->SUPPORT_DTS:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "beats_effect"

    const v1, 0x30200ab

    invoke-static {v0, v1, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 76
    :cond_0
    const/16 v0, -0x64

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 77
    const/16 v0, -0x64

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 78
    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    .line 79
    iput-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    .line 80
    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    .line 83
    return-void

    .line 62
    :cond_1
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 63
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput v7, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    .line 65
    const-string v0, "beats_effect"

    const v1, 0x30200aa

    invoke-static {v0, v1, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    goto :goto_0

    .line 67
    :cond_2
    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    goto :goto_0
.end method

.method private checkBeatsSupport()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBeatsSupport mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBeatsSpeaker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    if-ne v2, v0, :cond_3

    .line 312
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMirrorOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMiracastOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHDMIOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v2, :cond_2

    .line 316
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 312
    goto :goto_0

    .line 313
    :cond_3
    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 314
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMirrorOn:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMiracastOn:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferOn:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTA2dpHeadset:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHDMIOn:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method private convertEffect(I)I
    .locals 4
    .param p1, "effect"    # I

    .prologue
    const/16 v0, 0x386

    .line 330
    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEffect before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/16 v1, 0x320

    if-ne p1, v1, :cond_0

    .line 332
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 333
    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    if-nez v1, :cond_0

    move p1, v0

    .line 338
    :cond_0
    :goto_0
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertEffect after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return p1

    .line 334
    :cond_1
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 335
    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v1, :cond_2

    move p1, v0

    :cond_2
    goto :goto_0
.end method


# virtual methods
.method public getSoundEffect(Z)I
    .locals 2
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 126
    const-string v0, "HtcEffectManager"

    const-string v1, "getSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    monitor-exit v1

    .line 131
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    monitor-exit v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(I)I
    .locals 1
    .param p1, "name"    # I

    .prologue
    .line 252
    const/4 v0, -0x1

    return v0
.end method

.method public hideBeatsIcon()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "HtcEffectManager"

    const-string v1, "disableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->hide()V

    .line 108
    return-void
.end method

.method public loadSoundEffect()V
    .locals 4

    .prologue
    .line 170
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "effect":I
    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 178
    :goto_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    .line 179
    monitor-exit v2

    .line 180
    return-void

    .line 176
    :cond_0
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iput v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMessageBeatsNotify()V
    .locals 6

    .prologue
    const/16 v5, 0x385

    .line 211
    iget-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_0
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 214
    .local v1, "effect":I
    sget-boolean v2, Landroid/media/htcsoundfx/HtcEffectManager;->SUPPORT_DTS:Z

    if-eqz v2, :cond_0

    .line 215
    const/16 v2, 0x320

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    if-eqz v2, :cond_0

    .line 216
    const/16 v1, 0x385

    .line 218
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 221
    .local v0, "active":Z
    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 223
    if-eqz v0, :cond_3

    const/16 v2, 0x384

    if-eq v1, v2, :cond_1

    if-ne v1, v5, :cond_3

    .line 224
    :cond_1
    invoke-virtual {p0, v1}, Landroid/media/htcsoundfx/HtcEffectManager;->showBeatsIcon(I)V

    .line 234
    :cond_2
    :goto_0
    return-void

    .line 218
    .end local v0    # "active":Z
    .end local v1    # "effect":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 226
    .restart local v0    # "active":Z
    .restart local v1    # "effect":I
    :cond_3
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0

    .line 228
    :cond_4
    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 229
    if-eqz v0, :cond_6

    const/16 v2, 0x386

    if-eq v1, v2, :cond_5

    if-ne v1, v5, :cond_6

    .line 230
    :cond_5
    invoke-virtual {p0, v1}, Landroid/media/htcsoundfx/HtcEffectManager;->showBeatsIcon(I)V

    goto :goto_0

    .line 232
    :cond_6
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 245
    const-string v0, "HtcEffectManager"

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

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "audio.soundenhancer.effect"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const-string v0, "HtcEffectManager"

    const-string v1, "can\'t update system sound effect in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 183
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEvent client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    if-eqz p3, :cond_2

    .line 186
    :try_start_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    iget-object v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;-><init>(Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    .line 200
    :cond_1
    :goto_0
    iput-boolean p3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    .line 201
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    .line 202
    monitor-exit v1

    .line 203
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "HtcEffectManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    const/16 v0, -0x64

    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 117
    const/16 v0, -0x64

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperty(II)V
    .locals 0
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 257
    return-void
.end method

.method public setSystemSoundEffect(I)V
    .locals 8
    .param p1, "effect"    # I

    .prologue
    .line 139
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemSoundEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v7, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 141
    :try_start_0
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    if-ne v0, p1, :cond_0

    .line 142
    const-string v0, "HtcEffectManager"

    const-string v1, "system sound effect is the same as previous"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-exit v7

    .line 162
    :goto_0
    return-void

    .line 145
    :cond_0
    const/16 v0, -0x64

    if-eq p1, v0, :cond_2

    .line 146
    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iput p1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    .line 154
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 160
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    .line 161
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_1
    :try_start_1
    monitor-exit v7

    goto :goto_0

    .line 152
    :cond_2
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showBeatsIcon(I)V
    .locals 2
    .param p1, "effect"    # I

    .prologue
    .line 89
    const-string v0, "HtcEffectManager"

    const-string v1, "enableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    packed-switch p1, :pswitch_data_0

    .line 96
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-interface {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->show()V

    .line 100
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-interface {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 12

    .prologue
    const/16 v3, 0x320

    const/4 v1, 0x0

    .line 265
    const/4 v9, 0x0

    .line 266
    .local v9, "effectChanged":Z
    invoke-direct {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->checkBeatsSupport()Z

    move-result v10

    .line 267
    .local v10, "isBeatsSupport":Z
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 269
    .local v11, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 272
    const/4 v9, 0x1

    .line 287
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 288
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 289
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    const-string v0, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 293
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 295
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mAudioService:Landroid/media/AudioService;

    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->broadcastSoundEffectChanged(I)V

    .line 297
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    return-void

    .line 275
    :cond_3
    if-nez v10, :cond_4

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v3, :cond_4

    .line 276
    iput v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 277
    const/4 v9, 0x1

    goto :goto_0

    .line 279
    :cond_4
    if-eqz v10, :cond_0

    .line 280
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/htcsoundfx/HtcEffectManager;->convertEffect(I)I

    move-result v8

    .line 281
    .local v8, "effect":I
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    .line 282
    iput v8, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    .line 283
    const/4 v9, 0x1

    goto :goto_0
.end method
