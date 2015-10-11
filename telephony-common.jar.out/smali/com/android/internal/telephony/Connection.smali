.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$CliValid;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$PostDialListener;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field public static final CODEC_AMR_NB_V02:Ljava/lang/String; = "AMR-NB"

.field public static final CODEC_AMR_WB_V02:Ljava/lang/String; = "AMR-WB"

.field public static final CODEC_DEFAULT:Ljava/lang/String; = "UNKNOWN"

.field public static final CODEC_EVRC_B_V02:Ljava/lang/String; = "EVRC-B"

.field public static final CODEC_EVRC_NW_V02:Ljava/lang/String; = "EVRC-NW"

.field public static final CODEC_EVRC_V02:Ljava/lang/String; = "EVRC"

.field public static final CODEC_EVRC_WB_V02:Ljava/lang/String; = "EVRC-WB"

.field public static final CODEC_GSM_EFR_V02:Ljava/lang/String; = "GSM-EFR"

.field public static final CODEC_GSM_FR_V02:Ljava/lang/String; = "GSM-FR"

.field public static final CODEC_GSM_HR_V02:Ljava/lang/String; = "GSM-HR"

.field public static final CODEC_NONE_V02:Ljava/lang/String; = "NONE"

.field public static final CODEC_QCELP13K_V02:Ljava/lang/String; = "QCELP13K"

.field public static final CODEC_SPRINT_VOICE_HD:Ljava/lang/String; = "SPRINT-VOICE-HD"

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SPEECH_CODEC_KEY:Ljava/lang/String; = "Codec"

.field public static final VOICE_SPEECH_CODEC_AMR_NB_V02:I = 0x6

.field public static final VOICE_SPEECH_CODEC_AMR_WB_V02:I = 0x7

.field public static final VOICE_SPEECH_CODEC_DEFAULT:I = -0x1

.field public static final VOICE_SPEECH_CODEC_EVRC_B_V02:I = 0x3

.field public static final VOICE_SPEECH_CODEC_EVRC_NW_V02:I = 0x5

.field public static final VOICE_SPEECH_CODEC_EVRC_V02:I = 0x2

.field public static final VOICE_SPEECH_CODEC_EVRC_WB_V02:I = 0x4

.field public static final VOICE_SPEECH_CODEC_GSM_EFR_V02:I = 0x8

.field public static final VOICE_SPEECH_CODEC_GSM_FR_V02:I = 0x9

.field public static final VOICE_SPEECH_CODEC_GSM_HR_V02:I = 0xa

.field public static final VOICE_SPEECH_CODEC_KEY:Ljava/lang/String; = "CALL_CODEC"

.field public static final VOICE_SPEECH_CODEC_NONE_V02:I = 0x0

.field public static final VOICE_SPEECH_CODEC_QCELP13K_V02:I = 0x1

.field public static final VOICE_SPEECH_CODEC_SPRINT_VOICE_HD:I = 0x1000


# instance fields
.field public callDetails:Lcom/android/internal/telephony/CallDetails;

.field public callModifyRequest:Lcom/android/internal/telephony/CallModify;

.field public errorInfo:Ljava/lang/String;

.field isCollided:Z

.field protected mAddress:Ljava/lang/String;

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field public mDialString:Ljava/lang/String;

.field protected mDuration:J

.field public mHasUpdatedCallLog:Z

.field protected mHoldingStartTime:J

.field protected mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

.field protected mIsIncoming:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoCapable:Z

.field private mMapUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mRemoteVideoCapable:Z

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 91
    new-instance v0, Lcom/android/internal/telephony/CallDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 97
    iput v2, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 140
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 755
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    .line 789
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method public static convertVoiceSpeechCodecToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "codec"    # I

    .prologue
    .line 936
    sparse-switch p0, :sswitch_data_0

    .line 962
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 938
    :sswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 940
    :sswitch_1
    const-string v0, "QCELP13K"

    goto :goto_0

    .line 942
    :sswitch_2
    const-string v0, "EVRC"

    goto :goto_0

    .line 944
    :sswitch_3
    const-string v0, "EVRC-B"

    goto :goto_0

    .line 946
    :sswitch_4
    const-string v0, "EVRC-WB"

    goto :goto_0

    .line 948
    :sswitch_5
    const-string v0, "EVRC-NW"

    goto :goto_0

    .line 950
    :sswitch_6
    const-string v0, "AMR-NB"

    goto :goto_0

    .line 952
    :sswitch_7
    const-string v0, "AMR-WB"

    goto :goto_0

    .line 954
    :sswitch_8
    const-string v0, "GSM-EFR"

    goto :goto_0

    .line 956
    :sswitch_9
    const-string v0, "GSM-FR"

    goto :goto_0

    .line 958
    :sswitch_a
    const-string v0, "GSM-HR"

    goto :goto_0

    .line 960
    :sswitch_b
    const-string v0, "SPRINT-VOICE-HD"

    goto :goto_0

    .line 936
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x1000 -> :sswitch_b
    .end sparse-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 981
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    return-void
.end method

