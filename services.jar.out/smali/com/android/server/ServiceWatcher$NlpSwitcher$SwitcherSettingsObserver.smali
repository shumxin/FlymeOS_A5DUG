.class final Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher$NlpSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitcherSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceWatcher$NlpSwitcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    .line 657
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 658
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 662
    const-string v0, "NlpSwitcher"

    const-string v1, "[SwitcherSettingsObserver] onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    # getter for: Lcom/android/server/ServiceWatcher$NlpSwitcher;->mHandler:Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->access$800(Lcom/android/server/ServiceWatcher$NlpSwitcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->removeMessages(I)V

    .line 664
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher$NlpSwitcher;

    # getter for: Lcom/android/server/ServiceWatcher$NlpSwitcher;->mHandler:Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher$NlpSwitcher;->access$800(Lcom/android/server/ServiceWatcher$NlpSwitcher;)Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/ServiceWatcher$NlpSwitcher$SwitcherWorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 665
    return-void
.end method
