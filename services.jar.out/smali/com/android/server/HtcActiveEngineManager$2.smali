.class Lcom/android/server/HtcActiveEngineManager$2;
.super Landroid/database/ContentObserver;
.source "HtcActiveEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HtcActiveEngineManager;->registerSettingsContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcActiveEngineManager;


# direct methods
.method constructor <init>(Lcom/android/server/HtcActiveEngineManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/HtcActiveEngineManager$2;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/server/HtcActiveEngineManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcActiveEngineManager"

    const-string v1, "HTC_ACTIVE_ENGINE_SETTING onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/server/HtcActiveEngineManager$2;->this$0:Lcom/android/server/HtcActiveEngineManager;

    iget-object v1, v0, Lcom/android/server/HtcActiveEngineManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HtcActiveEngineManager$2;->this$0:Lcom/android/server/HtcActiveEngineManager;

    # invokes: Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineSettingChangedLocked()V
    invoke-static {v0}, Lcom/android/server/HtcActiveEngineManager;->access$000(Lcom/android/server/HtcActiveEngineManager;)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
