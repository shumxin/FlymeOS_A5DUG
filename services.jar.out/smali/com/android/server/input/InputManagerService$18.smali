.class Lcom/android/server/input/InputManagerService$18;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerScreenOffBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2042
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2043
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mGloveModeSetting:I
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2044
    const-string v1, "InputManager"

    const-string v2, "Prepare to verify glove mode due to getting screen off broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    const/4 v1, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetGloveInputFilterEnabled(JZ)V
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->access$1800(JZ)V

    .line 2046
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$18;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/input/InputManagerService;->getShowGloveTouchesOption(Z)I
    invoke-static {v1, v4}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;Z)I

    move-result v1

    # invokes: Lcom/android/server/input/InputManagerService;->nativeSetShowGloveTouches(JI)V
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->access$2000(JI)V

    .line 2048
    :cond_0
    return-void
.end method
