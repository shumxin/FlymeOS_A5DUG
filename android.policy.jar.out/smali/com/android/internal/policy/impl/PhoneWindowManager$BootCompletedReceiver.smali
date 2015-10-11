.class final Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 961
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.htc.intent.action.HTC_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 967
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_2

    .line 968
    const-string v1, "WindowManager"

    const-string v2, "BootCompletedReceiver - ACTION_HTC_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    goto :goto_0

    .line 970
    :cond_3
    const-string v1, "com.htc.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v1, :cond_4

    .line 972
    const-string v1, "WindowManager"

    const-string v2, "BootCompletedReceiver - ACTION_QUICKBOOT_POWERON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BootCompletedReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingShutdownAnim:Z

    goto :goto_0
.end method
