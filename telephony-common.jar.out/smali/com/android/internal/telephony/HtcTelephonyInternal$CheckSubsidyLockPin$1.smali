.class Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;
.super Landroid/os/Handler;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;)V
    .locals 0

    .prologue
    .line 5221
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 5224
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 5225
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 5236
    :goto_0
    return-void

    .line 5227
    :pswitch_0
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "SUPPLY_SUBSIDY_LOCK_PIN_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    monitor-enter v2

    .line 5229
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mResult:Z
    invoke-static {v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->access$1602(Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;Z)Z

    .line 5230
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    const/4 v3, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->access$1702(Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;Z)Z

    .line 5231
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5232
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 5233
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5229
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 5225
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
