.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PPPoE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PPPoEStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ErrorState;,
        Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;,
        Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;,
        Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;,
        Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectingState:Lcom/android/internal/util/State;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mErrorOcurred:Z

.field final synthetic this$0:Lcom/android/server/connectivity/PPPoE;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    .line 333
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 324
    new-instance v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;-><init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 326
    new-instance v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectingState;-><init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    .line 327
    new-instance v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;-><init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 328
    new-instance v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;-><init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 330
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z

    .line 335
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 336
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 338
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$1;-><init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/server/connectivity/PPPoE;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->updateDns(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setupPppoeRoute()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setPPPoEState(I)V

    return-void
.end method

.method private feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "cmdStatus"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    const-string v1, "pppoe_result_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "pppoe_result_error_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 504
    :goto_0
    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    return-void

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setPPPoEState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 459
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$500(Lcom/android/server/connectivity/PPPoE;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 460
    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[*** same status ***] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$500(Lcom/android/server/connectivity/PPPoE;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->curPPPoEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$500(Lcom/android/server/connectivity/PPPoE;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    const-string v1, "pppoe_state"

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-virtual {v2}, Lcom/android/server/connectivity/PPPoE;->syncGetPPPoEStateByName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 477
    iget-boolean v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string v1, "PPPoE"

    const-string v2, "error caused disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 479
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    :goto_1
    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStickyBroadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-virtual {v3}, Lcom/android/server/connectivity/PPPoE;->syncGetPPPoEStateByName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 481
    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private setupPppoeRoute()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 439
    :try_start_0
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".gw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 443
    .local v0, "Default_R":Landroid/net/RouteInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v1

    .line 446
    .local v1, "Host_R":Landroid/net/RouteInfo;
    const-string v4, "PPPoE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROUTE] addRoute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v4

    const v5, 0xffdc

    invoke-interface {v4, v5, v0}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V

    .line 448
    const-string v4, "PPPoE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROUTE] addRoute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v4

    const v5, 0xffdc

    invoke-interface {v4, v5, v1}, Landroid/os/INetworkManagementService;->addRoute(ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const/4 v3, 0x1

    .end local v0    # "Default_R":Landroid/net/RouteInfo;
    .end local v1    # "Host_R":Landroid/net/RouteInfo;
    :goto_0
    return v3

    .line 450
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PPPoE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ROUTE] setupPppoeRoute error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDns(I)Z
    .locals 6
    .param p1, "netid"    # I

    .prologue
    const/4 v2, 0x0

    .line 409
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDns netid :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 434
    :goto_0
    return v2

    .line 413
    :cond_0
    const v3, 0xffdc

    if-ne p1, v3, :cond_1

    .line 414
    :try_start_0
    const-string v3, "net.dns1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v3, "net.dns2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dns1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dns2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-static {v0}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "PPPoE"

    const-string v4, "updateDns to pppoe succeed "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 422
    .end local v0    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_1
    const-string v3, "net.dns1"

    const-string v4, "dhcp.wlan0.dns1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v3, "net.dns2"

    const-string v4, "dhcp.wlan0.dns2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .restart local v0    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const-string v3, "dhcp.wlan0.dns1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 426
    const-string v3, "dhcp.wlan0.dns2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-static {v0}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v3, "PPPoE"

    const-string v4, "updateDns to wifi succeed "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 430
    .end local v0    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "PPPoE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDns error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 397
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 398
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 400
    .local v0, "current":Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DefaultState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ConnectingState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ConnectedState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DisconnectingState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_3
    return-object v1
.end method
