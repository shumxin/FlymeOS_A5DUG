.class Lcom/android/server/power/HtcWakeLockMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    .line 548
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 549
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    const-string v5, "HtcWLM"

    const-string v6, "onReceive: wake lock monitoring is disabled."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 558
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->getPackageManager()Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1400(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 562
    .local v3, "state":I
    if-eq v3, v8, :cond_2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 565
    :cond_2
    const-string v5, "android.intent.extra.UID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 566
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->clearRecord(IZ)V
    invoke-static {v5, v4, v6}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1200(Lcom/android/server/power/HtcWakeLockMonitor;IZ)V

    .line 568
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    const-string v6, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: PKG CHANGED. Clear record ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v3, v8, :cond_3

    const-string v5, "Disabled"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "state":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 576
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: Exception caught during PKG CHANGED. Skip. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 569
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "state":I
    .restart local v4    # "uid":I
    :cond_3
    :try_start_1
    const-string v5, "User Disabled"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 579
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "state":I
    .end local v4    # "uid":I
    :cond_4
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 581
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 583
    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string v5, "android.intent.extra.UID"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 584
    .restart local v4    # "uid":I
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->clearRecord(IZ)V
    invoke-static {v5, v4, v6}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1200(Lcom/android/server/power/HtcWakeLockMonitor;IZ)V

    .line 586
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 587
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: PKG REMOVED. Clear result.("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 591
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "uid":I
    :catch_1
    move-exception v1

    .line 592
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$1;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 593
    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: Exception caught during PKG REMOVED. Skip. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
