.class Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
.super Landroid/os/Handler;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->stopTone()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    # invokes: Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmConnection;

    # invokes: Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method