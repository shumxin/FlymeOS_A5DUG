.class final Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OOBETimeoutReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4544
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 4544
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xb

    .line 4547
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4548
    const-string v1, "PMS"

    const-string v2, "OOBETimeoutReceiver onReceive"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    :cond_0
    if-nez p2, :cond_2

    .line 4551
    const-string v1, "PMS"

    const-string v2, "OOBETimeoutReceiver intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4570
    :cond_1
    :goto_0
    return-void

    .line 4554
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4555
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 4556
    const-string v1, "PMS"

    const-string v2, "action is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4559
    :cond_3
    const-string v1, "com.htc.oobe.OOBE_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4560
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 4561
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4562
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4563
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$5902(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 4565
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$OOBETimeoutReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 4566
    # getter for: Lcom/android/server/power/PowerManagerService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4567
    const-string v1, "PMS"

    const-string v2, "OOBETimeoutReceiver 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
