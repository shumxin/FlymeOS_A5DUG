.class Lcom/android/server/power/HtcPowerSaver$1;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/HtcPowerSaver;->sendBroadcastHelper(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$1;->this$0:Lcom/android/server/power/HtcPowerSaver;

    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver$1;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$1;->this$0:Lcom/android/server/power/HtcPowerSaver;

    # getter for: Lcom/android/server/power/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/HtcPowerSaver;->access$400(Lcom/android/server/power/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$1;->val$i:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcPowerSaver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
