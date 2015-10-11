.class Lcom/android/server/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStateTracker$1;,
        Lcom/android/server/wifi/SupplicantStateTracker$DormantState;,
        Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;,
        Lcom/android/server/wifi/SupplicantStateTracker$ScanState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;,
        Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MAX_AUTHENTICATION_FAILURES_NOTIFICATION_COUNT:I = 0xf

.field private static final MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0x10

.field private static final MAX_RETRIES_ON_NETWORK_PROBLEM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"

.field private static bAuthenticationFailuresFlag:Z


# instance fields
.field private mAssociationRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mAuthenticationFailuresNotificationCount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCompletedState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectState:Lcom/android/internal/util/State;

.field private final mDormantState:Lcom/android/internal/util/State;

.field private final mHandshakeState:Lcom/android/internal/util/State;

.field private final mInactiveState:Lcom/android/internal/util/State;

.field private mNetworkProblemCount:I

.field private mNetworkProblemInSupplicantBroadcast:Z

.field private mNetworksDisabledDuringConnect:Z

.field private final mScanState:Lcom/android/internal/util/State;

.field private final mUninitializedState:Lcom/android/internal/util/State;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    .line 85
    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->bAuthenticationFailuresFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "wcs"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "t"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 60
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 61
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    .line 65
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 86
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresNotificationCount:I

    .line 89
    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkProblemCount:I

    .line 90
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkProblemInSupplicantBroadcast:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 100
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 101
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 102
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 103
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 104
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 105
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 106
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 107
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 126
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 128
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 129
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 140
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogRecSize(I)V

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogOnlyTransitions(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->start()V

    .line 144
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->bAuthenticationFailuresFlag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/server/wifi/SupplicantStateTracker;->bAuthenticationFailuresFlag:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/SupplicantStateTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkProblemCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkProblemCount:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresNotificationCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresNotificationCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresNotificationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresNotificationCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkProblemInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworkProblemInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;ZZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;ZZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkConnectionFailure netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworksDisabledDuringConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const-string v0, "abnormal_event"

    const-string v1, "wifi"

    const-string v2, "Connection"

    const-string v3, "Wifi connection fail"

    const/4 v4, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/server/report/up/HtcSystemUPLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BI] handleNetworkConnectionFailure netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworksDisabledDuringConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->log(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 171
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 172
    const-string v0, "SupplicantStateTracker"

    const-string v1, "Do not show AuthErrorNotification because ASSOCIATION REJECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setAuthErrorNotificationVisible(Z)V

    goto :goto_0
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;ZZI)V
    .locals 8
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z
    .param p3, "networkProblem"    # Z
    .param p4, "netId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 230
    sget-object v3, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 247
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown supplicant state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x0

    .line 252
    .local v2, "supplState":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiStateMachine;->mSilentHungEnabled:Z

    if-ne v3, v6, :cond_0

    .line 260
    const-string v3, "SupplicantStateTracker"

    const-string v4, "===> skip sendSupplicantStateChangedBroadcast by silent HUNG"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_2
    return-void

    .line 231
    .end local v2    # "supplState":I
    :pswitch_0
    const/4 v2, 0x1

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 233
    .end local v2    # "supplState":I
    :pswitch_1
    const/4 v2, 0x2

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 234
    .end local v2    # "supplState":I
    :pswitch_2
    const/4 v2, 0x3

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 235
    .end local v2    # "supplState":I
    :pswitch_3
    const/4 v2, 0x4

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 236
    .end local v2    # "supplState":I
    :pswitch_4
    const/4 v2, 0x5

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 237
    .end local v2    # "supplState":I
    :pswitch_5
    const/4 v2, 0x6

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 238
    .end local v2    # "supplState":I
    :pswitch_6
    const/4 v2, 0x7

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 240
    .end local v2    # "supplState":I
    :pswitch_7
    const/16 v2, 0x8

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 241
    .end local v2    # "supplState":I
    :pswitch_8
    const/16 v2, 0x9

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 242
    .end local v2    # "supplState":I
    :pswitch_9
    const/16 v2, 0xa

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 243
    .end local v2    # "supplState":I
    :pswitch_a
    const/16 v2, 0xb

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 244
    .end local v2    # "supplState":I
    :pswitch_b
    const/16 v2, 0xc

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 245
    .end local v2    # "supplState":I
    :pswitch_c
    const/4 v2, 0x0

    .restart local v2    # "supplState":I
    goto :goto_0

    .line 266
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->getlinkDebouncing()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 267
    const-string v3, "SupplicantStateTracker"

    const-string v4, "===> skip sendSupplicantStateChangedBroadcast by google silent hung"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 273
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    const-string v3, "newState"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    if-eqz p2, :cond_3

    .line 289
    if-ltz p4, :cond_2

    .line 290
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v3, p4}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 291
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 292
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iput v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 296
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to authenticate, count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to authenticate notification, count= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresNotificationCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    iget-object v4, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->getAuthenticationErrorRetry()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 300
    iput v7, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 302
    const-string v3, "supplicantError"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v3, "networkID"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3, v6}, Lcom/android/server/wifi/WifiStateMachine;->setAuthErrorNotificationVisible(Z)V

    .line 325
    :cond_3
    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v3, :cond_4

    .line 326
    sput-boolean v7, Lcom/android/server/wifi/SupplicantStateTracker;->bAuthenticationFailuresFlag:Z

    .line 328
    :cond_4
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v3, :cond_5

    .line 329
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->clearAuthErrorNotification()V

    .line 333
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 253
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    .locals 4
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    .prologue
    .line 179
    iget-object v0, p1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 181
    .local v0, "supState":Landroid/net/wifi/SupplicantState;
    sget-boolean v1, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    sget-object v1, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 204
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 207
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 211
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 643
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthenticationFailuresCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureInSupplicantBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworksDisabledDuringConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 648
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 112
    if-lez p1, :cond_0

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    goto :goto_0
.end method

.method public getSupplicantStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
