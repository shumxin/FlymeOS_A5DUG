.class Lcom/android/internal/policy/impl/GlobalActions$15;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1495
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1497
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->dismiss()V

    .line 1499
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2802(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;

    goto :goto_0

    .line 1503
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 1504
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1507
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3000(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto :goto_0

    .line 1511
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1518
    :cond_1
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mFlashlightMode:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$3100(Lcom/android/internal/policy/impl/GlobalActions;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1520
    const-string v0, "GlobalActions"

    const-string v1, "Flashlight 5 seconds timeout, dismiss dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$15;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1495
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x182ae -> :sswitch_4
    .end sparse-switch
.end method
