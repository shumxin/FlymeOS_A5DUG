.class Lcom/android/internal/policy/impl/PhoneWindowManager$5;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1107
    sget-boolean v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->DEBUG_HTC:Z

    if-eqz v4, :cond_0

    .line 1108
    const-string v4, "WindowManager"

    const-string v5, "<POWER DOWN>Long press to show Global Actions Dialog."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-gez v4, :cond_1

    .line 1113
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1116
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1117
    .local v1, "resolvedBehavior":I
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1118
    const/4 v1, 0x3

    .line 1122
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data/poweroff"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1125
    const/4 v1, 0x3

    .line 1129
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 1147
    :goto_0
    :pswitch_0
    return-void

    .line 1133
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1134
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v7, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1135
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1137
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1141
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1142
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4, v7, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1143
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v5, "globalactions"

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1144
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
