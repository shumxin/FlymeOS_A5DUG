.class Lcom/android/server/connectivity/Tethering$1;
.super Landroid/os/Handler;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->htcTetherHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2861
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2864
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2878
    :goto_0
    return-void

    .line 2866
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->prevCheckingPermissionMessage:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$7602(Lcom/android/server/connectivity/Tethering;Landroid/os/Message;)Landroid/os/Message;

    .line 2867
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    # invokes: Lcom/android/server/connectivity/Tethering;->internal_htcRequestPermittedTether([I)V
    invoke-static {v1, v0}, Lcom/android/server/connectivity/Tethering;->access$7700(Lcom/android/server/connectivity/Tethering;[I)V

    goto :goto_0

    .line 2870
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->internal_htcSetupPermittedTether()V

    goto :goto_0

    .line 2874
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$7800(Lcom/android/server/connectivity/Tethering;Z)Z

    goto :goto_0

    .line 2864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
