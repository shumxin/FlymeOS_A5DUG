.class Lcom/android/server/HtcActiveEngineManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcActiveEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HtcActiveEngineManager;->registerBootCompletedBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcActiveEngineManager;


# direct methods
.method constructor <init>(Lcom/android/server/HtcActiveEngineManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/HtcActiveEngineManager$1;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v0, v1, :cond_1

    .line 75
    sget-boolean v0, Lcom/android/server/HtcActiveEngineManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcActiveEngineManager"

    const-string v1, "Got BOOT_COMPLETED and update vale of HTC_ACTIVE_ENGINE_SETTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcActiveEngineManager$1;->this$0:Lcom/android/server/HtcActiveEngineManager;

    iget-object v1, v0, Lcom/android/server/HtcActiveEngineManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HtcActiveEngineManager$1;->this$0:Lcom/android/server/HtcActiveEngineManager;

    # invokes: Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/HtcActiveEngineManager;->access$000(Lcom/android/server/HtcActiveEngineManager;)V

    .line 78
    monitor-exit v1

    .line 80
    :cond_1
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
