.class Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;
.super Landroid/content/BroadcastReceiver;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$6;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->actionDone()V

    .line 808
    return-void
.end method
