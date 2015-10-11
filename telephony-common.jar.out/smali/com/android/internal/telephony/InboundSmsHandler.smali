.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field public static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final ID_COLUMN:I = 0x7

.field protected static final PDU_COLUMN:I = 0x0

.field protected static final PDU_PROJECTION:[Ljava/lang/String;

.field protected static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field protected static final PREFIX_KILL_DEVICE:Ljava/lang/String; = "$%5&+4#\"5@#&5.?"

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final VZW_DIRECTED_SMS_INTENT:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field private static final VZW_VVM_ERROR_PATTERN:Ljava/lang/String; = "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

.field private static final VZW_VVM_ERROR_PATTERN_WITH_CODE:Ljava/lang/String; = "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\. \\([0-9]+\\)"

.field private static final VZW_VVM_LOGIN_PATTERN:Ljava/lang/String; = "Free Message from Verizon Wireless. Log into the Visual Voice Mail application on your phone or dial *86 to retrieve voicemail."

.field private static final VZW_VVM_SENDER_CODE:Ljava/lang/String; = "900080002021"

.field private static final VZW_VVM_SUCCESS_PATTERN:Ljava/lang/String; = "You have [0-9]+ unheard Visual Voice Mail messages\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field public static final enableEDIAG:Z

.field protected static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mAckWaitMessageId:I

.field protected mCdmaCmasQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsMessageBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field private mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "reference_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 191
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 206
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 209
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 212
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 215
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 236
    iput v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mAckWaitMessageId:I

    .line 240
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    .line 252
    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 256
    iput-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 277
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 278
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 279
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 280
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 281
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 282
    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 284
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 286
    .local v1, "smsCapable":Z
    const-string v4, "telephony.sms.receive"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 290
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTencentBolockList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    new-instance v2, Lcom/android/internal/telephony/TencentSecurityManager;

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/TencentSecurityManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/TencentSecurityManager;->bindTencentSecurityManager()Z

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 297
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 299
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    .line 302
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 304
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 305
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 310
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v2, p0, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;I)Lcom/android/internal/telephony/test/FakeSmsReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 317
    const-string v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 29
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1329
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExtraData()Landroid/os/Bundle;

    move-result-object v10

    .line 1332
    .local v10, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 1334
    const/4 v14, 0x0

    .line 1337
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v27

    .line 1340
    .local v27, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1341
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1342
    .local v23, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 1344
    .local v11, "count":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 1347
    .local v26, "seqNumber":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v15, v2

    const/4 v2, 0x1

    aput-object v23, v15, v2

    const/4 v2, 0x2

    aput-object v11, v15, v2

    .line 1348
    .local v15, "deleteWhereArgs":[Ljava/lang/String;
    const-string v2, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v23, v6, v7

    const/4 v7, 0x2

    aput-object v11, v6, v7

    const/4 v7, 0x3

    aput-object v26, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1356
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1363
    if-eqz v10, :cond_5

    const-string v2, "isSprintReassembleSms"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1364
    const-string v2, "We have Sprint reassemble SMS but it has conflict seqNumber, dispatch it"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1377
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    if-eqz v14, :cond_1

    .line 1383
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1388
    :cond_1
    if-eqz v10, :cond_2

    const-string v2, "isSprintReassembleSms"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1393
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v16, "dispatchIntent":Landroid/content/Intent;
    const-string v2, "count"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1395
    const-string v2, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 1398
    .local v17, "dispatchPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1399
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 1400
    .local v9, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    const-wide/32 v4, 0x493e0

    add-long/2addr v4, v12

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1401
    const-string v2, "Will check Sprint reassemble SMS in raw table after 5 min"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1406
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "alarmManager":Landroid/app/AlarmManager;
    .end local v11    # "count":Ljava/lang/String;
    .end local v12    # "currentTime":J
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v16    # "dispatchIntent":Landroid/content/Intent;
    .end local v17    # "dispatchPendingIntent":Landroid/app/PendingIntent;
    .end local v23    # "refNumber":Ljava/lang/String;
    .end local v26    # "seqNumber":Ljava/lang/String;
    .end local v27    # "sequence":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v28

    .line 1409
    .local v28, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 1410
    .local v19, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1413
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1414
    .local v24, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1416
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1418
    :cond_3
    const/4 v2, 0x1

    .line 1421
    .end local v19    # "newUri":Landroid/net/Uri;
    .end local v24    # "rowId":J
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_0
    return v2

    .line 1367
    .restart local v8    # "address":Ljava/lang/String;
    .restart local v11    # "count":Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v23    # "refNumber":Ljava/lang/String;
    .restart local v26    # "seqNumber":Ljava/lang/String;
    .restart local v27    # "sequence":I
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1368
    .local v21, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v22

    .line 1369
    .local v22, "pdu":[B
    invoke-static/range {v21 .. v21}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 1370
    .local v20, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1374
    :cond_6
    const/4 v2, 0x5

    .line 1382
    if-eqz v14, :cond_4

    .line 1383
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1378
    .end local v8    # "address":Ljava/lang/String;
    .end local v11    # "count":Ljava/lang/String;
    .end local v15    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v20    # "oldPdu":[B
    .end local v21    # "oldPduString":Ljava/lang/String;
    .end local v22    # "pdu":[B
    .end local v23    # "refNumber":Ljava/lang/String;
    .end local v26    # "seqNumber":Ljava/lang/String;
    .end local v27    # "sequence":I
    :catch_0
    move-exception v18

    .line 1379
    .local v18, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1380
    const/4 v2, 0x2

    .line 1382
    if-eqz v14, :cond_4

    .line 1383
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1382
    .end local v18    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_7

    .line 1383
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 1419
    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "newUri":Landroid/net/Uri;
    .restart local v28    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v18

    .line 1420
    .local v18, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1421
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 7
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 1633
    array-length v5, p0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1635
    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1643
    :goto_0
    return-object v5

    .line 1638
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1639
    .local v1, "body":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1641
    .local v4, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1643
    .end local v4    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getDeviceIdentity()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2204
    const/4 v2, 0x0

    .line 2206
    .local v2, "identity":Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    .line 2207
    .local v1, "htcTM":Lcom/htc/service/HtcTelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2208
    const-string v4, "KillDevice - This is World Phone!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2209
    if-eqz v1, :cond_0

    .line 2210
    const-string v4, "getIMEI"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 2211
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "getIMEI"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2223
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 2213
    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2215
    :cond_2
    const-string v4, "KillDevice - This is DD/DS Phone!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2216
    if-eqz v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/htc/service/HtcTelephonyManager;->getDeviceIdExt(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2219
    :cond_3
    const-string v4, "KillDevice - This is Pure GSM/CDMA Phone!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2220
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2221
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getValidDirectedSmsReceivers(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 22
    .param p1, "candidatePrefix"    # Ljava/lang/String;
    .param p2, "bHasColon"    # Z

    .prologue
    .line 1995
    if-nez p1, :cond_0

    .line 1996
    const/16 v16, 0x0

    .line 2109
    :goto_0
    return-object v16

    .line 1999
    :cond_0
    const/4 v13, 0x0

    .line 2000
    .local v13, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2001
    .local v5, "appPrefix":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2006
    .local v12, "outReceiver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Landroid/content/Intent;

    const-string v19, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2007
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 2008
    .local v17, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_2

    .line 2009
    :cond_1
    const-string v19, "No Receiver for DSMS Intent"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2010
    const/16 v16, 0x0

    goto :goto_0

    .line 2022
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    .line 2025
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_e

    .line 2026
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2027
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 2028
    sget-boolean v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v19, :cond_3

    .line 2029
    const-string v19, "activity info is null!"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2025
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2032
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "check ap: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/HtcMessageHelper;->isSystemAp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/HtcMessageHelper;->isVerizonConsignAp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/HtcMessageHelper;->isVerizonAvsAuthorized(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 2038
    const-string v19, "not SysAP or signed ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2043
    :cond_5
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2044
    .local v15, "receiverMetadata":Landroid/os/Bundle;
    if-nez v15, :cond_6

    .line 2045
    const-string v19, "receiver metadata is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2048
    :cond_6
    const/4 v4, 0x0

    .line 2049
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    .line 2051
    .local v3, "apMetadata":Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2055
    :goto_3
    if-nez v4, :cond_c

    .line 2056
    const-string v19, "appinfo is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2060
    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 2061
    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2064
    :cond_8
    if-nez v3, :cond_9

    if-eqz v15, :cond_3

    :cond_9
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v15, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDefineDirectedSMSMetaData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2072
    const/16 v18, 0x0

    .line 2073
    .local v18, "tempPrefixs":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 2074
    const-string v19, "com.verizon.directedAppSMS"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2078
    :goto_5
    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2085
    .local v14, "realPrefixArray":[Ljava/lang/String;
    array-length v6, v14

    .line 2086
    .local v6, "arraylen":I
    const/4 v9, 0x0

    .local v9, "idx":I
    :goto_6
    if-ge v9, v6, :cond_3

    .line 2087
    aget-object v19, v14, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_b

    .line 2093
    if-eqz p2, :cond_a

    if-eqz p2, :cond_b

    aget-object v19, v14, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 2094
    :cond_a
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    aget-object v19, v14, v9

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2052
    .end local v6    # "arraylen":I
    .end local v9    # "idx":I
    .end local v14    # "realPrefixArray":[Ljava/lang/String;
    .end local v18    # "tempPrefixs":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2053
    .local v7, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getApplication Info exception: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2057
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_c
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 2058
    const-string v19, "ap metaData is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2076
    .restart local v18    # "tempPrefixs":Ljava/lang/String;
    :cond_d
    const-string v19, "com.verizon.directedAppSMS"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_5

    .line 2103
    .end local v3    # "apMetadata":Landroid/os/Bundle;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "receiverMetadata":Landroid/os/Bundle;
    .end local v18    # "tempPrefixs":Ljava/lang/String;
    :cond_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_f

    .line 2104
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2105
    .local v16, "result":[Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0

    .line 2109
    .end local v16    # "result":[Ljava/lang/String;
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1430
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1431
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDefineDirectedSMSMetaData(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .param p1, "apMetadata"    # Landroid/os/Bundle;
    .param p2, "receiverMetadata"    # Landroid/os/Bundle;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2120
    const/4 v0, 0x0

    .line 2123
    .local v0, "bmenifestcontainkey":Z
    if-eqz p1, :cond_0

    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP metadata contain key value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.verizon.directedAppSMS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2125
    const/4 v0, 0x1

    .line 2129
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "com.verizon.directedAppSMS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver metadata contain key value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.verizon.directedAppSMS"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2131
    const/4 v0, 0x1

    .line 2134
    :cond_1
    return v0
.end method

.method private isVerizonVvmSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "originatingAddress"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1792
    const-string v6, "You have [0-9]+ unheard Visual Voice Mail messages\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1793
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1794
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1796
    const/16 v6, 0x9

    const/16 v7, 0x20

    const/16 v8, 0x9

    :try_start_0
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1797
    .local v0, "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1798
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_SUCCESS_PATTERN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "extra_unread_count"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    .end local v0    # "count":I
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 1801
    :catch_0
    move-exception v1

    .line 1802
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1808
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v6, "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\. \\([0-9]+\\)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1809
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1810
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1812
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_ERROR_PATTERN_WITH_CODE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1813
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1814
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1815
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1821
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "Visual Voice Mail activity received\\. Please select the Visual VM icon to reinstall\\. Free Message from Verizon Wireless\\."

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1822
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1823
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1824
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_ERROR_PATTERN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1825
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz p2, :cond_3

    const-string v6, "Free Message from Verizon Wireless. Log into the Visual Voice Mail application on your phone or dial *86 to retrieve voicemail."

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 1831
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.vvm.action.VVM_OTHER_PATTERN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1832
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1836
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "No VVM SMS matched"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1837
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private matchKillDeviceMechanism()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2236
    const-string v2, "ro.sf"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2237
    .local v0, "shippingFlag":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KillDevice - ro.sf=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2239
    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_1

    .line 2241
    :cond_0
    const-string v1, "KillDevice - Shipping Rom, kill device function is disable!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2242
    const/4 v1, 0x0

    .line 2245
    :cond_1
    return v1
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v3, 0x0

    .line 1608
    aget-object v0, p0, v3

    .line 1609
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1610
    .local v2, "values":Landroid/content/ContentValues;
    const-string v4, "address"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v4, "body"

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string v4, "date_sent"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1613
    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1614
    const-string v4, "protocol"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    const-string v4, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    const-string v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1617
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    .line 1618
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1619
    const-string v4, "subject"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_0
    const-string v4, "reply_path_present"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    const-string v3, "service_center"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    return-object v2
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1649
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resetLastSmsFingerprintForCmas(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1666
    const-string v2, "cmas"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1667
    .local v0, "isCmas":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCmas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1668
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportCmasAck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->resetLastSmsFingerprint()V

    .line 1670
    const/4 v1, 0x1

    .line 1674
    :cond_0
    return v1
.end method

.method private shouldWeDiscardMsg(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x7

    const/4 v5, 0x0

    .line 1701
    const/4 v3, 0x0

    .line 1702
    .local v3, "isSms":Z
    const/4 v4, 0x0

    .line 1703
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1705
    :cond_0
    const/4 v3, 0x1

    .line 1706
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 1710
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTencentBolockList()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1711
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-static {v7, p1, v4, v8}, Lcom/android/internal/telephony/HtcMessageHelper;->isNumberBlocked(Landroid/content/Context;Landroid/content/Intent;[Landroid/telephony/SmsMessage;Lcom/android/internal/telephony/TencentSecurityManager;)Z

    move-result v1

    .line 1712
    .local v1, "blocked":Z
    if-eqz v1, :cond_2

    .line 1713
    const-string v5, " sms or mms wap push is blocked"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1767
    .end local v1    # "blocked":Z
    :goto_0
    return v1

    .line 1717
    :cond_2
    if-nez v3, :cond_3

    move v1, v5

    goto :goto_0

    .line 1720
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwNotificationSms()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1721
    if-eqz v4, :cond_7

    aget-object v7, v4, v5

    if-eqz v7, :cond_7

    .line 1722
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, "firstMessage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1725
    const-string v7, "VZWPIN:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 1726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1727
    .local v0, "bintent":Landroid/content/Intent;
    const-string v5, "com.htc.mms.PIN_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    const-string v5, "PIN_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v6

    .line 1730
    goto :goto_0

    .line 1731
    .end local v0    # "bintent":Landroid/content/Intent;
    :cond_4
    const-string v7, "VZWNMN:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_5

    .line 1732
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1733
    .restart local v0    # "bintent":Landroid/content/Intent;
    const-string v5, "com.htc.mms.NEW_MAIL_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    const-string v5, "NEW_MAIL_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1735
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v6

    .line 1736
    goto :goto_0

    .line 1737
    .end local v0    # "bintent":Landroid/content/Intent;
    :cond_5
    const-string v7, "VZWUEP:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_6

    .line 1738
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1739
    .restart local v0    # "bintent":Landroid/content/Intent;
    const-string v5, "com.htc.mms.ACCOUNT_NOTIFICATION"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    const-string v5, "ACCOUNT_CHANGE_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v7, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v5, v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v6

    .line 1742
    goto/16 :goto_0

    .line 1743
    .end local v0    # "bintent":Landroid/content/Intent;
    :cond_6
    const-string v7, "VZWRSC:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_7

    move v1, v6

    .line 1750
    goto/16 :goto_0

    .line 1757
    .end local v2    # "firstMessage":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportFilterVerizonVvmSms()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1758
    if-eqz v4, :cond_8

    aget-object v7, v4, v5

    if-eqz v7, :cond_8

    .line 1759
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 1760
    .restart local v2    # "firstMessage":Ljava/lang/String;
    aget-object v7, v4, v5

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isVerizonVvmSms(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v1, v6

    .line 1761
    goto/16 :goto_0

    .end local v2    # "firstMessage":Ljava/lang/String;
    :cond_8
    move v1, v5

    .line 1767
    goto/16 :goto_0
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 1562
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 1563
    .local v6, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_0

    array-length v10, v6

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 1564
    :cond_0
    const-string v10, "Failed to parse SMS pdu"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1587
    :goto_0
    return-object v9

    .line 1570
    :cond_1
    move-object v0, v6

    .local v0, "arr$":[Landroid/telephony/SmsMessage;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    .line 1572
    .local v7, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1573
    :catch_0
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v10, "NPE inside SmsMessage"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1578
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v8

    .line 1579
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1581
    .local v4, "identity":J
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 1585
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1582
    :catch_1
    move-exception v1

    .line 1583
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "Failed to persist inbox message"

    invoke-virtual {p0, v10, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1585
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method


# virtual methods
.method protected KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2259
    return-void
.end method

.method public abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 811
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 821
    :goto_0
    :sswitch_0
    return v0

    .line 813
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 811
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public checkVZWDirectedSMSV17(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "bodyStr"    # Ljava/lang/String;
    .param p2, "senderAddr"    # Ljava/lang/String;

    .prologue
    .line 1854
    if-nez p1, :cond_0

    .line 1855
    const/16 v18, 0x0

    .line 1980
    :goto_0
    return v18

    .line 1863
    :cond_0
    const/4 v7, 0x0

    .line 1864
    .local v7, "candidatePrefixStr":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1865
    .local v13, "parameterStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1866
    .local v6, "bodyLen":I
    const-string v18, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1868
    .local v9, "colonIdx":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bodylen/colonidx: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1870
    if-ltz v9, :cond_1

    const/4 v4, 0x1

    .line 1871
    .local v4, "beHasColon":Z
    :goto_1
    const-string v18, "//VZW"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "//VZW"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_2

    const/4 v5, 0x1

    .line 1878
    .local v5, "beVZWstarted":Z
    :goto_2
    if-nez v9, :cond_3

    .line 1879
    const/16 v18, 0x0

    goto :goto_0

    .line 1870
    .end local v4    # "beHasColon":Z
    .end local v5    # "beVZWstarted":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1871
    .restart local v4    # "beHasColon":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1885
    .restart local v5    # "beVZWstarted":Z
    :cond_3
    if-lez v9, :cond_5

    .line 1892
    if-eqz v5, :cond_4

    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1893
    :goto_3
    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1905
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_7

    .line 1906
    const/16 v18, 0x0

    goto :goto_0

    .line 1892
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1903
    :cond_5
    if-eqz v5, :cond_6

    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    goto :goto_4

    :cond_6
    move-object/from16 v7, p1

    goto :goto_5

    .line 1913
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->getValidDirectedSmsReceivers(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 1915
    .local v2, "apArray":[Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1922
    array-length v0, v2

    move/from16 v18, v0

    div-int/lit8 v16, v18, 0x3

    .line 1924
    .local v16, "setCount":I
    const/4 v14, 0x0

    .line 1925
    .local v14, "pkgStr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1926
    .local v8, "classStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1927
    .local v3, "apPrefixStr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1928
    .local v17, "setStartIdx":I
    const/4 v11, 0x0

    .line 1929
    .local v11, "ifAnyMatched":Z
    const/4 v15, 0x0

    .line 1930
    .local v15, "preFixStr":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v10, v0, :cond_a

    .line 1934
    mul-int/lit8 v17, v10, 0x3

    .line 1935
    aget-object v14, v2, v17

    .line 1936
    add-int/lit8 v18, v17, 0x1

    aget-object v8, v2, v18

    .line 1937
    add-int/lit8 v18, v17, 0x2

    aget-object v3, v2, v18

    .line 1939
    move-object v15, v3

    .line 1945
    if-nez v4, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 1946
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1956
    :cond_8
    new-instance v12, Landroid/content/Intent;

    const-string v18, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12, v14, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1958
    const-string v18, "originator"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1959
    const-string v18, "prefix"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    if-eqz v13, :cond_9

    .line 1961
    const-string v18, "parameters"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "broadcast DirectedSMSv17 intent out to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1970
    const/4 v11, 0x1

    .line 1930
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1973
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_a
    if-eqz v11, :cond_c

    .line 1974
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1976
    .end local v3    # "apPrefixStr":Ljava/lang/String;
    .end local v8    # "classStr":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "ifAnyMatched":Z
    .end local v14    # "pkgStr":Ljava/lang/String;
    .end local v15    # "preFixStr":Ljava/lang/String;
    .end local v16    # "setCount":I
    .end local v17    # "setStartIdx":I
    :cond_b
    const-string v18, "can not got mapping of candidatePrefixstr"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1979
    :cond_c
    const-string v18, "checkVZWDirectedSMSV17 return false"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1980
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method protected createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdu"    # [B

    .prologue
    .line 2313
    const/4 v0, 0x0

    .line 2314
    .local v0, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2315
    const-string v1, "3gpp2"

    invoke-static {p2, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 2320
    :goto_0
    return-object v0

    .line 2317
    :cond_0
    const-string v1, "3gpp"

    invoke-static {p2, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    goto :goto_0
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1277
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 1278
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1282
    :goto_0
    return-void

    .line 1280
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatchFakeMessage(Landroid/telephony/SmsMessage;)V
    .locals 3
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 2264
    if-nez p1, :cond_0

    .line 2271
    :goto_0
    return-void

    .line 2268
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2269
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v1

    .line 2270
    .local v1, "result":Landroid/os/AsyncResult;
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1218
    const/high16 v1, 0x8000000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1223
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->shouldWeDiscardMsg(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1224
    if-eqz p4, :cond_0

    .line 1225
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    if-eqz v1, :cond_0

    move-object/from16 v1, p4

    .line 1226
    check-cast v1, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$900(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    check-cast p4, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .end local p4    # "resultReceiver":Landroid/content/BroadcastReceiver;
    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$1000(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1230
    :cond_0
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1270
    :cond_1
    :goto_0
    return-void

    .line 1235
    .restart local p4    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_2
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1237
    const/16 v16, 0x0

    .line 1239
    .local v16, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1242
    :goto_1
    if-nez v16, :cond_3

    .line 1243
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .end local v16    # "users":[I
    const/4 v1, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    aput v2, v16, v1

    .line 1247
    .restart local v16    # "users":[I
    :cond_3
    move-object/from16 v0, v16

    array-length v1, v0

    add-int/lit8 v14, v1, -0x1

    .local v14, "i":I
    :goto_2
    if-ltz v14, :cond_1

    .line 1248
    new-instance v3, Landroid/os/UserHandle;

    aget v1, v16, v14

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1249
    .local v3, "targetUser":Landroid/os/UserHandle;
    aget v1, v16, v14

    if-eqz v1, :cond_6

    .line 1251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1247
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 1255
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v2, v16, v14

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 1256
    .local v15, "info":Landroid/content/pm/UserInfo;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1261
    .end local v15    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    aget v2, v16, v14

    if-nez v2, :cond_7

    move-object/from16 v6, p4

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 1266
    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .end local v14    # "i":I
    .end local v16    # "users":[I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1240
    .restart local v16    # "users":[I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 672
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x2

    .line 683
    :goto_0
    return v0

    .line 676
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 678
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)I
    .locals 18
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "inIntent"    # Landroid/content/Intent;

    .prologue
    .line 754
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    .line 757
    .local v17, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_3

    .line 759
    :cond_0
    const/4 v3, 0x1

    new-array v15, v3, [[B

    .line 760
    .local v15, "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v15, v3

    .line 763
    const/4 v6, -0x1

    .line 764
    .local v6, "destPort":I
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_1

    .line 766
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 770
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    .line 774
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiAtMailWapPush()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v13, p1

    .line 776
    check-cast v13, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 777
    .local v13, "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->isAtMailMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 778
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setIsAtMail(Z)V

    .line 796
    .end local v13    # "cdmaSms":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v15    # "pdus":[[B
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/InboundSmsHandler;->packExtraBundle(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setExtraData(Landroid/os/Bundle;)V

    .line 800
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v3

    return v3

    .line 785
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_3
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 786
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    .line 787
    .local v16, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 789
    .restart local v6    # "destPort":I
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v10, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v11, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    .line 787
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_4
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTencentBolockList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSecureMgr:Lcom/android/internal/telephony/TencentSecurityManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/TencentSecurityManager;->unbindTencentSecurityManager()V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "mFakeReceiver.dispose()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dispose()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFakeReceiver:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    .line 340
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    .line 341
    return-void

    .line 336
    :cond_1
    const-string v0, "mFakeReceiver is null!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCellBroadcastHandler()Lcom/android/internal/telephony/CellBroadcastHandler;
    .locals 1

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected abstract handleCmasInEcmCallbackMode(Z)V
.end method

.method handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 640
    const/4 v2, 0x0

    .line 642
    .local v2, "receivedIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 643
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-nez v4, :cond_1

    .line 645
    const/4 v3, 0x2

    .line 654
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    .local v3, "result":I
    :goto_0
    if-eqz v2, :cond_0

    .line 656
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    :cond_0
    :goto_1
    return-void

    .line 647
    .end local v3    # "result":I
    .restart local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v5, v4, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .restart local v3    # "result":I
    goto :goto_0

    .line 649
    .end local v3    # "result":I
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v1

    .line 650
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v5, "Exception dispatching message"

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_0

    .line 657
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x1

    .line 594
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const/4 v2, 0x1

    .line 600
    .local v2, "result":I
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 609
    .local v3, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 618
    :goto_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 619
    if-ne v2, v1, :cond_2

    .line 623
    .local v1, "handled":Z
    :goto_2
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isCMAS()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportCmasAck()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 624
    const-string v4, "isCmas & NotSupportCmasAck"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->resetLastSmsFingerprint()V

    goto :goto_0

    .line 611
    .end local v1    # "handled":Z
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "Exception dispatching message"

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 613
    const/4 v2, 0x2

    goto :goto_1

    .line 619
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 630
    .restart local v1    # "handled":Z
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 734
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 735
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method protected final packExtraBundle(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "inIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2282
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SimSmsRecordIndex"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2284
    const-string v1, "isSprintReassembleSms"

    iget-boolean v2, p1, Lcom/android/internal/telephony/SmsMessageBase;->isSprintReassembleSms:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2285
    const-string v1, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    if-eqz p2, :cond_0

    .line 2289
    const-string v1, "cmas"

    const-string v2, "cmas"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2290
    const-string v1, "earthquake_alert"

    const-string v2, "earthquake_alert"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2291
    const-string v1, "isCdma"

    const-string v2, "isCdma"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2292
    const-string v1, "is_cbm"

    const-string v2, "is_cbm"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2293
    const-string v1, "idxonsim"

    const-string v2, "idxonsim"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2294
    const-string v1, "kddi_bcsms"

    const-string v2, "kddi_bcsms"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2295
    const-string v1, "discard"

    const-string v2, "discard"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2296
    const-string v1, "isBroadcastType"

    const-string v2, "isBroadcastType"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2300
    :cond_0
    return-object v0
.end method

.method protected packagePdusAndExtra(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[IZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "it"    # Landroid/content/Intent;
    .param p2, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p3, "pdus"    # [[B
    .param p4, "idxonsims"    # [I
    .param p5, "isDiscard"    # Z
    .param p6, "isBroadcastType"    # Z

    .prologue
    .line 1681
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .end local p1    # "it":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1682
    .restart local p1    # "it":Landroid/content/Intent;
    :cond_0
    const-string v0, "SimSmsRecordIndex"

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1683
    const-string v0, "pdus"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1684
    const-string v1, "format"

    iget-boolean v0, p2, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    if-eqz v0, :cond_1

    const-string v0, "3gpp2"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    const-string v0, "idxonsims"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1687
    const-string v0, "discard"

    invoke-virtual {p1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1688
    const-string v0, "isBroadcastType"

    invoke-virtual {p1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1689
    return-object p1

    .line 1684
    :cond_1
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 67
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 833
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v47

    .line 835
    .local v47, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v30

    .line 838
    .local v30, "destPort":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExtraData()Landroid/os/Bundle;

    move-result-object v22

    .line 839
    .local v22, "bundle":Landroid/os/Bundle;
    const/16 v43, 0x0

    .line 841
    .local v43, "isBroadcastType":Z
    const/16 v31, 0x0

    .line 842
    .local v31, "discard":Z
    const/16 v61, -0x1

    .line 843
    .local v61, "simSmsRecordIndex":I
    const-string v23, ""

    .line 844
    .local v23, "bundleAddress":Ljava/lang/String;
    const/16 v38, 0x0

    .line 846
    .local v38, "idxonsimarray":[I
    if-eqz v22, :cond_0

    .line 847
    const-string v4, "isBroadcastType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v43

    .line 848
    const-string v4, "address"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 851
    const-string v4, "discard"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    .line 852
    const-string v4, "SimSmsRecordIndex"

    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v61

    .line 856
    :cond_0
    const/4 v4, 0x1

    move/from16 v0, v47

    if-ne v0, v4, :cond_4

    .line 858
    const/4 v4, 0x1

    new-array v0, v4, [[B

    move-object/from16 v54, v0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v5

    aput-object v5, v54, v4

    .line 955
    .local v54, "pdus":[[B
    :cond_1
    :goto_0
    new-instance v15, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 957
    .local v15, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v4, 0xb84

    move/from16 v0, v30

    if-ne v0, v4, :cond_12

    .line 959
    new-instance v51, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v51 .. v51}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 960
    .local v51, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v19, v54

    .local v19, "arr$":[[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v44, v0

    .local v44, "len$":I
    const/16 v36, 0x0

    .local v36, "i$":I
    :goto_1
    move/from16 v0, v36

    move/from16 v1, v44

    if-ge v0, v1, :cond_f

    aget-object v53, v19, v36

    .line 962
    .local v53, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-nez v4, :cond_2

    .line 963
    const-string v4, "3gpp"

    move-object/from16 v0, v53

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 964
    .local v48, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v53

    .line 968
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiAtMailWapPush()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 969
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->isAtMail()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 971
    const-string v4, "3gpp2"

    move-object/from16 v0, v53

    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 972
    .restart local v48    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v53

    .line 977
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v53

    array-length v5, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 960
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 861
    .end local v15    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .end local v19    # "arr$":[[B
    .end local v36    # "i$":I
    .end local v44    # "len$":I
    .end local v51    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v53    # "pdu":[B
    .end local v54    # "pdus":[[B
    :cond_4
    const/16 v28, 0x0

    .line 864
    .local v28, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 865
    .local v18, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v56

    .line 866
    .local v56, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 869
    .local v27, "count":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v8, v4

    const/4 v4, 0x1

    aput-object v56, v8, v4

    const/4 v4, 0x2

    aput-object v27, v8, v4

    .line 870
    .local v8, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v7, "address=? AND reference_number=? AND count=?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 873
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v29

    .line 874
    .local v29, "cursorCount":I
    move/from16 v0, v29

    move/from16 v1, v47

    if-ge v0, v1, :cond_6

    .line 880
    const/4 v4, 0x0

    .line 949
    if-eqz v28, :cond_5

    .line 950
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1204
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v18    # "address":Ljava/lang/String;
    .end local v27    # "count":Ljava/lang/String;
    .end local v28    # "cursor":Landroid/database/Cursor;
    .end local v29    # "cursorCount":I
    .end local v56    # "refNumber":Ljava/lang/String;
    :cond_5
    :goto_2
    return v4

    .line 884
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    .restart local v18    # "address":Ljava/lang/String;
    .restart local v27    # "count":Ljava/lang/String;
    .restart local v28    # "cursor":Landroid/database/Cursor;
    .restart local v29    # "cursorCount":I
    .restart local v56    # "refNumber":Ljava/lang/String;
    :cond_6
    :try_start_1
    move/from16 v0, v47

    new-array v0, v0, [[B

    move-object/from16 v54, v0

    .line 887
    .restart local v54    # "pdus":[[B
    move/from16 v0, v47

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .line 889
    .local v37, "ids":[J
    move/from16 v0, v47

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 890
    :cond_7
    :goto_3
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 892
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 893
    .local v60, "sequence":I
    const/16 v40, -0x1

    .line 894
    .local v40, "indexOnSim":I
    const/16 v4, 0xff

    move/from16 v0, v60

    if-le v0, v4, :cond_8

    .line 895
    shr-int/lit8 v40, v60, 0x10

    .line 897
    :cond_8
    move/from16 v0, v60

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    .line 901
    .local v39, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    sub-int v39, v39, v4

    .line 903
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v54, v39

    .line 904
    const/4 v4, 0x7

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v37, v39

    .line 905
    aput v40, v38, v39

    .line 909
    if-nez v39, :cond_7

    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 910
    const/4 v4, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 912
    .local v55, "port":I
    invoke-static/range {v55 .. v55}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v55

    .line 913
    const/4 v4, -0x1

    move/from16 v0, v55

    if-eq v0, v4, :cond_7

    .line 914
    move/from16 v30, v55

    goto :goto_3

    .line 920
    .end local v39    # "index":I
    .end local v40    # "indexOnSim":I
    .end local v55    # "port":I
    .end local v60    # "sequence":I
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintReassembleSmsEnhance()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 921
    const/16 v59, 0x0

    .line 922
    .local v59, "sb":Ljava/lang/StringBuilder;
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_4
    move/from16 v0, v35

    move/from16 v1, v47

    if-ge v0, v1, :cond_c

    .line 923
    aget-object v4, v54, v35

    if-nez v4, :cond_a

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reassemble SMS lost pdus which sequence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    const/4 v4, 0x0

    .line 949
    if-eqz v28, :cond_5

    .line 950
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 930
    :cond_a
    if-nez v59, :cond_b

    .line 931
    :try_start_2
    new-instance v59, Ljava/lang/StringBuilder;

    .end local v59    # "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .restart local v59    # "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, v37, v35

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    :goto_5
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    .line 934
    :cond_b
    const-string v4, ","

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v37, v35

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 945
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v18    # "address":Ljava/lang/String;
    .end local v27    # "count":Ljava/lang/String;
    .end local v29    # "cursorCount":I
    .end local v35    # "i":I
    .end local v37    # "ids":[J
    .end local v54    # "pdus":[[B
    .end local v56    # "refNumber":Ljava/lang/String;
    .end local v59    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v32

    .line 946
    .local v32, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 947
    const/4 v4, 0x0

    .line 949
    if-eqz v28, :cond_5

    .line 950
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 938
    .end local v32    # "e":Landroid/database/SQLException;
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    .restart local v18    # "address":Ljava/lang/String;
    .restart local v27    # "count":Ljava/lang/String;
    .restart local v29    # "cursorCount":I
    .restart local v35    # "i":I
    .restart local v37    # "ids":[J
    .restart local v54    # "pdus":[[B
    .restart local v56    # "refNumber":Ljava/lang/String;
    .restart local v59    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    if-eqz v59, :cond_d

    :try_start_4
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    .line 939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    .line 940
    .local v66, "where":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete raw table where ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 941
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 949
    .end local v35    # "i":I
    .end local v59    # "sb":Ljava/lang/StringBuilder;
    .end local v66    # "where":Ljava/lang/String;
    :cond_d
    if-eqz v28, :cond_1

    .line 950
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 949
    .end local v8    # "whereArgs":[Ljava/lang/String;
    .end local v18    # "address":Ljava/lang/String;
    .end local v27    # "count":Ljava/lang/String;
    .end local v29    # "cursorCount":I
    .end local v37    # "ids":[J
    .end local v54    # "pdus":[[B
    .end local v56    # "refNumber":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v28, :cond_e

    .line 950
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    .line 981
    .end local v28    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "resultReceiver":Landroid/content/BroadcastReceiver;
    .restart local v19    # "arr$":[[B
    .restart local v36    # "i$":I
    .restart local v44    # "len$":I
    .restart local v51    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v54    # "pdus":[[B
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v50, v23

    .line 985
    .local v50, "origintingAddress":Ljava/lang/String;
    :goto_6
    const/16 v58, 0x1

    .line 992
    .local v58, "result":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v51 .. v51}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v4, v5, v15, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result v58

    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchWapPdu() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 997
    const/4 v4, -0x1

    move/from16 v0, v58

    if-ne v0, v4, :cond_11

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 981
    .end local v50    # "origintingAddress":Ljava/lang/String;
    .end local v58    # "result":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v50

    goto :goto_6

    .line 997
    .restart local v50    # "origintingAddress":Ljava/lang/String;
    .restart local v58    # "result":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1000
    .end local v19    # "arr$":[[B
    .end local v36    # "i$":I
    .end local v44    # "len$":I
    .end local v50    # "origintingAddress":Ljava/lang/String;
    .end local v51    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v58    # "result":I
    :cond_12
    new-instance v41, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_FILTER"

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v41, "intent":Landroid/content/Intent;
    const/16 v20, 0x0

    .line 1006
    .local v20, "bLBS":Z
    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_16

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwDirectSms()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1007
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .restart local v59    # "sb":Ljava/lang/StringBuilder;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_7
    move/from16 v0, v35

    move/from16 v1, v47

    if-ge v0, v1, :cond_13

    .line 1009
    aget-object v4, v54, v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 1010
    .restart local v48    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    add-int/lit8 v35, v35, 0x1

    goto :goto_7

    .line 1013
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    :cond_13
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 1015
    .local v64, "str":Ljava/lang/String;
    if-eqz v64, :cond_16

    .line 1016
    const-string v4, "EMS check DirectedSMS V17"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1017
    const-string v4, "//VZW"

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "//VZW"

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_14

    const/16 v21, 0x1

    .line 1021
    .local v21, "beVZWstarted":Z
    :goto_8
    const/4 v4, 0x0

    aget-object v4, v54, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->checkVZWDirectedSMSV17(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 1022
    const-string v4, "Directed SMS v17 true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1026
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    .line 1029
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1017
    .end local v21    # "beVZWstarted":Z
    :cond_14
    const/16 v21, 0x0

    goto :goto_8

    .line 1030
    .restart local v21    # "beVZWstarted":Z
    :cond_15
    if-eqz v21, :cond_16

    .line 1031
    const/16 v20, 0x1

    .line 1032
    const-string v4, "SMSV17dispatch/ isLBSMessage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1038
    .end local v21    # "beVZWstarted":Z
    .end local v35    # "i":I
    .end local v59    # "sb":Ljava/lang/StringBuilder;
    .end local v64    # "str":Ljava/lang/String;
    :cond_16
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_1d

    .line 1039
    const-string v4, "lbs"

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1040
    const-string v4, "com.htc.mms.transaction.LBSMESSAGE_RECEIVE"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    :cond_17
    :goto_9
    if-eqz v22, :cond_18

    .line 1067
    const-string v4, "discard"

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1069
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 1070
    const-string v4, "SimSmsRecordIndex"

    move-object/from16 v0, v41

    move/from16 v1, v61

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    :cond_18
    const-string v4, "idxonsims"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1076
    const-string v4, "pdus"

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1077
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    if-eqz v22, :cond_19

    .line 1081
    const-string v4, "cmas"

    const-string v5, "cmas"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1082
    const-string v4, "earthquake_alert"

    const-string v5, "earthquake_alert"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1083
    const-string v4, "isCdma"

    const-string v5, "isCdma"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1084
    const-string v4, "idxonsim"

    const-string v5, "idxonsim"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1085
    const-string v4, "kddi_bcsms"

    const-string v5, "kddi_bcsms"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1090
    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportFilterAttVvmSms()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1091
    const/16 v4, 0x157b

    move/from16 v0, v30

    if-ne v0, v4, :cond_1a

    .line 1092
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, v41

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1093
    .local v10, "it":Landroid/content/Intent;
    const-string v4, "com.htc.vvm.action.PORT_5499_VVM"

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    const-string v11, "com.htc.permission.APP_DEFAULT"

    const/16 v12, 0x10

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1107
    .end local v10    # "it":Landroid/content/Intent;
    :cond_1a
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportRedirectSmsToMobilBoxPro()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v52

    .line 1109
    .local v52, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v34, 0x1

    .line 1110
    .local v34, "hasMbp":Z
    const/16 v45, 0x0

    .line 1112
    .local v45, "mbpEnableStatus":I
    :try_start_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v45

    .line 1117
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportRedirectSmsToMobilBoxPro hasMbp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportRedirectSmsToMobilBoxPro mbpEnableStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1120
    if-eqz v34, :cond_22

    const/4 v4, 0x1

    move/from16 v0, v45

    if-eq v0, v4, :cond_1b

    if-nez v45, :cond_22

    .line 1124
    :cond_1b
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .restart local v59    # "sb":Ljava/lang/StringBuilder;
    const/16 v49, 0x0

    .line 1126
    .local v49, "originatingAddress":Ljava/lang/String;
    const/16 v65, 0x0

    .line 1127
    .local v65, "userData":Ljava/lang/String;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_b
    move/from16 v0, v35

    move/from16 v1, v47

    if-ge v0, v1, :cond_20

    .line 1128
    aget-object v4, v54, v35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 1129
    .restart local v48    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    if-nez v35, :cond_1c

    .line 1131
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v49

    .line 1127
    :cond_1c
    add-int/lit8 v35, v35, 0x1

    goto :goto_b

    .line 1041
    .end local v34    # "hasMbp":Z
    .end local v35    # "i":I
    .end local v45    # "mbpEnableStatus":I
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    .end local v49    # "originatingAddress":Ljava/lang/String;
    .end local v52    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v59    # "sb":Ljava/lang/StringBuilder;
    .end local v65    # "userData":Ljava/lang/String;
    :cond_1d
    if-eqz v43, :cond_1f

    .line 1042
    const-string v4, "is_cbm"

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1043
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1044
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1046
    :cond_1e
    const-string v4, "com.htc.intent.action.CB_RECEIVED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1053
    :cond_1f
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintIgnoredSmsFormat()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1054
    const/4 v4, 0x0

    aget-object v4, v54, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->createFromPdu(Lcom/android/internal/telephony/InboundSmsTracker;[B)Landroid/telephony/SmsMessage;

    move-result-object v48

    .line 1055
    .restart local v48    # "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v48 .. v48}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v33

    .line 1056
    .local v33, "firstMessage":Ljava/lang/String;
    if-eqz v33, :cond_17

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_17

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_17

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_17

    .line 1059
    const-string v4, "double slash started, change action"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1061
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1113
    .end local v33    # "firstMessage":Ljava/lang/String;
    .end local v48    # "msg":Landroid/telephony/SmsMessage;
    .restart local v34    # "hasMbp":Z
    .restart local v45    # "mbpEnableStatus":I
    .restart local v52    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v32

    .line 1114
    .local v32, "e":Ljava/lang/IllegalArgumentException;
    const/16 v34, 0x0

    goto/16 :goto_a

    .line 1134
    .end local v32    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v35    # "i":I
    .restart local v49    # "originatingAddress":Ljava/lang/String;
    .restart local v59    # "sb":Ljava/lang/StringBuilder;
    .restart local v65    # "userData":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 1136
    const-string v4, "3311"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v65, :cond_22

    const-string v4, "Mobilbox Pro"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1138
    new-instance v42, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    .local v42, "intentForQuery":Landroid/content/Intent;
    const/4 v4, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v63

    .line 1142
    .local v63, "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v63 .. v63}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/pm/ResolveInfo;

    .line 1143
    .local v57, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    .line 1144
    .local v17, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v17, :cond_21

    .line 1148
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1149
    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    .local v26, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1161
    .end local v17    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v26    # "componentName":Landroid/content/ComponentName;
    .end local v34    # "hasMbp":Z
    .end local v35    # "i":I
    .end local v36    # "i$":Ljava/util/Iterator;
    .end local v42    # "intentForQuery":Landroid/content/Intent;
    .end local v45    # "mbpEnableStatus":I
    .end local v49    # "originatingAddress":Ljava/lang/String;
    .end local v52    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v57    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v59    # "sb":Ljava/lang/StringBuilder;
    .end local v63    # "smsReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v65    # "userData":Ljava/lang/String;
    :cond_22
    if-eqz v43, :cond_24

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3gpp2"

    if-ne v4, v5, :cond_24

    .line 1164
    const-string v4, "Received CDMA Cell Broadcast Message!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1165
    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    .restart local v59    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v19, v54

    .restart local v19    # "arr$":[[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v44, v0

    .restart local v44    # "len$":I
    const/16 v36, 0x0

    .local v36, "i$":I
    :goto_c
    move/from16 v0, v36

    move/from16 v1, v44

    if-ge v0, v1, :cond_23

    aget-object v53, v19, v36

    .line 1167
    .restart local v53    # "pdu":[B
    invoke-static/range {v53 .. v53}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v62

    .line 1168
    .local v62, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v46

    .line 1169
    .local v46, "message":Landroid/telephony/SmsCbMessage;
    invoke-virtual/range {v46 .. v46}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    add-int/lit8 v36, v36, 0x1

    goto :goto_c

    .line 1171
    .end local v46    # "message":Landroid/telephony/SmsCbMessage;
    .end local v53    # "pdu":[B
    .end local v62    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_23
    const/4 v4, 0x0

    aget-object v4, v54, v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v62

    .line 1172
    .restart local v62    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v62 .. v62}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastSms()Landroid/telephony/SmsCbMessage;

    move-result-object v46

    .line 1173
    .restart local v46    # "message":Landroid/telephony/SmsCbMessage;
    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/telephony/SmsCbMessage;->setMessageBody(Ljava/lang/String;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v4, v0, v1, v15}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleBroadcastSms(Landroid/content/Intent;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;)V

    .line 1175
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1181
    .end local v19    # "arr$":[[B
    .end local v36    # "i$":I
    .end local v44    # "len$":I
    .end local v46    # "message":Landroid/telephony/SmsCbMessage;
    .end local v59    # "sb":Ljava/lang/StringBuilder;
    .end local v62    # "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_24
    const-string v4, "android.provider.Telephony.SMS_FILTER"

    invoke-virtual/range {v41 .. v41}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1182
    const-string v13, "android.permission.RECEIVE_SMS"

    const/16 v14, 0x10

    sget-object v16, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v11, p0

    move-object/from16 v12, v41

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1184
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1187
    :cond_25
    const/16 v25, 0x0

    .line 1188
    .local v25, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v24

    .line 1189
    .local v24, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v24, :cond_26

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v25

    .line 1193
    :cond_26
    if-eqz v25, :cond_27

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 1194
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    const-string v4, "destport"

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1200
    :goto_d
    const-string v4, "pdus"

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1201
    const-string v4, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const-string v13, "android.permission.RECEIVE_SMS"

    const/16 v14, 0x10

    sget-object v16, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v11, p0

    move-object/from16 v12, v41

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    .line 1204
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1197
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setAndDirectIntent(Landroid/content/Intent;I)V

    goto :goto_d
.end method

.method protected resetLastSmsFingerprint()V
    .locals 0

    .prologue
    .line 1654
    return-void
.end method

.method setAndDirectIntent(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "destPort"    # I

    .prologue
    const/4 v4, 0x0

    .line 1292
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1293
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 1299
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1314
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1315
    return-void

    .line 1305
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1308
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1310
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1311
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 347
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    .line 348
    return-void
.end method

.method protected verifyAndKillDevice(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2148
    const-string v5, "KillDevice - Acknowledge Incoming SMS before Kill process!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2149
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2152
    if-nez p1, :cond_0

    .line 2153
    const-string v5, "KillDevice - Message is null!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2195
    :goto_0
    return-void

    .line 2158
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "$%5&+4#\"5@#&5.?"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 2159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - Invalid Message!!! The length of message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2162
    :cond_1
    const-string v5, "$%5&+4#\"5@#&5.?"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2165
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->matchKillDeviceMechanism()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2166
    const-string v5, "KillDevice - This rom not support Kill Device Function!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2171
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    .line 2172
    .local v2, "identity":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - Device Identity=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2173
    if-nez v2, :cond_3

    .line 2174
    const-string v5, "KillDevice - Device Identity is null!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2179
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_1
    const/16 v5, 0x10

    if-ge v1, v5, :cond_4

    .line 2180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2182
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - NEW Device Identity=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2187
    .local v0, "bMessage":[B
    array-length v5, v0

    const/16 v6, 0x40

    if-eq v5, v6, :cond_5

    .line 2188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - Invalid Message, byte length =["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2192
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 2193
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/os/PowerManager;->wipeSystem([B[B)Z

    move-result v4

    .line 2194
    .local v4, "result":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KillDevice - result=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
