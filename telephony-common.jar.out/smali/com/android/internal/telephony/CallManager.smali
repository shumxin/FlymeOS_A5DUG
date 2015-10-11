.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$1;,
        Lcom/android/internal/telephony/CallManager$CallManagerHandler;,
        Lcom/android/internal/telephony/CallManager$SelfCallTracker;
    }
.end annotation


# static fields
.field public static final CS_ACTIVE:I = 0x1

.field public static final CS_ACTIVE_SESSION2:I = 0x100

.field public static final CS_HOLD:I = 0x2

.field public static final CS_HOLD_SESSION2:I = 0x200

.field public static final CS_INACTIVE:I = 0x0

.field public static final CS_INACTIVE_SESSION2:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_CALL_MODIFY:I = 0x79

.field private static final EVENT_CALL_MODIFY_RESPONSE:I = 0x7a

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_LINECTRL_INFO:I = 0xc8

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_ONHOLD_TONE:I = 0x78

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION:I = 0x3ea

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_VOICE_CONNECTED:I = 0x3e9

.field public static final IMS_ACTIVE:I = 0x10

.field public static final IMS_HOLD:I = 0x20

.field public static final IMS_INACTIVE:I = 0x0

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager;

.field private static IS_SGLTE_MODEM:Z = false

.field private static final LOCAL_MODEM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final MAX_IN_CALL_AUDIO_MODE_BIT:I = 0x7

.field private static final MODE2DDESCRIPTION:[Ljava/lang/String;

.field private static final PROPERTY_BASEBAND:Ljava/lang/String; = "ro.baseband.arch"

.field private static final PROPERTY_VOICE_MODEM_INDEX:Ljava/lang/String; = "persist.radio.voice.modem.index"

.field private static final REMOTE_MODEM:I = 0x1

.field private static final SDBG:Z = false

.field private static final SET_MODE_BEFORE_ANSWER:Z

.field private static final SGLTE:Ljava/lang/String; = "sglte"

.field private static final SGLTE_TYPE2:Ljava/lang/String; = "sglte2"

.field private static final SUPPORT_DISABLE_LOOPBACK_CALL_BY_PHONENUMBER:Z

.field private static final SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

.field private static final SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

.field private static SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

.field private static final VDBG:Z

.field private static final mBaseband:Ljava/lang/String;

.field private static mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;


# instance fields
.field acceptRingingCall:Lcom/android/internal/telephony/Call;

.field private mAudioFocusEnabled:Z

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallConnectedRegistrants:Landroid/os/RegistrantList;

.field protected final mCallModifyRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field private mDualGSMtotalConnections:I

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEmptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/CallManager$CallManagerHandler;",
            ">;"
        }
    .end annotation
.end field

.field mHasCsActiveCall:Z

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

.field private mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

.field private mNeedToHoldAfterRing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mOnHoldToneRegistrants:Landroid/os/RegistrantList;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field private mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    .line 123
    sput-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sput-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    .line 131
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v0, :cond_1

    :cond_1
    sput-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    .line 133
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    .line 140
    new-instance v0, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 251
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v3, "set_mode_before_answer"

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SET_MODE_BEFORE_ANSWER:Z

    .line 4323
    const-string v0, "ro.baseband.arch"

    const-string v3, "msm"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallManager;->mBaseband:Ljava/lang/String;

    .line 4324
    const-string v0, "sglte"

    sget-object v3, Lcom/android/internal/telephony/CallManager;->mBaseband:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sglte2"

    sget-object v3, Lcom/android/internal/telephony/CallManager;->mBaseband:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->IS_SGLTE_MODEM:Z

    .line 4340
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "CS_ACTIVE"

    aput-object v3, v0, v1

    const-string v1, "CS_HOLD"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "<invalid-2>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<invalid-3>"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IMS_ACTIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IMS_HOLD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<invalid-6>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<invalid-7>"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CS_ACTIVE_SESSION2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CS_HOLD_SESSION2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CallManager;->MODE2DDESCRIPTION:[Ljava/lang/String;

    return-void

    :cond_4
    move v0, v1

    .line 133
    goto :goto_0

    :cond_5
    move v0, v1

    .line 4324
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v2, p0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 119
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->acceptRingingCall:Lcom/android/internal/telephony/Call;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    .line 163
    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 166
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 169
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 172
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 193
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 196
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 199
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 202
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 205
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 208
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 211
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    .line 214
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 217
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 220
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 223
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 226
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 229
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 232
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    .line 235
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    .line 238
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    .line 242
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    .line 256
    new-instance v0, Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallManager$SelfCallTracker;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    .line 3168
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3169
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 4291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    .line 4450
    iput-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    .line 270
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    .line 278
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 280
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    const-string v0, "gsm.slot1.audio.state"

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "gsm.slot2.audio.state"

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMTdetection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isDSDADevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleHtcMessage(Landroid/os/Message;)V

    return-void
.end method

.method private avoidAutoChangeAudoiPath()Z
    .locals 3

    .prologue
    .line 4655
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "avoid_auto_change_audio_path"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1646
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 1647
    .local v6, "serviceState":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v8

    .line 1648
    .local v8, "subId":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 1649
    .local v4, "hasRingingCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 1650
    .local v2, "hasActiveCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 1651
    .local v3, "hasHoldingCall":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v0, v7

    .line 1652
    .local v0, "allLinesTaken":Z
    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1654
    .local v1, "fgCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v11, 0x3

    if-eq v6, v11, :cond_3

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v11, :cond_3

    :cond_0
    move v5, v7

    .line 1665
    .local v5, "result":Z
    :goto_1
    if-nez v5, :cond_1

    .line 1666
    const-string v7, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canDial serviceState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasRingingCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasActiveCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasHoldingCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " allLinesTaken="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fgCallState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_1
    return v5

    .end local v0    # "allLinesTaken":Z
    .end local v1    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    .end local v5    # "result":Z
    :cond_2
    move v0, v10

    .line 1651
    goto :goto_0

    .restart local v0    # "allLinesTaken":Z
    .restart local v1    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    move v5, v10

    .line 1654
    goto :goto_1
.end method

.method private checkIsFgPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4469
    move-object v0, p1

    .line 4470
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v1, :cond_0

    .line 4471
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4473
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private getCdmaSetAudioModeBeforeRadioOperation()Z
    .locals 6

    .prologue
    .line 4147
    const/4 v1, 0x0

    .line 4148
    .local v1, "operationRequired":Z
    sget-object v3, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 4149
    const/4 v2, 0x0

    .line 4151
    .local v2, "operationResult":Ljava/lang/Boolean;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4153
    :goto_0
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force setAudioMode - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    if-eqz v2, :cond_0

    .line 4155
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4158
    .end local v2    # "operationResult":Ljava/lang/Boolean;
    :cond_0
    return v1

    .line 4152
    .restart local v2    # "operationResult":Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 720
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3039
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3040
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3044
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;
    .locals 4
    .param p2, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;J)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3051
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3052
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 3057
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3064
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3065
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 3069
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;J)Lcom/android/internal/telephony/Call;
    .locals 5
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "J)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3077
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3078
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 3084
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2658
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2659
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2660
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2666
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2662
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2663
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    move-object v0, v2

    .line 2666
    goto :goto_1
.end method

.method private getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;
    .locals 6
    .param p2, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;J)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2672
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2673
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2674
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v3, :cond_0

    .line 2676
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2683
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2678
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2679
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 2683
    goto :goto_1
.end method

.method private getInCallAudioMode()I
    .locals 5

    .prologue
    .line 4452
    const/4 v1, 0x0

    .line 4453
    .local v1, "inCallMode":I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    .line 4454
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4455
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v3, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v3, :cond_0

    .line 4456
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallManager;->inCallAudioModeForPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 4460
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    if-eqz v3, :cond_2

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_2

    .line 4461
    const-string v3, "CallManager"

    const-string v4, "getInCallAudioMode set mode to CS_ACTIVE due to CSFB"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    const/4 v1, 0x1

    .line 4465
    :cond_2
    return v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getOffHookCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 4178
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4180
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 4189
    :goto_0
    return-object v1

    .line 4184
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4185
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 4186
    goto :goto_0

    .line 4189
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "p":Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 357
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v3, :cond_0

    .line 358
    move-object v1, v2

    .line 362
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 306
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object p0

    .line 311
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    .line 312
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_0
.end method

