.class final Lcom/android/server/power/PowerManagerService$QuickBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuickBootReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 5172
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$QuickBootReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 5172
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$QuickBootReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5175
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickBootReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mQuickbootEnabled:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5176
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$QuickBootReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService;->onBootPhase(I)V

    .line 5178
    :cond_0
    return-void
.end method
