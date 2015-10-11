.class public Landroid/media/htcsoundfx/JBLManager;
.super Landroid/media/htcsoundfx/HtcEffectManagerBase;
.source "JBLManager.java"


# static fields
.field private static final DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

.field public static final JBL_LIVESTAGE_BUNDLED:I = 0x1

.field public static final JBL_LIVESTAGE_ENABLE:I = 0x0

.field public static final JBL_LIVESTAGE_ERROR:I = -0x1

.field public static final JBL_LIVESTAGE_OFF:I = 0x0

.field public static final JBL_LIVESTAGE_OTHER:I = 0x2

.field public static final JBL_LIVESTAGE_PROFILE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JBLManager"


# instance fields
.field private mLSIconOn:Z

.field private mLiveStageEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.jbl.livestage.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.jbl.livestage.profile"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/htcsoundfx/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 35
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    .line 38
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=JBL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    .line 44
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=JBL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput v4, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    .line 49
    iput v4, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    .line 50
    iput v3, p0, Landroid/media/htcsoundfx/JBLManager;->mLiveStageEnabled:I

    .line 51
    return-void
.end method

.method private checkLiveStageSupport()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    const-string v2, "JBLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLiveStageSupport mLiveStageEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/htcsoundfx/JBLManager;->mLiveStageEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v2, p0, Landroid/media/htcsoundfx/JBLManager;->mLiveStageEnabled:I

    if-ne v2, v0, :cond_3

    .line 191
    iget-boolean v2, p0, Landroid/media/htcsoundfx/JBLManager;->mMirrorOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/JBLManager;->mMiracastOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/JBLManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/JBLManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Landroid/media/htcsoundfx/JBLManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/JBLManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_2

    .line 193
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 191
    goto :goto_0

    :cond_3
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method private showJBLIcon(Z)V
    .locals 5
    .param p1, "LSEnabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 197
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/JBLManager;->mLSIconOn:Z

    if-nez v0, :cond_1

    .line 198
    const-string v0, "JBLManager"

    const-string v1, "enable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x30200ad

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/htcsoundfx/JBLManager;->mLSIconOn:Z

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/media/htcsoundfx/JBLManager;->mLSIconOn:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "JBLManager"

    const-string v1, "disable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 205
    iput-boolean v4, p0, Landroid/media/htcsoundfx/JBLManager;->mLSIconOn:Z

    goto :goto_0
.end method


# virtual methods
.method public getSystemProperty(I)I
    .locals 4
    .param p1, "name"    # I

    .prologue
    .line 125
    const-string v0, "JBLManager"

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

    .line 126
    iget-object v1, p0, Landroid/media/htcsoundfx/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 136
    :try_start_0
    const-string v0, "JBLManager"

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

    .line 139
    monitor-exit v1

    .line 142
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 129
    :pswitch_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/JBLManager;->checkLiveStageSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 134
    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
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

    .line 54
    iget-object v2, p0, Landroid/media/htcsoundfx/JBLManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/htcsoundfx/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "LSEnabled":I
    iget-object v2, p0, Landroid/media/htcsoundfx/JBLManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/htcsoundfx/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "effect":I
    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/media/htcsoundfx/JBLManager;->isValidSystemSoundEffect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    const/4 v1, 0x1

    .line 60
    :cond_1
    const-string v2, "JBLManager"

    const-string v3, "loadSoundEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v3, p0, Landroid/media/htcsoundfx/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 62
    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/JBLManager;->mLiveStageEnabled:I

    .line 63
    iput v1, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    .line 65
    invoke-virtual {p0}, Landroid/media/htcsoundfx/JBLManager;->updateSoundEffect()V

    .line 66
    monitor-exit v3

    .line 67
    return-void

    .line 66
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
    const/4 v3, 0x0

    .line 80
    iget-object v4, p0, Landroid/media/htcsoundfx/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 81
    :try_start_0
    iget v5, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 82
    .local v1, "LSEnabled":Z
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const-string v4, "HD_stream_only"

    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "HDStatus":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-static {v4, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    .line 85
    .local v2, "active":Z
    const-string v3, "JBLManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMessageBeatsNotify active="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", LSEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v3, "HD_stream_only=F"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 87
    and-int v3, v2, v1

    invoke-direct {p0, v3}, Landroid/media/htcsoundfx/JBLManager;->showJBLIcon(Z)V

    .line 88
    return-void

    .end local v0    # "HDStatus":Ljava/lang/String;
    .end local v1    # "LSEnabled":Z
    .end local v2    # "active":Z
    :cond_0
    move v1, v3

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPersistProperty(II)V
    .locals 3
    .param p1, "name"    # I
    .param p2, "value"    # I

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 183
    const-string v0, "JBLManager"

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

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/media/htcsoundfx/JBLManager;->DB_JBL_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const-string v0, "JBLManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetSoundEffect()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "JBLManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Landroid/media/htcsoundfx/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
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
    .line 146
    const-string v0, "JBLManager"

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

    .line 147
    const/4 v7, 0x0

    .line 148
    .local v7, "changed":Z
    iget-object v1, p0, Landroid/media/htcsoundfx/JBLManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 165
    :try_start_0
    const-string v0, "JBLManager"

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

    .line 168
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    if-eqz v7, :cond_1

    .line 171
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/JBLManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 172
    :cond_1
    return-void

    .line 151
    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/media/htcsoundfx/JBLManager;->mLiveStageEnabled:I

    if-eq v0, p2, :cond_0

    .line 152
    iput p2, p0, Landroid/media/htcsoundfx/JBLManager;->mLiveStageEnabled:I

    .line 153
    invoke-virtual {p0}, Landroid/media/htcsoundfx/JBLManager;->updateSoundEffect()V

    .line 154
    const/4 v7, 0x1

    goto :goto_0

    .line 158
    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    .line 159
    iput p2, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    .line 160
    invoke-virtual {p0}, Landroid/media/htcsoundfx/JBLManager;->updateSoundEffect()V

    .line 161
    const/4 v7, 0x1

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    .local v8, "effectChanged":Z
    invoke-direct {p0}, Landroid/media/htcsoundfx/JBLManager;->checkLiveStageSupport()Z

    move-result v9

    .line 93
    .local v9, "isLiveStageSupport":Z
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 95
    .local v10, "oldCommand":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iget v2, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_3

    .line 98
    iput v1, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    .line 101
    :goto_0
    const/4 v8, 0x1

    .line 113
    :cond_0
    :goto_1
    if-eqz v8, :cond_2

    .line 114
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 115
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, "JBLManager"

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

    .line 117
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 119
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/JBLManager;->sendMsg(IIIILjava/lang/Object;I)V

    .line 122
    .end local v7    # "command":Ljava/lang/String;
    :cond_2
    return-void

    .line 100
    :cond_3
    iget-object v0, p0, Landroid/media/htcsoundfx/JBLManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    goto :goto_0

    .line 104
    :cond_4
    if-nez v9, :cond_5

    iget v0, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_5

    .line 105
    iput v1, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    .line 106
    const/4 v8, 0x1

    goto :goto_1

    .line 108
    :cond_5
    if-eqz v9, :cond_0

    iget v0, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    iget v2, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    if-eq v0, v2, :cond_0

    .line 109
    iget v0, p0, Landroid/media/htcsoundfx/JBLManager;->mSystemSoundEffect:I

    iput v0, p0, Landroid/media/htcsoundfx/JBLManager;->mCurrentSoundEffect:I

    .line 110
    const/4 v8, 0x1

    goto :goto_1
.end method