.method public addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 451
    return-void
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 441
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCCWT()Z
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallDetails()Lcom/android/internal/telephony/CallDetails;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    return-object v0
.end method

.method public getCallDetailsExtraValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->getExtras()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallDetailsExtras()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallDetails;->getExtras()[Ljava/lang/String;

    move-result-object v0

    .line 916
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallModify()Lcom/android/internal/telephony/CallModify;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public abstract getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public abstract getDialString()Ljava/lang/String;
.end method

.method public abstract getDisconnectCause()I
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 288
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 293
    :goto_0
    return-wide v0

    .line 290
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 293
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    goto :goto_0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 369
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 372
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getHasUpdatedCallLog()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    return v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public getMapUserData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public abstract getRawDisonnectCause()I
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 342
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 343
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 828
    const/4 v0, 0x0

    .line 829
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallDetails;->getVideoPauseState()I

    move-result v0

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public htcGetPreviousStateBeforeDisconnected()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isCollided()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isLocalVideoCapable()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRemoteVideoCapable()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 532
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 521
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 522
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 523
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 526
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    .line 527
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 528
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 529
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 531
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    goto :goto_0
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_0

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 456
    .local v1, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    .line 459
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 711
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public removeUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 844
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    .prologue
    .line 652
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 653
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 654
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    .line 656
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public abstract setCCWT(Z)V
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .prologue
    .line 666
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 668
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    .line 670
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public abstract setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V
.end method

.method public setCollided(Z)V
    .locals 0
    .param p1, "collided"    # Z

    .prologue
    .line 864
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->isCollided:Z

    .line 865
    return-void
.end method

.method public setConnectionDetails(Lcom/android/internal/telephony/CallDetails;)V
    .locals 0
    .param p1, "ConnDetails"    # Lcom/android/internal/telephony/CallDetails;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callDetails:Lcom/android/internal/telephony/CallDetails;

    .line 229
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 688
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 689
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 690
    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 236
    .line 237
    return-void
.end method

.method public setHasUpdatedCallLog(Z)V
    .locals 0
    .param p1, "updated"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasUpdatedCallLog:Z

    .line 744
    return-void
.end method

.method public setLocalVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    .line 629
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 630
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onLocalVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 632
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setModifyConnectionDetails(Lcom/android/internal/telephony/CallModify;)V
    .locals 0
    .param p1, "modifyConn"    # Lcom/android/internal/telephony/CallModify;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->callModifyRequest:Lcom/android/internal/telephony/CallModify;

    .line 233
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 640
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    .line 641
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 642
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onRemoteVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 644
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 681
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 683
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 616
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 617
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 618
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    .line 620
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setconnectTimeReal(J)V
    .locals 0
    .param p1, "connectTimeReal"    # J

    .prologue
    .line 884
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 722
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incoming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateCodecInfo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[codec] updateCodecInfo, codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    .line 968
    const/4 v0, 0x0

    .line 970
    .local v0, "changed":Z
    const-string v2, "Codec"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Connection;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 971
    .local v1, "original":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 972
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[codec] updateCodecInfo, update voice speech codec from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/Connection;->log(Ljava/lang/String;)V

    .line 973
    const-string v2, "Codec"

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/Connection;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const/4 v0, 0x1

    .line 977
    :cond_1
    return v0
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection$Listener;

    .line 700
    .local v1, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 702
    .end local v1    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMapUserData(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 892
    if-eqz p1, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 896
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getMapUserData()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mMapUserData:Ljava/util/HashMap;

    .line 898
    :cond_1
    return-void
.end method

.method public updateUserData(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 908
    :cond_0
    return-void
.end method
