.class Lcom/android/server/power/Notifier$2;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 348
    const/4 v0, 0x2

    .line 349
    .local v0, "why":I
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mLastGoToSleepReason:I
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 357
    :goto_0
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 359
    const-string v1, "PMN"

    const-string v2, "goingToSleep"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    const-string v2, "goingToSleep"

    # invokes: Lcom/android/server/power/Notifier;->startMonitorFunction(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy;->goingToSleep(I)V

    .line 363
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->goingToSleep()V

    .line 365
    iget-object v1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    const-string v2, "goingToSleep"

    # invokes: Lcom/android/server/power/Notifier;->endMonitorFunction(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/power/Notifier;->access$400(Lcom/android/server/power/Notifier;Ljava/lang/String;)V

    .line 367
    return-void

    .line 351
    :pswitch_0
    const/4 v0, 0x1

    .line 352
    goto :goto_0

    .line 354
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
