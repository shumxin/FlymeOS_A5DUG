.class public abstract Landroid/media/htcsoundfx/HtcEffectManagerBase;
.super Ljava/lang/Object;
.source "HtcEffectManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;,
        Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;,
        Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;
    }
.end annotation


# static fields
.field public static final EVT_BTHEADSET:I = 0x2

.field public static final EVT_BTSUBWOOFER:I = 0x6

.field public static final EVT_HDMI:I = 0x4

.field public static final EVT_HEADSET:I = 0x1

.field public static final EVT_MIRACAST:I = 0x5

.field public static final EVT_WIRELESSDISPLAY:I = 0x3

.field public static final MSG_BEATS_NOTIFY:I = 0x0

.field public static final MSG_SET_SYSTEM_PROPERTY:I = 0x1

.field public static final PERSIST_DELAY:I = 0x1f4

.field public static final SENDMSG_NOOP:I = 0x1

.field public static final SENDMSG_QUEUE:I = 0x2

.field public static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcEffectManagerBase"

.field public static final TYPE_BEATS:I = 0x1

.field public static final TYPE_BOOMSOUND:I = 0x2

.field public static final TYPE_HARMAN:I = 0x3

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_JBL:I = 0x4

.field public static final TYPE_NONE:I


# instance fields
.field final mAudioService:Landroid/media/AudioService;

.field mBTA2dpHeadset:Z

.field mBTHeadsetConnected:Z

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurrentSoundEffect:I

.field mEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventHandler:Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

.field mForcedEffectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHDMIOn:Z

.field mHeadsetConnected:Z

.field final mLock:Ljava/lang/Object;

.field mMiracastOn:Z

.field mMirrorOn:Z

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field mSubwooferHeadset:Z

.field mSubwooferOn:Z

.field mSystemSoundEffect:I

.field mType:I

.field mValidEffectCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "as"    # Landroid/media/AudioService;
    .param p4, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 91
    iput-object p3, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mAudioService:Landroid/media/AudioService;

    .line 92
    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-direct {v0, p0, p2}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;-><init>(Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    .line 93
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 95
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mMirrorOn:Z

    .line 96
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mHeadsetConnected:Z

    .line 97
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    .line 98
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    .line 99
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mHDMIOn:Z

    .line 100
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mMiracastOn:Z

    .line 101
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferOn:Z

    .line 102
    iput-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferHeadset:Z

    .line 104
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    .line 105
    iput p4, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mType:I

    .line 106
    return-void
.end method

.method private removeForcedEffectEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    .line 244
    .local v0, "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    iget-object v2, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 246
    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    goto :goto_0

    .line 249
    .end local v0    # "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 228
    const-string v2, "\nHtcEffectManager ForcedEffect stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 230
    :try_start_0
    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 231
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    .line 233
    .local v0, "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCb:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mCallingPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0    # "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "effect"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSoundEffect effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v7, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v1, v1, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-ne v1, p1, :cond_0

    .line 125
    monitor-exit v7

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    monitor-exit v7

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 131
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->removeForcedEffectEntry(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;-><init>(Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/media/htcsoundfx/HtcEffectManagerBase;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v0, "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    iget v1, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mStatus:I

    if-nez v1, :cond_2

    .line 134
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 137
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSoundEffect(Z)I
    .locals 1
    .param p1, "isSystemWise"    # Z

    .prologue
    .line 110
    const/16 v0, 0x320

    return v0
.end method

.method public abstract getSystemProperty(I)I
.end method

.method isValidSystemSoundEffect(I)Z
    .locals 4
    .param p1, "effect"    # I

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "isValidEffect":Z
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    .line 222
    :cond_0
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this SystemSoundEffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not valid!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract loadSoundEffect()V
.end method

.method public onEventChanged(IZ)V
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v3, 0x2

    .line 166
    const-string v0, "HtcEffectManagerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventChanged id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    packed-switch p1, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 170
    :pswitch_0
    iput-boolean p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mHeadsetConnected:Z

    .line 171
    iget-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mHeadsetConnected:Z

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "HtcEffectManagerBase"

    const-string v2, "Subwoofer connected and plug headset later!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferHeadset:Z

    .line 177
    :goto_1
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mType:I

    if-ne v0, v3, :cond_0

    .line 178
    iget-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mHeadsetConnected:Z

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "HtcEffectManagerBase"

    const-string v2, "bt a2dp connected and plug headset later!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferHeadset:Z

    goto :goto_1

    .line 182
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    goto :goto_0

    .line 187
    :pswitch_1
    iput-boolean p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    .line 188
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mType:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTHeadsetConnected:Z

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mBTA2dpHeadset:Z

    goto :goto_0

    .line 193
    :pswitch_2
    iput-boolean p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mMirrorOn:Z

    goto :goto_0

    .line 196
    :pswitch_3
    iput-boolean p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mHDMIOn:Z

    goto :goto_0

    .line 199
    :pswitch_4
    iput-boolean p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mMiracastOn:Z

    goto :goto_0

    .line 202
    :pswitch_5
    iput-boolean p2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferOn:Z

    .line 203
    iget-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferOn:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mSubwooferHeadset:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public abstract onMessageBeatsNotify()V
.end method

.method public abstract onPersistProperty(II)V
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 214
    return-void
.end method

.method public abstract resetSoundEffect()V
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v1, "HtcEffectManagerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreSoundEffect client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget-object v1, v1, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    .line 148
    .local v0, "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->unlinkToDeath()V

    .line 149
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->updateSoundEffect()V

    .line 153
    .end local v0    # "fee":Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;
    :goto_0
    monitor-exit v2

    .line 154
    return-void

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerBase;->removeForcedEffectEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMsg(IIIILjava/lang/Object;I)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 262
    if-nez p2, :cond_1

    .line 263
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->removeMessages(I)V

    .line 268
    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v1, p1, p3, p4, p5}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManagerBase;->mEventHandler:Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerBase$ManagerEventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public abstract setSystemProperty(II)V
.end method

.method public setSystemSoundEffect(I)V
    .locals 0
    .param p1, "effect"    # I

    .prologue
    .line 115
    return-void
.end method

.method abstract updateSoundEffect()V
.end method