.method private handleHtcMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4125
    :goto_0
    return-void

    .line 4119
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4122
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4117
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasActiveCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4368
    const/4 v1, 0x0

    .line 4376
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4377
    .local v0, "call":Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4380
    :goto_1
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasActiveCall("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    return v1

    .line 4376
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4377
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasHoldingCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4385
    const/4 v1, 0x0

    .line 4397
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4398
    .local v0, "call":Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4401
    :goto_1
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHoldingCall("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    return v1

    .line 4397
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4398
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasMoreThanOneHoldingCall(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x1

    .line 3124
    const/4 v1, 0x0

    .line 3125
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3126
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 3129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 3132
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3088
    const/4 v1, 0x0

    .line 3089
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3090
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3091
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 3094
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x1

    .line 3105
    const/4 v1, 0x0

    .line 3106
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3107
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 3110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 3113
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private htcAnswerRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3178
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_2

    .line 3181
    :cond_0
    if-eqz p1, :cond_2

    .line 3182
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3183
    .local v1, "ringPhoneIndex":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 3184
    .local v0, "ringPhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v3, :cond_1

    .line 3185
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answer ring call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    :cond_1
    const/4 v2, 0x0

    .line 3190
    .local v2, "setupPreEngadge":Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    .line 3191
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eq v0, v3, :cond_2

    .line 3192
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3193
    const/4 v2, 0x1

    .line 3214
    .end local v0    # "ringPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "ringPhoneIndex":I
    .end local v2    # "setupPreEngadge":Z
    :cond_2
    :goto_0
    return-void

    .line 3197
    .restart local v0    # "ringPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "ringPhoneIndex":I
    .restart local v2    # "setupPreEngadge":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_5

    .line 3198
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eq v0, v3, :cond_4

    .line 3199
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3201
    const/4 v2, 0x1

    .line 3207
    :cond_4
    :goto_1
    if-eqz v2, :cond_2

    .line 3208
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3209
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 3205
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private htcBlockLoopbackMTdetection()V
    .locals 0

    .prologue
    .line 3395
    return-void
.end method

.method private htcConnectionNumberMatch(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 3283
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3284
    .local v0, "moNbr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3398
    const/4 v1, 0x0

    .line 3399
    .local v1, "value":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 3400
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3401
    .local v0, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_0

    .line 3402
    new-instance v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 3405
    .end local v0    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    .line 3406
    new-instance v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 3408
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_1
    return-object v1
.end method

.method private htcHangupAllDialingCalls(I)V
    .locals 7
    .param p1, "exceptCallIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3226
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3227
    if-eq v3, p1, :cond_1

    .line 3228
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 3229
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3230
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3231
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 3232
    const/4 v0, 0x0

    .line 3233
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 3234
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3236
    :cond_0
    if-nez v0, :cond_2

    .line 3238
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to hangup dialing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), except "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3241
    .restart local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_1

    .line 3245
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 3250
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_4
    return-void
.end method

.method private htcHangupLoopbackMTconnections(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;
    .param p3, "blockNumber"    # Ljava/lang/String;

    .prologue
    .line 3310
    const/4 v0, 0x0

    return-object v0
.end method

.method private htcMultiplePhoneSingleAudioCallChange(ZZ)V
    .locals 35
    .param p1, "onlyDisconnectConnection"    # Z
    .param p2, "onlyUnknownConnection"    # Z

    .prologue
    .line 3412
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v31, :cond_0

    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v31, :cond_48

    .line 3414
    :cond_0
    const/4 v4, 0x0

    .line 3416
    .local v4, "b":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3417
    .local v25, "ringingConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3418
    .local v5, "backgroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3420
    .local v18, "foregroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_1

    .line 3421
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "b":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3422
    .restart local v4    # "b":Ljava/lang/StringBuilder;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "State Change: isDisconnect= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ,isUnknown= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3426
    :cond_1
    const/16 v29, 0x0

    .line 3427
    .local v29, "totalGSMConnections":I
    const/16 v27, 0x0

    .line 3428
    .local v27, "totalCDMAConnections":I
    const/16 v30, 0x0

    .line 3431
    .local v30, "totalSubGSMConnections":I
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 3434
    const/16 v28, 0x0

    .line 3435
    .local v28, "totalConnections":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    .line 3436
    .local v6, "basePhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_3

    .line 3437
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " ;;phoneType= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ,ring:bg:fg= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3439
    :cond_3
    const/16 v24, 0x0

    .line 3440
    .local v24, "noConns":I
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .line 3441
    .local v9, "conns":Ljava/lang/Integer;
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 3443
    if-eqz v24, :cond_4

    .line 3444
    add-int/lit8 v28, v28, 0x1

    .line 3445
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 3446
    add-int/lit8 v27, v27, 0x1

    .line 3453
    :cond_4
    :goto_1
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_5

    .line 3454
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3457
    :cond_5
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .line 3458
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3459
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 3460
    if-eqz v24, :cond_6

    .line 3461
    add-int/lit8 v28, v28, 0x1

    .line 3463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 3465
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 3466
    add-int/lit8 v27, v27, 0x1

    .line 3473
    :cond_6
    :goto_2
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_7

    .line 3474
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3477
    :cond_7
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .line 3478
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3479
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 3480
    if-eqz v24, :cond_8

    .line 3481
    add-int/lit8 v28, v28, 0x1

    .line 3483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 3485
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 3486
    add-int/lit8 v27, v27, 0x1

    .line 3493
    :cond_8
    :goto_3
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_9

    .line 3494
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3497
    :cond_9
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_2

    .line 3498
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " ,isAudioOn= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-interface {v6, v0}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3447
    :cond_a
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 3448
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 3449
    :cond_b
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 3450
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 3467
    :cond_c
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 3468
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 3469
    :cond_d
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 3470
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 3487
    :cond_e
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 3488
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_3

    .line 3489
    :cond_f
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 3490
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 3501
    .end local v6    # "basePhone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v24    # "noConns":I
    :cond_10
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_12

    .line 3502
    const-string v31, " ;;currentRingIndex= "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_11

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3506
    :cond_11
    const-string v31, " ,currectActiveIndex= "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3511
    :cond_12
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_13

    .line 3512
    const-string v31, " ,PendHold"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    .line 3514
    .local v23, "needHold":Ljava/lang/Boolean;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3517
    .end local v23    # "needHold":Ljava/lang/Boolean;
    :cond_13
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_14

    .line 3518
    const-string v31, "CallManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :cond_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 3523
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "totalCDMAConnections= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "totalGSMConnections= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "totalSubGSMConnections= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_15

    .line 3528
    if-nez v27, :cond_15

    .line 3529
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_1=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3534
    :cond_15
    if-nez v29, :cond_16

    .line 3535
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 3536
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_2=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3543
    :cond_16
    :goto_5
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 3544
    if-nez v30, :cond_17

    .line 3545
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_2=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3556
    :cond_17
    :goto_6
    if-lez v28, :cond_43

    .line 3562
    const/4 v11, -0x1

    .line 3563
    .local v11, "currentPickUpIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_18

    .line 3564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 3565
    if-gez v11, :cond_1d

    .line 3566
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3567
    const/4 v11, -0x2

    .line 3588
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_19

    if-gez v11, :cond_3f

    .line 3591
    :cond_19
    const/4 v10, -0x1

    .line 3592
    .local v10, "currActivePhoneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1a

    .line 3593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3594
    if-gez v10, :cond_1a

    .line 3595
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3596
    const/4 v11, -0x2

    .line 3601
    :cond_1a
    const/16 v28, 0x0

    .line 3602
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1b
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_20

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3603
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_1b

    .line 3604
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 3539
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v10    # "currActivePhoneIndex":I
    .end local v11    # "currentPickUpIndex":I
    :cond_1c
    :try_start_1
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_1=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 3549
    :catch_0
    move-exception v13

    .line 3550
    .local v13, "ex":Ljava/lang/Exception;
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "switch to Slot1/Slot2 audio path exception "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3570
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v11    # "currentPickUpIndex":I
    :cond_1d
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_18

    .line 3571
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_1f

    .line 3572
    const/4 v10, -0x1

    .line 3573
    .restart local v10    # "currActivePhoneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3575
    if-eq v11, v10, :cond_1e

    .line 3576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3579
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3584
    .end local v10    # "currActivePhoneIndex":I
    :goto_9
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_7

    .line 3582
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto :goto_9

    .line 3607
    .restart local v10    # "currActivePhoneIndex":I
    :cond_20
    const/16 v26, 0x0

    .line 3608
    .local v26, "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .line 3609
    .local v3, "activePhoneIndex":I
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-le v0, v1, :cond_26

    .line 3611
    if-ltz v10, :cond_25

    .line 3612
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_24

    .line 3613
    move-object/from16 v26, v18

    .line 3652
    :cond_21
    :goto_a
    if-eqz v26, :cond_2d

    .line 3653
    const/16 v28, 0x0

    .line 3655
    const/16 v17, -0x1

    .line 3656
    .local v17, "firstPhoneActive":I
    const/16 v16, -0x1

    .line 3657
    .local v16, "firstConnActive":I
    const/16 v21, 0x0

    .local v21, "index":I
    :goto_b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_2c

    .line 3658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 3659
    add-int/lit8 v28, v28, 0x1

    .line 3660
    if-gez v17, :cond_22

    .line 3661
    move/from16 v17, v21

    .line 3665
    :cond_22
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3666
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_23

    .line 3667
    if-gez v16, :cond_23

    .line 3668
    move/from16 v16, v21

    .line 3657
    :cond_23
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 3616
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v16    # "firstConnActive":I
    .end local v17    # "firstPhoneActive":I
    .end local v21    # "index":I
    :cond_24
    move v3, v10

    goto :goto_a

    .line 3620
    :cond_25
    move-object/from16 v26, v18

    goto :goto_a

    .line 3623
    :cond_26
    if-lez v28, :cond_28

    .line 3625
    const/4 v3, 0x0

    .line 3626
    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_27

    .line 3627
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3631
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->avoidAutoChangeAudoiPath()Z

    move-result v31

    if-eqz v31, :cond_21

    .line 3632
    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    .line 3633
    move v3, v10

    goto :goto_a

    .line 3638
    :cond_28
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_29
    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3639
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_29

    .line 3640
    add-int/lit8 v28, v28, 0x1

    goto :goto_d

    .line 3643
    .end local v9    # "conns":Ljava/lang/Integer;
    :cond_2a
    if-lez v28, :cond_2b

    .line 3645
    move-object/from16 v26, v25

    goto/16 :goto_a

    .line 3649
    :cond_2b
    move-object/from16 v26, v5

    goto/16 :goto_a

    .line 3672
    .restart local v16    # "firstConnActive":I
    .restart local v17    # "firstPhoneActive":I
    .restart local v21    # "index":I
    :cond_2c
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_30

    .line 3673
    move/from16 v3, v17

    .line 3681
    .end local v16    # "firstConnActive":I
    .end local v17    # "firstPhoneActive":I
    .end local v21    # "index":I
    :cond_2d
    :goto_e
    if-eq v3, v10, :cond_2e

    .line 3682
    if-ltz v10, :cond_31

    .line 3683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3695
    :cond_2e
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v31, :cond_3d

    .line 3696
    const/4 v15, 0x0

    .line 3697
    .local v15, "fgConnections":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2f
    :goto_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_33

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3698
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_2f

    .line 3699
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 3676
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v15    # "fgConnections":I
    .restart local v16    # "firstConnActive":I
    .restart local v17    # "firstPhoneActive":I
    .restart local v21    # "index":I
    :cond_30
    move/from16 v3, v16

    goto :goto_e

    .line 3687
    .end local v16    # "firstConnActive":I
    .end local v17    # "firstPhoneActive":I
    .end local v21    # "index":I
    :cond_31
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_2e

    .line 3688
    move/from16 v0, v21

    if-eq v0, v3, :cond_32

    .line 3689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3687
    :cond_32
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 3702
    .end local v21    # "index":I
    .restart local v15    # "fgConnections":I
    :cond_33
    const/4 v8, 0x0

    .line 3703
    .local v8, "bgConnections":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_34
    :goto_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_35

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3704
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_34

    .line 3705
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 3709
    .end local v9    # "conns":Ljava/lang/Integer;
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v31

    if-nez v31, :cond_3d

    .line 3711
    add-int v31, v15, v8

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_3d

    .line 3712
    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v15, v0, :cond_3b

    .line 3715
    const/16 v20, 0x0

    .line 3719
    .local v20, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v20, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_38

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_38

    .line 3722
    const/16 v28, 0x2

    .line 3723
    const-string v31, "CallManager"

    const-string v32, "IMS and GSM/CDMA have active call at the same time."

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    .end local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_12
    move/from16 v0, v28

    if-le v8, v0, :cond_3d

    .line 3748
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_13
    if-lez v28, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_3d

    .line 3749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 3750
    .local v7, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_37

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_36

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_37

    .line 3752
    :cond_36
    if-lez v28, :cond_3c

    .line 3753
    add-int/lit8 v28, v28, -0x1

    .line 3748
    :cond_37
    :goto_14
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 3725
    .end local v7    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v21    # "index":I
    .restart local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_38
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_3a

    .line 3726
    move/from16 v0, v21

    if-eq v0, v3, :cond_39

    .line 3727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 3728
    .local v14, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v14, :cond_39

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_39

    .line 3730
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v31
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3732
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3733
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3734
    :try_start_4
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom fg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3725
    .end local v14    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_39
    :goto_16
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_15

    .line 3733
    .restart local v14    # "fgCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v32

    :try_start_5
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v32
    :try_end_6
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6 .. :try_end_6} :catch_1

    .line 3735
    :catch_1
    move-exception v13

    .line 3736
    .local v13, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom fg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ex:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3741
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v14    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3a
    const/16 v28, 0x1

    goto/16 :goto_12

    .line 3745
    .end local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v21    # "index":I
    :cond_3b
    const/16 v28, 0x2

    goto/16 :goto_12

    .line 3757
    .restart local v7    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v21    # "index":I
    :cond_3c
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    .line 3758
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom bg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_14

    .line 3759
    :catch_2
    move-exception v13

    .line 3760
    .restart local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom bg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ex:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 3772
    .end local v7    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "bgConnections":I
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v15    # "fgConnections":I
    .end local v21    # "index":I
    :cond_3d
    if-ne v3, v10, :cond_3e

    const/16 v31, -0x2

    move/from16 v0, v31

    if-ne v11, v0, :cond_41

    .line 3773
    :cond_3e
    if-ltz v3, :cond_3f

    .line 3774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3801
    .end local v3    # "activePhoneIndex":I
    .end local v10    # "currActivePhoneIndex":I
    .end local v26    # "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3f
    :goto_17
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_46

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v31

    .line 3803
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_40

    .line 3804
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-nez v32, :cond_40

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3806
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-nez v32, :cond_40

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v32

    if-eqz v32, :cond_40

    .line 3809
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 3810
    const-string v32, "CallManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pending Hold call execution "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3817
    :cond_40
    :goto_19
    :try_start_a
    monitor-exit v31
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3801
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_18

    .line 3778
    .end local v21    # "index":I
    .restart local v3    # "activePhoneIndex":I
    .restart local v10    # "currActivePhoneIndex":I
    .restart local v26    # "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_41
    if-ne v3, v10, :cond_3f

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-nez v31, :cond_3f

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3782
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v31

    if-eqz v31, :cond_3f

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-nez v31, :cond_3f

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3f

    .line 3786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    .line 3787
    .local v12, "currentSlot":I
    if-nez v12, :cond_42

    const/16 v31, 0x1

    :goto_1a
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v22

    .line 3788
    .local v22, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v22, :cond_3f

    .line 3789
    const/16 v31, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-eqz v31, :cond_3f

    .line 3790
    sget-object v31, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto/16 :goto_17

    .line 3787
    .end local v22    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_42
    const/16 v31, 0x0

    goto :goto_1a

    .line 3811
    .end local v3    # "activePhoneIndex":I
    .end local v10    # "currActivePhoneIndex":I
    .end local v12    # "currentSlot":I
    .end local v26    # "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "index":I
    :catch_3
    move-exception v13

    .line 3812
    .restart local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_b
    const-string v32, "CallManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pending Hold call execution "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", ex:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 3817
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    :catchall_1
    move-exception v32

    monitor-exit v31
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v32

    .line 3821
    .end local v11    # "currentPickUpIndex":I
    .end local v21    # "index":I
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_44

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3823
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3825
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_45

    .line 3826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3827
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3829
    :cond_45
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_46

    .line 3830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v31

    .line 3831
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3832
    monitor-exit v31

    .line 3829
    add-int/lit8 v21, v21, 0x1

    goto :goto_1b

    .line 3832
    :catchall_2
    move-exception v32

    monitor-exit v31
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v32

    .line 3837
    :cond_46
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_47

    .line 3839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_47

    .line 3840
    const-string v31, "CallManager"

    const-string v32, "Call Stete is IDLE, set both audio to OFF "

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3842
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3847
    :cond_47
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    .line 3848
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    .line 3849
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    .line 3852
    .end local v4    # "b":Ljava/lang/StringBuilder;
    .end local v5    # "backgroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "foregroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "index":I
    .end local v25    # "ringingConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "totalCDMAConnections":I
    .end local v28    # "totalConnections":I
    .end local v29    # "totalGSMConnections":I
    .end local v30    # "totalSubGSMConnections":I
    :cond_48
    return-void
.end method

.method private inCallAudioModeForPhone(Lcom/android/internal/telephony/Phone;)I
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4477
    const/4 v4, 0x0

    .line 4478
    .local v4, "ret":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hasActiveCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 4479
    .local v0, "hasActiveCall":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hasHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 4480
    .local v1, "hasHoldingCall":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->checkIsFgPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    .line 4482
    .local v2, "isFgPhone":Z
    const-string v6, "persist.radio.voice.modem.index"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4485
    .local v5, "voiceModemIndex":I
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inCallAudioModeForPhone( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ): phoneState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasActiveCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasHoldingCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isFgPhone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voiceModemIndex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4490
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 4492
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 4493
    .local v3, "phoneType":I
    if-eqz v0, :cond_0

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    .line 4495
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    .line 4498
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 4499
    packed-switch v3, :pswitch_data_0

    .line 4507
    if-eqz v5, :cond_2

    .line 4508
    const/16 v4, 0x100

    .line 4531
    .end local v3    # "phoneType":I
    :cond_1
    :goto_0
    return v4

    .line 4501
    .restart local v3    # "phoneType":I
    :pswitch_0
    const-string v6, "CallManager"

    const-string v7, "inCallAudioModeForPhone is meaningless for SIP"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4504
    :pswitch_1
    const/16 v4, 0x10

    .line 4505
    goto :goto_0

    .line 4510
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 4513
    :cond_3
    if-eqz v1, :cond_1

    .line 4514
    packed-switch v3, :pswitch_data_1

    .line 4522
    if-eqz v5, :cond_4

    .line 4523
    const/16 v4, 0x200

    goto :goto_0

    .line 4516
    :pswitch_2
    const-string v6, "CallManager"

    const-string v7, "inCallAudioModeForPhone is meaningless for SIP"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4519
    :pswitch_3
    const/16 v4, 0x20

    .line 4520
    goto :goto_0

    .line 4525
    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    .line 4499
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4514
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inCallModeToString(I)Ljava/lang/String;
    .locals 5
    .param p1, "inCallMode"    # I

    .prologue
    .line 4536
    const-string v2, "["

    .line 4537
    .local v2, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4539
    .local v0, "addOper":Z
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4540
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 4541
    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4542
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CallManager;->MODE2DDESCRIPTION:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4543
    const/4 v0, 0x1

    .line 4539
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4546
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4547
    return-object v2
.end method

.method private initCdmaSetAudioModeBeforeRadioOperation()V
    .locals 3

    .prologue
    .line 4131
    sget-object v1, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 4132
    const/4 v0, 0x0

    .line 4134
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.HtcBuildUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 4137
    :goto_0
    if-eqz v0, :cond_0

    .line 4139
    :try_start_1
    const-string v1, "cdmaSetAudioModeBeforeRadioOperation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4144
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_1
    return-void

    .line 4140
    .restart local v0    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4135
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isCallOnImsEnabled()Z
    .locals 2

    .prologue
    .line 4358
    const-string v0, "gsm.radio.calls.on.ims"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isDSDADevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4661
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 4662
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 4665
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInCallModeEnabled()Z
    .locals 1

    .prologue
    .line 4363
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->isCallOnImsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->IS_SGLTE_MODEM:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingingWithoutOffHookCalls()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4164
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4166
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4167
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getOffHookCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 4169
    :cond_0
    return v1
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "p1"    # Lcom/android/internal/telephony/Phone;
    .param p1, "p2"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 339
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "fgPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x0

    .line 4219
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4220
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneController;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4221
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.movial.ipphone.IPPhone"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 4222
    const/4 v2, 0x1

    .line 4227
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return v2

    .line 4225
    :catch_0
    move-exception v0

    .line 4226
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isVoiceOverIPCall(ZLcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p1, "answeredCall"    # Z
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 4193
    if-eqz p2, :cond_3

    .line 4195
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4196
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    .line 4198
    const-string v2, "net.gannet0.cellular"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4201
    .local v0, "ganLiteProperty":Ljava/lang/String;
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4204
    :cond_0
    const/4 v2, 0x1

    .line 4212
    .end local v0    # "ganLiteProperty":Ljava/lang/String;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    .line 4207
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v2, "CallManager"

    const-string v3, "Warning! Phone is invalid when OFFHOOK!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4210
    :cond_3
    const-string v2, "CallManager"

    const-string v3, "Warning! Call is invalid when OFFHOOK!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerForHtcPhoneStates(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4113
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4114
    return-void
.end method

.method private registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/16 v7, 0x73

    const/4 v6, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 729
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .line 730
    .local v1, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v1, :cond_0

    .line 731
    const-string v2, "CallManager"

    const-string v3, "This phone has already been registered."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .end local v1    # "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$1;)V

    .line 737
    .restart local v1    # "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const/16 v2, 0x65

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 741
    const/16 v2, 0x64

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 742
    const/16 v2, 0x66

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 743
    const/16 v2, 0x67

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 744
    const/16 v2, 0x68

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    const/16 v2, 0x69

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 746
    const/16 v2, 0x6a

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 747
    const/16 v2, 0x6b

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 748
    const/16 v2, 0x6d

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    const/16 v2, 0x6e

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 750
    const/16 v2, 0x70

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 751
    const/16 v2, 0x71

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 752
    const/16 v2, 0x72

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 753
    const/16 v2, 0x75

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 754
    const/16 v2, 0x76

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    const/16 v2, 0x3ea

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 758
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v6, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 761
    :cond_1
    const/16 v2, 0x77

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    :cond_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 766
    const/16 v2, 0x6f

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    const/16 v2, 0x74

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 768
    const/16 v2, 0x6c

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    invoke-interface {p1, v1, v7, v5}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 771
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->initCdmaSetAudioModeBeforeRadioOperation()V

    .line 776
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 777
    const/16 v2, 0x78

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 780
    :cond_4
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 781
    invoke-interface {p1, v1, v7, v5}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 784
    const/16 v2, 0x79

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 785
    const/16 v2, 0x7a

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForModifyCallResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_5
    :goto_1
    const/16 v2, 0xc8

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 796
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/CallManager;->registerForHtcPhoneStates(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForModifyCallRequest: CallStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setAudioPathOff(I)V
    .locals 4
    .param p1, "mSlot"    # I

    .prologue
    .line 4646
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioPathOff(), mSlot= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4648
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 4649
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioPathOff(), set Phone audio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to false;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4652
    :cond_0
    return-void
.end method

.method private support2Hold1ActiveCall()Z
    .locals 3

    .prologue
    .line 4552
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_two_hold_one_active_call"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 801
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .line 802
    .local v1, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v1, :cond_0

    .line 803
    const-string v2, "CallManager"

    const-string v3, "Could not find Phone handler for unregistration"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 810
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 811
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 812
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 813
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 814
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 815
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 816
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 817
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 818
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 819
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 820
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 821
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 822
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 823
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 824
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 827
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 830
    :cond_1
    const/16 v2, 0x77

    invoke-interface {p1, v6, v2, v6}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 834
    :cond_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 835
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 836
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 837
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 838
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 842
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 843
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    .line 844
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 846
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForModifyCallRequest(Landroid/os/Handler;)V

    .line 847
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForModifyCallResponse(Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_4
    :goto_1
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    const-string v3, "unregisterForModifyCallRequest "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateInCallAudioMode(ILandroid/media/AudioManager;)Z
    .locals 1
    .param p1, "newAudioMode"    # I
    .param p2, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 4447
    const/4 v0, 0x0

    return v0
.end method

.method private updateInCallAudioModeForAnswer(ILandroid/media/AudioManager;Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "newAudioMode"    # I
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "ringingPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4431
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 873
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;I)V

    .line 874
    return-void
.end method

.method public acceptCall(Lcom/android/internal/telephony/Call;I)V
    .locals 19
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 894
    .local v12, "ringingPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->acceptRingingCall:Lcom/android/internal/telephony/Call;

    .line 896
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v15, :cond_0

    .line 897
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "acceptCall api with calltype "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "acceptCall("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v15, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    const/4 v14, 0x1

    .line 905
    .local v14, "tryForceSetupAudioMode":Z
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "acceptCall-hasActiveFgCall():  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 909
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 910
    .local v8, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 911
    .local v3, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 912
    .local v4, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v11, 0x1

    .line 913
    .local v11, "hasBgCall":Z
    :goto_0
    if-ne v3, v12, :cond_9

    const/4 v13, 0x1

    .line 915
    .local v13, "sameChannel":Z
    :goto_1
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v15, :cond_1

    .line 916
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "hasBgCall: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "sameChannel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_1
    const/4 v14, 0x0

    .line 923
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v15, :cond_16

    .line 924
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v15

    .line 925
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 926
    .local v2, "acceptRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 928
    const/4 v10, 0x0

    .line 929
    .local v10, "hangupCall":Lcom/android/internal/telephony/Call;
    if-eqz v13, :cond_a

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 974
    :goto_2
    if-eqz v10, :cond_2

    .line 976
    :try_start_1
    const-string v16, "CallManager"

    const-string v17, "acceptCall-htcHangupWithoutAnswerOrResumeCall"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    .end local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupAllDialingCalls(I)V

    .line 1015
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    .end local v2    # "acceptRingCallIndex":I
    .end local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v11    # "hasBgCall":Z
    .end local v13    # "sameChannel":Z
    :cond_3
    :goto_4
    if-eqz v14, :cond_4

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getCdmaSetAudioModeBeforeRadioOperation()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1069
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/CallManager;->setAudioMode(ZLcom/android/internal/telephony/Call;)V

    .line 1076
    :cond_4
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    .line 1080
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v15, :cond_5

    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v15, :cond_6

    .line 1082
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->htcAnswerRingingCall(Lcom/android/internal/telephony/Call;)V

    .line 1085
    :cond_6
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v15, :cond_7

    .line 1086
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "End acceptCall("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const-string v15, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_7
    return-void

    .line 912
    .restart local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v8    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 913
    .restart local v11    # "hasBgCall":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 936
    .restart local v2    # "acceptRingCallIndex":I
    .restart local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    .restart local v13    # "sameChannel":Z
    :cond_a
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x40000000    # 2.0f

    sget v17, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 940
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDualGSMtotalConnections = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 943
    const-string v16, "CallManager"

    const-string v17, "1 Active and 2 Holds, hangup active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_b
    :goto_5
    if-nez v13, :cond_11

    const/4 v14, 0x1

    :goto_6
    goto/16 :goto_2

    .line 944
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 945
    if-eqz v11, :cond_d

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 947
    const-string v16, "CallManager"

    const-string v17, "1 Active and 1 Hold on same line, incoming ringing call, hangup active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1015
    .end local v2    # "acceptRingCallIndex":I
    .end local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v16

    .line 948
    .restart local v2    # "acceptRingCallIndex":I
    .restart local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_d
    if-nez v13, :cond_b

    .line 949
    if-eqz v3, :cond_e

    :try_start_4
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 951
    const/4 v10, 0x0

    .line 952
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->rejectCall(Lcom/android/internal/telephony/Call;)V

    .line 953
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 954
    const-string v16, "CallManager"

    const-string v17, "active:fg> Active ,ring> waiting; ringcall: bg>Hold , ring> incoming, on different line, ringcall is not same active call, reject waiting call and then switch active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 957
    :cond_e
    const/4 v10, 0x0

    .line 958
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 959
    const-string v16, "CallManager"

    const-string v17, "1 Active and 1 Hold on different line, ringing is not same active call, hold active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 964
    :cond_f
    const/4 v10, 0x0

    .line 965
    const-string v16, "CallManager"

    const-string v17, "Don\'t hangup call, set hangupCall=null"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 969
    :cond_10
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active call has fg and bg call,since hangup active fg call first."

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    goto :goto_5

    .line 972
    :cond_11
    const/4 v14, 0x0

    goto :goto_6

    .line 978
    :catch_0
    move-exception v7

    .line 979
    .local v7, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "acceptCall hangup: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 984
    .end local v7    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_12
    if-nez v13, :cond_2

    .line 985
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 986
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 987
    .local v6, "bgRingingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 988
    const-string v16, "CallManager"

    const-string v17, "acceptCall-bgRingingCall==IDLE"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v16

    if-nez v16, :cond_13

    .line 990
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active call->active call is under incall mode since switchHoldingAndActive first and then accept ringcall"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1000
    :goto_7
    const/4 v14, 0x1

    .line 1001
    goto/16 :goto_3

    .line 993
    :cond_13
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active call is dial, not need to switch call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 997
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 998
    .local v5, "bgRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1003
    .end local v5    # "bgRingCallIndex":I
    .end local v6    # "bgRingingCall":Lcom/android/internal/telephony/Call;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 1004
    .local v9, "fgCdmaCall":Lcom/android/internal/telephony/Call;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1006
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active cdma call->hang up cdma fg call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1017
    .end local v2    # "acceptRingCallIndex":I
    .end local v9    # "fgCdmaCall":Lcom/android/internal/telephony/Call;
    :cond_16
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v15, :cond_1b

    .line 1018
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v15

    .line 1019
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1020
    .restart local v2    # "acceptRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1021
    if-eqz v13, :cond_18

    .line 1022
    if-eqz v11, :cond_17

    .line 1023
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1047
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupAllDialingCalls(I)V

    .line 1049
    monitor-exit v15

    goto/16 :goto_4

    .end local v2    # "acceptRingCallIndex":I
    :catchall_1
    move-exception v16

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v16

    .line 1029
    .restart local v2    # "acceptRingCallIndex":I
    :cond_18
    if-nez v11, :cond_1a

    .line 1030
    :try_start_6
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 1031
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1032
    .restart local v6    # "bgRingingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 1033
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1039
    :goto_9
    const/4 v14, 0x1

    .line 1040
    goto :goto_8

    .line 1036
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1037
    .restart local v5    # "bgRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    .line 1043
    .end local v5    # "bgRingCallIndex":I
    .end local v6    # "bgRingingCall":Lcom/android/internal/telephony/Call;
    :cond_1a
    const/4 v14, 0x1

    goto :goto_8

    .line 1052
    .end local v2    # "acceptRingCallIndex":I
    :cond_1b
    const/4 v14, 0x1

    .line 1054
    if-eqz v13, :cond_1c

    if-eqz v11, :cond_1c

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_4

    .line 1056
    :cond_1c
    if-nez v13, :cond_1d

    if-nez v11, :cond_1d

    .line 1057
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_4

    .line 1058
    :cond_1d
    if-nez v13, :cond_3

    if-eqz v11, :cond_3

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_4
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v2, 0x0

    .line 1344
    const/4 v0, 0x0

    .line 1345
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1347
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1351
    :cond_0
    if-eqz p1, :cond_1

    .line 1352
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1356
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1363
    :cond_2
    :goto_0
    return v2

    .line 1360
    :cond_3
    instance-of v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_4

    .line 1361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 1363
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public canConference(Lcom/android/internal/telephony/Call;J)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subId"    # J

    .prologue
    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1380
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1381
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1384
    :cond_0
    if-eqz p1, :cond_1

    .line 1385
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1388
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1682
    const/4 v0, 0x0

    .line 1683
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1685
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1689
    :cond_0
    if-eqz p1, :cond_1

    .line 1690
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1693
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;J)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subId"    # J

    .prologue
    .line 1702
    const/4 v0, 0x0

    .line 1703
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1705
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1706
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1709
    :cond_0
    if-eqz p1, :cond_1

    .line 1710
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1713
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 1619
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1620
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1622
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public clearDisconnected(J)V
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1629
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1630
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1631
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1634
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1401
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    .line 1403
    .local v2, "subId":J
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1404
    const-string v1, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conference("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1409
    .local v0, "fgPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_4

    .line 1410
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_2

    .line 1411
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 1421
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_1

    .line 1422
    const-string v1, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End conference("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_1
    return-void

    .line 1412
    .restart local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1413
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 1415
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1418
    :cond_4
    const-string v1, "CallManager"

    const-string v4, "conference: fgPhone=null"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;IZ)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;IZ)Lcom/android/internal/telephony/Connection;
    .locals 19
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "videoState"    # I
    .param p4, "dialFromCsDomain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1449
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1450
    .local v5, "basePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v12

    .line 1453
    .local v12, "subId":J
    const/4 v9, 0x0

    .line 1455
    .local v9, "holdActivePhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v16, :cond_0

    .line 1456
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " dial("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " subId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const-string v16, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    .line 1463
    .local v14, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-nez v16, :cond_4

    .line 1465
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1471
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1472
    .local v10, "newDialString":Ljava/lang/String;
    invoke-interface {v5, v10}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1473
    const/4 v11, 0x0

    .line 1594
    .end local v10    # "newDialString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v11

    .line 1475
    .restart local v10    # "newDialString":Ljava/lang/String;
    :cond_3
    new-instance v16, Lcom/android/internal/telephony/CallStateException;

    const-string v17, "cannot dial in current state"

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1483
    .end local v10    # "newDialString":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1487
    .local v4, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-nez v16, :cond_d

    const/4 v8, 0x1

    .line 1490
    .local v8, "hasBgCall":Z
    :goto_1
    const-string v17, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "hasBgCall: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " sameChannel:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-ne v4, v5, :cond_e

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1495
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneController;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1501
    :cond_5
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .line 1502
    .local v15, "vPhone":Lcom/android/internal/telephony/Phone;
    if-eq v4, v5, :cond_7

    if-eqz v15, :cond_6

    if-eq v15, v4, :cond_7

    .line 1505
    :cond_6
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v16, :cond_12

    .line 1507
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x40000000    # 2.0f

    sget v17, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1511
    if-eqz v8, :cond_f

    .line 1512
    const-string v16, "CallManager"

    const-string v17, "1 active and 1 hold on same line, hangup active call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    .end local v4    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v8    # "hasBgCall":Z
    .end local v15    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_7
    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v16

    move/from16 v3, p4

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;ILandroid/os/Bundle;Z)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 1563
    .local v11, "result":Lcom/android/internal/telephony/Connection;
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v16, :cond_8

    .line 1564
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "End dial("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v16, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_8
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v16, :cond_9

    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v16, :cond_2

    .line 1571
    :cond_9
    if-eqz v11, :cond_2

    .line 1572
    if-eqz v9, :cond_a

    .line 1573
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1575
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1578
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 1579
    const-string v16, "CallManager"

    const-string v17, "Dial, set activePhone to false "

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1582
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1583
    .local v6, "basePhoneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1585
    const-string v16, "CallManager"

    const-string v17, "Dial, set dialPhone to true "

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto/16 :goto_0

    .line 1487
    .end local v6    # "basePhoneIndex":I
    .end local v11    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v4    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1490
    .restart local v8    # "hasBgCall":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1515
    .restart local v15    # "vPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v7

    .line 1516
    .local v7, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dial hangup: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1520
    .end local v7    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_f
    const-string v16, "CallManager"

    const-string v17, "1 active and 1 hold on different line, Switch active call to hold."

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    move-object v9, v4

    goto/16 :goto_3

    .line 1525
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 1526
    const-string v16, "CallManager"

    const-string v17, "Unable to dial due to both fg+bg active"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1530
    :cond_11
    if-nez v8, :cond_7

    .line 1531
    const-string v16, "CallManager"

    const-string v17, "Switch"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    move-object v9, v4

    goto/16 :goto_3

    .line 1537
    :cond_12
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v16, :cond_13

    .line 1538
    if-nez v8, :cond_7

    .line 1539
    const-string v16, "CallManager"

    const-string v17, "Switch"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    move-object v9, v4

    goto/16 :goto_3

    .line 1545
    :cond_13
    if-eqz v8, :cond_14

    .line 1546
    const-string v16, "CallManager"

    const-string v17, "Hangup"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_3

    .line 1549
    :cond_14
    const-string v16, "CallManager"

    const-string v17, "Switch"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_3
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 1612
    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1729
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1730
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1738
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1739
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_2
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 5

    .prologue
    .line 2603
    const/4 v0, 0x0

    .line 2604
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_4

    .line 2606
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 2608
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2609
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 2611
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2612
    .local v2, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_3

    .line 2614
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2618
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v3, v4, :cond_1

    .line 2619
    const/4 v0, 0x0

    .line 2636
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2637
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_5

    const/4 v0, 0x0

    .line 2641
    :cond_2
    :goto_2
    return-object v0

    .line 2615
    .restart local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 2616
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CallManager"

    const-string v4, "getImsActiveFgCall, get null point exception..."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2627
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :catch_1
    move-exception v1

    .line 2628
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "CallManager"

    const-string v4, "getActiveFgCall, get null point exception..."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2622
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2633
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 2637
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2
.end method

.method public getActiveFgCall(J)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2645
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2646
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2647
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2648
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2652
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 2648
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 2865
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2867
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2868
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2871
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2875
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2877
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2878
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2881
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2495
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_5

    .line 2497
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2498
    .local v0, "bgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2499
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 2500
    const/4 v1, 0x0

    .line 2502
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 2503
    .local v3, "singleCall":Lcom/android/internal/telephony/Call;
    if-eq v3, v1, :cond_2

    .line 2504
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2507
    .end local v3    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 2508
    .restart local v3    # "singleCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2510
    .end local v3    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2513
    .end local v0    # "bgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    .end local v1    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v4

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2914
    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v7, :cond_5

    .line 2916
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    .local v2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2919
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    .line 2920
    const/4 v3, 0x0

    .line 2922
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 2923
    .local v6, "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_2

    if-eq v6, v3, :cond_2

    .line 2924
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2925
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2929
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 2930
    .restart local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_4

    .line 2931
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2932
    .restart local v1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2940
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v2    # "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v3    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2941
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_7

    .line 2942
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 2944
    .end local v0    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_6
    :goto_2
    return-object v2

    .restart local v0    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method public getBgCallConnections(J)Ljava/util/List;
    .locals 3
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2952
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2953
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2954
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2956
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 673
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 677
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBgPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 688
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2889
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2890
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2893
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallConnections(J)Ljava/util/List;
    .locals 3
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2901
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2902
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2903
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2905
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    .line 2964
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2965
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2966
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2968
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgCallLatestConnection(J)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2976
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2977
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2978
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2980
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 646
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 650
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 661
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2704
    const/4 v0, 0x0

    .line 2705
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-boolean v9, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v9, :cond_c

    .line 2707
    :cond_0
    const/4 v1, 0x0

    .line 2708
    .local v1, "callFound":Z
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v9, :cond_3

    .line 2710
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2711
    if-eqz v0, :cond_1

    .line 2712
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_6

    move v1, v7

    .line 2714
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 2716
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 2717
    .local v5, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_8

    .line 2718
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2719
    if-eqz v0, :cond_2

    .line 2720
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v9, v10, :cond_7

    move v1, v7

    .line 2722
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2723
    const/4 v0, 0x0

    .line 2735
    .end local v5    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_2
    if-nez v1, :cond_9

    .line 2736
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2737
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_4

    .line 2738
    const/4 v3, 0x0

    .line 2740
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 2741
    .local v6, "singleCall":Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_5

    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_5

    .line 2742
    move-object v0, v6

    .line 2743
    const/4 v1, 0x1

    goto :goto_3

    .end local v3    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_6
    move v1, v8

    .line 2712
    goto :goto_0

    .restart local v5    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_7
    move v1, v8

    .line 2720
    goto :goto_1

    .line 2726
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 2731
    .end local v5    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v2

    .line 2732
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CallManager"

    const-string v8, "getFirstActiveBgCall, get null point exception..."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2747
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    if-nez v1, :cond_a

    .line 2748
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2756
    .end local v1    # "callFound":Z
    :cond_a
    :goto_4
    if-nez v0, :cond_b

    .line 2757
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v7, :cond_d

    const/4 v0, 0x0

    .line 2761
    :cond_b
    :goto_5
    return-object v0

    .line 2752
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_4

    .line 2757
    :cond_d
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_5
.end method

.method public getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2779
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2780
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneHoldingCall(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2781
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2789
    :cond_0
    :goto_0
    return-object v0

    .line 2783
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2784
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2785
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    .line 2811
    const/4 v0, 0x0

    .line 2812
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v5, :cond_7

    .line 2814
    :cond_0
    const/4 v2, 0x0

    .line 2815
    .local v2, "firstCall":Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 2816
    .local v1, "callFound":Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 2817
    .local v4, "singleCall":Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    .line 2818
    if-nez v2, :cond_2

    .line 2819
    move-object v2, v4

    .line 2821
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_3

    .line 2822
    const/4 v1, 0x1

    goto :goto_0

    .line 2825
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2826
    move-object v0, v4

    .line 2827
    const/4 v1, 0x1

    goto :goto_0

    .line 2832
    .end local v4    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_4
    if-nez v0, :cond_5

    .line 2833
    move-object v0, v2

    .line 2841
    .end local v1    # "callFound":Z
    .end local v2    # "firstCall":Lcom/android/internal/telephony/Call;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 2842
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_8

    const/4 v0, 0x0

    .line 2846
    :cond_6
    :goto_2
    return-object v0

    .line 2837
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 2842
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2
.end method

.method public getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2850
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2851
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2852
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2853
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2857
    :cond_0
    :goto_0
    return-object v0

    .line 2853
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2477
    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_2

    .line 2479
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2480
    .local v1, "fgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2481
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    .line 2482
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2484
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2487
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "fgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1807
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    .line 1812
    :goto_0
    return v0

    .line 1809
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    .line 1812
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1755
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneInCall(J)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 510
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegistrationHandler(Lcom/android/internal/telephony/Phone;)Landroid/os/Handler;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4674
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 4675
    .local v0, "handler":Landroid/os/Handler;
    return-object v0
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 700
    .local v0, "ringCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 704
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingingPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 436
    const/4 v2, 0x1

    .line 438
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 439
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 440
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    .line 442
    move v2, v3

    .line 457
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    .line 444
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 447
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 449
    :cond_3
    move v2, v3

    goto :goto_0

    .line 451
    :cond_4
    if-ne v3, v5, :cond_0

    .line 452
    if-ne v2, v6, :cond_0

    .line 453
    move v2, v3

    goto :goto_0
.end method

.method public getServiceState(J)I
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 464
    const/4 v2, 0x1

    .line 466
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 467
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 468
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 469
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    .line 471
    move v2, v3

    .line 487
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    .line 473
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 476
    if-eq v2, v6, :cond_3

    if-ne v2, v7, :cond_0

    .line 478
    :cond_3
    move v2, v3

    goto :goto_0

    .line 480
    :cond_4
    if-ne v3, v6, :cond_0

    .line 481
    if-ne v2, v7, :cond_0

    .line 482
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 6

    .prologue
    .line 372
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 374
    .local v3, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 376
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_3

    .line 378
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 379
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 380
    .local v0, "cur":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v4, :cond_2

    .line 381
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 383
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 384
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v4, :cond_0

    .line 385
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 392
    .end local v0    # "cur":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_4

    .line 393
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 394
    :cond_4
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_0

    .line 395
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 401
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_5
    return-object v3
.end method

.method public getState(J)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 411
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 413
    .local v2, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 414
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 415
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 416
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 417
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 418
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 422
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1276
    const/4 v2, 0x0

    .line 1277
    .local v2, "foregroundPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 1279
    .local v0, "backgroundPhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v4, :cond_0

    .line 1280
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupForegroundResumeBackground("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1285
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1286
    if-eqz p1, :cond_2

    .line 1287
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1289
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_7

    .line 1291
    :cond_1
    invoke-static {v2, v0}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1292
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-handle same phone case"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1294
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-(gsm) hang up active fg call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1332
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v4, :cond_3

    .line 1333
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End hangupForegroundResumeBackground("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_3
    return-void

    .line 1298
    :cond_4
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-(cdma) switch help call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1302
    :cond_5
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-handle NOT same phone case"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :try_start_0
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-Hangup active fg call WithoutAnswerOrResumeCall"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    .line 1306
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1307
    .local v3, "mActiveFgPhone":Lcom/android/internal/telephony/Phone;
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-Hangup active fg call WithoutAnswerOrResumeCall-set hangup call audio to OFF first."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    if-eqz v3, :cond_6

    .line 1309
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    .end local v3    # "mActiveFgPhone":Lcom/android/internal/telephony/Phone;
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1311
    :catch_0
    move-exception v1

    .line 1312
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupForegroundResumeBackground hangup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1319
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_7
    if-ne v2, v0, :cond_8

    .line 1320
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_0

    .line 1323
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1324
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2543
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_4

    .line 2545
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2546
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 2547
    const/4 v0, 0x0

    .line 2549
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 2550
    .local v2, "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2559
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasActiveBgCall(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2521
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_3

    .line 2523
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2524
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2527
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    move v1, v2

    .line 2524
    goto :goto_0

    .line 2527
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public hasActiveFgCall(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 3010
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_4

    .line 3012
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3013
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 3014
    const/4 v0, 0x0

    .line 3016
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 3017
    .local v2, "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 3023
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2988
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_3

    .line 2990
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2991
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 2994
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    move v1, v2

    .line 2991
    goto :goto_0

    .line 2994
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public hasDisconnectedFgCall(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3280
    return-void
.end method

.method public htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3347
    const/4 v0, 0x0

    return v0
.end method

.method public htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3351
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    .line 3352
    .local v0, "blocked":Z
    if-nez v0, :cond_0

    .line 3353
    if-eqz v0, :cond_0

    .line 3355
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block ring call : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3366
    :cond_0
    :goto_0
    return v0

    .line 3359
    :catch_0
    move-exception v1

    .line 3361
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to block ring call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3217
    if-eqz p1, :cond_0

    .line 3218
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3219
    .local v0, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_0

    .line 3220
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V

    .line 3223
    .end local v0    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_0
    return-void
.end method

.method public isImsPhoneActive()Z
    .locals 4

    .prologue
    .line 3141
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3142
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 3144
    const/4 v2, 0x1

    .line 3147
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isImsPhoneIdle()Z
    .locals 4

    .prologue
    .line 3155
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3156
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 3158
    const/4 v2, 0x1

    .line 3161
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2449
    return-void
.end method

.method public registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2430
    return-void
.end method

.method public registerForCallModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2441
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2280
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2357
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1945
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1946
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2336
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2160
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2260
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2240
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2031
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2318
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2142
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2122
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2010
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2074
    return-void
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2419
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1970
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2090
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2053
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2177
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2303
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2375
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2197
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2220
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1986
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2101
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 527
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 530
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 535
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 547
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1

    .line 549
    const-string v2, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assign mDefaultPhone in PhoneConstants.SUB1 case from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 555
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0, v2, v4, v5}, Lcom/android/internal/telephony/PhoneController;->registerImsCall(Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 566
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 569
    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_4

    .line 571
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v2

    .line 572
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v2, v3

    .line 581
    :cond_5
    return v2

    .line 538
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 539
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 540
    .local v1, "firstPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 541
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 576
    .end local v1    # "firstPhone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1101
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1102
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    if-eqz p1, :cond_2

    .line 1106
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1107
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1112
    .end local v0    # "ringingPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_1

    .line 1113
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_1
    return-void

    .line 1109
    :cond_2
    const-string v1, "CallManager"

    const-string v2, "rejectCall--get null..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1925
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1926
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1927
    const/4 v0, 0x1

    .line 1929
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1843
    const/4 v0, 0x0

    .line 1845
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1846
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1851
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1852
    const/4 v0, 0x1

    .line 1855
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    .line 1856
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_2
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 1768
    const-string v0, "CallManager"

    const-string v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioFocusEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 4293
    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    if-eq v3, p1, :cond_0

    .line 4294
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    .line 4295
    const/4 v2, -0x1

    .line 4296
    .local v2, "streamType":I
    sget-object v3, Lcom/android/internal/telephony/CallManager$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4304
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    if-eqz v3, :cond_0

    .line 4305
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4306
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 4312
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "streamType":I
    :cond_0
    :goto_1
    return-void

    .line 4298
    .restart local v2    # "streamType":I
    :pswitch_0
    const/4 v2, 0x2

    .line 4299
    goto :goto_0

    .line 4301
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4307
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4308
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 4296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioMode(II)V
    .locals 0
    .param p1, "phoneType"    # I
    .param p2, "AudioMode"    # I

    .prologue
    .line 4287
    return-void
.end method

.method public setAudioMode(Z)V
    .locals 1
    .param p1, "answerCall"    # Z

    .prologue
    .line 4237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(ZLcom/android/internal/telephony/Call;)V

    .line 4238
    return-void
.end method

.method public setAudioMode(ZLcom/android/internal/telephony/Call;)V
    .locals 8
    .param p1, "answerCall"    # Z
    .param p2, "ringCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x2

    .line 4242
    if-eqz p1, :cond_0

    .line 4243
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4244
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 4282
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 4245
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4247
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 4249
    const-string v5, "CallManager"

    const-string v6, "setAudioMode due to answerCall"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    move-object v3, p2

    .line 4251
    .local v3, "targetCall":Lcom/android/internal/telephony/Call;
    if-nez v3, :cond_2

    .line 4252
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4255
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_4

    .line 4258
    :cond_3
    const-string v4, "CallManager"

    const-string v5, "Invalid targetCall or targetCall.getPhone()!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4262
    :cond_4
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/CallManager;->isVoiceOverIPCall(ZLcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v2, 0x3

    .line 4267
    .local v2, "newAudioMode":I
    :goto_1
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode due to answerCall: SET_MODE_BEFORE_ANSWER: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SET_MODE_BEFORE_ANSWER:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SET_MODE_BEFORE_ANSWER:Z

    if-eqz v5, :cond_5

    if-eq v4, v2, :cond_0

    .line 4270
    :cond_5
    const-string v5, "CallManager"

    const-string v6, "requestAudioFocus & setAudioMode right after answer call."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    iget-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    if-eqz v5, :cond_6

    .line 4273
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 4276
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/android/internal/telephony/CallManager;->updateInCallAudioModeForAnswer(ILandroid/media/AudioManager;Lcom/android/internal/telephony/Phone;)Z

    .line 4277
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .end local v2    # "newAudioMode":I
    :cond_7
    move v2, v4

    .line 4262
    goto :goto_1
.end method

.method public setEchoSuppressionEnabled()V
    .locals 2

    .prologue
    .line 1819
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1820
    const-string v0, "CallManager"

    const-string v1, " setEchoSuppression()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1825
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    .line 1828
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1829
    const-string v0, "CallManager"

    const-string v1, "End setEchoSuppression()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_2
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1782
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1783
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1791
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1792
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_2
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1872
    const/4 v0, 0x0

    .line 1874
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1875
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1880
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1881
    const/4 v0, 0x1

    .line 1884
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    .line 1885
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_2
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1897
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1898
    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1904
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1905
    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_2
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 1137
    const/4 v1, 0x0

    .line 1138
    .local v1, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 1140
    .local v3, "heldPhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_0

    .line 1141
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchHoldingAndActive("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1146
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1149
    :cond_1
    if-eqz p1, :cond_2

    .line 1150
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1153
    :cond_2
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchHoldingAndActive, activePhone= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", heldPhone= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v6, :cond_14

    .line 1158
    :cond_3
    invoke-static {v3, v1}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1159
    if-eqz v1, :cond_4

    .line 1160
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, same phone-switch active call to hold/unhold"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1162
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1163
    .local v0, "activeCallIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1164
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1165
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    .end local v0    # "activeCallIndex":I
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_5

    .line 1262
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End switchHoldingAndActive("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_5
    return-void

    .line 1165
    .restart local v0    # "activeCallIndex":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1169
    .end local v0    # "activeCallIndex":I
    :cond_6
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, handle NOT same phone case."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eqz v1, :cond_a

    .line 1172
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_a

    .line 1173
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1174
    .local v5, "index":I
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1175
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1176
    if-ltz v5, :cond_8

    .line 1177
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    .line 1180
    :cond_7
    const/4 v5, -0x2

    .line 1183
    :cond_8
    if-ltz v5, :cond_9

    .line 1184
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, switch active call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1187
    :cond_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1202
    .end local v5    # "index":I
    :cond_a
    :goto_1
    if-eqz v3, :cond_4

    .line 1203
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, handle held call."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_b

    .line 1206
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1207
    .local v2, "bgCall":Lcom/android/internal/telephony/Call;
    if-ne v2, p1, :cond_11

    .line 1208
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, bgCall == heldCall, switch held call"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1218
    .end local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_b
    :goto_2
    if-eqz v1, :cond_12

    .line 1219
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1220
    if-eqz v1, :cond_d

    .line 1221
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v7}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1223
    :cond_c
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, set activePhone to false"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1228
    :cond_d
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1229
    .local v4, "heldPhoneIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Phone;

    iput-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 1230
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_e

    .line 1231
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, set heldPhone to true"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1234
    :cond_e
    monitor-exit v6

    goto/16 :goto_0

    .end local v4    # "heldPhoneIndex":I
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 1187
    .restart local v5    # "index":I
    :catchall_2
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 1190
    :cond_f
    if-ltz v5, :cond_a

    .line 1191
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1192
    :try_start_5
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_10

    .line 1194
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, activePhone.getRingingCall().isIdle()= false"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :cond_10
    monitor-exit v6

    goto/16 :goto_1

    :catchall_3
    move-exception v7

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v7

    .line 1211
    .end local v5    # "index":I
    .restart local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_b

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-ne v6, p1, :cond_b

    .line 1213
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, heldPhone.getForegroundCall() == heldCall"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_2

    .line 1236
    .end local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_12
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1237
    :try_start_6
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1238
    .restart local v4    # "heldPhoneIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Phone;

    iput-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 1239
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_13

    .line 1240
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, set heldPhone to true"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1243
    :cond_13
    monitor-exit v6

    goto/16 :goto_0

    .end local v4    # "heldPhoneIndex":I
    :catchall_4
    move-exception v7

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v7

    .line 1250
    :cond_14
    if-eqz v1, :cond_15

    .line 1251
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1254
    :cond_15
    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_4

    .line 1255
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_0
.end method

.method public switchSingleLineHoldingAndActiveCall(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4556
    const/4 v0, 0x0

    .line 4557
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 4559
    .local v2, "heldPhone":Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .line 4561
    .local v4, "mTurnOnAutioPath":Z
    const-string v5, "CallManager"

    const-string v6, "switch SingleLine HoldingAndActiveCall()"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v5, :cond_0

    .line 4564
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchSingleLineHoldingAndActiveCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    :cond_0
    if-eqz p1, :cond_1

    .line 4569
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4572
    :cond_1
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v5, :cond_a

    .line 4575
    :cond_2
    if-eqz v2, :cond_a

    .line 4577
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 4578
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4579
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    if-ne v1, p1, :cond_c

    .line 4580
    const-string v5, "CallManager"

    const-string v6, "switch SingleLine HoldingAndActiveCall()-1.switchHoldingAndActive"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4583
    const/4 v4, 0x1

    .line 4592
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v5

    .line 4593
    if-eqz v0, :cond_5

    .line 4594
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4596
    :cond_4
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, set activePhone to false "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4601
    :cond_5
    if-eqz v4, :cond_8

    .line 4603
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4604
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4607
    :cond_6
    if-nez v0, :cond_7

    .line 4608
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4609
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, get activePhone=null, since get firsrt active bg call "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 4611
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4615
    :cond_7
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchSingleLineHoldingAndActiveCall, activePhone= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    if-eqz v0, :cond_8

    .line 4617
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4618
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, have to turn on hold call audio path ,we need to close another phone audio path first. "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4623
    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4627
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4628
    .local v3, "heldPhoneIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    iput-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 4629
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_9

    .line 4630
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, set heldPhone to true "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4631
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4633
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4637
    .end local v3    # "heldPhoneIndex":I
    :cond_a
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v5, :cond_b

    .line 4638
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End switchSingleLineHoldingAndActiveCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    :cond_b
    return-void

    .line 4586
    .restart local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 4588
    const-string v5, "CallManager"

    const-string v6, "switch SingleLine HoldingAndActiveCall()-2.switchHoldingAndActive"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_0

    .line 4633
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 4056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4057
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 4058
    const-string v5, "CallManager {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4059
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getState(J)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4060
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4061
    .local v1, "call":Lcom/android/internal/telephony/Call;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections(J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4069
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4078
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections(J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4079
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4085
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Ringing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4057
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4066
    :cond_0
    const-string v5, "null"

    goto/16 :goto_1

    .line 4075
    :cond_1
    const-string v5, "null"

    goto :goto_2

    .line 4076
    :cond_2
    const-string v5, "null"

    goto :goto_3

    .line 4085
    :cond_3
    const-string v5, "null"

    goto :goto_4

    .line 4086
    :cond_4
    const-string v5, "null"

    goto :goto_5

    .line 4090
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 4091
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_6

    .line 4092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4095
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    const-string v5, "\n- Foreground: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4096
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4097
    const-string v5, " Background: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4098
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4099
    const-string v5, " Ringing: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4102
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_7
    const-string v5, "\n}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2452
    return-void
.end method

.method public unregisterForCallModify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2434
    return-void
.end method

.method public unregisterForCallModifyResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2445
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2288
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2365
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1957
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2346
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2168
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2269
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2249
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2040
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2322
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2150
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2130
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2019
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2082
    return-void
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2423
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1978
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2097
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2061
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2185
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2313
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2383
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2207
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2229
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1993
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2106
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 589
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 591
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 594
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterPhone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 599
    .local v2, "vPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 604
    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_2

    .line 606
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 608
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 609
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 610
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 612
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    .end local v1    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 616
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 617
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 619
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 620
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v3, :cond_3

    .line 621
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 622
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 628
    .end local v2    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_0
    return-void

    .line 612
    .restart local v2    # "vPhone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 624
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method
