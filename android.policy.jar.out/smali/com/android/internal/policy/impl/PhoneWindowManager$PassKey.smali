.class Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;
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
    name = "PassKey"
.end annotation


# instance fields
.field mKeyCode:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 0
    .param p2, "keyCode"    # I

    .prologue
    .line 7351
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7352
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->mKeyCode:I

    .line 7353
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 7356
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7358
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 7359
    const-string v3, "htctelephonyinternal"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephonyInternal;

    move-result-object v2

    .line 7361
    .local v2, "phoneServ":Lcom/android/internal/telephony/IHtcTelephonyInternal;
    if-eqz v2, :cond_0

    .line 7363
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7364
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "KeyCode"

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PassKey;->mKeyCode:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7365
    const-string v3, "notifyKeyEvent"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IHtcTelephonyInternal;->generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7374
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "phoneServ":Lcom/android/internal/telephony/IHtcTelephonyInternal;
    :cond_0
    :goto_0
    return-void

    .line 7366
    .restart local v2    # "phoneServ":Lcom/android/internal/telephony/IHtcTelephonyInternal;
    :catch_0
    move-exception v1

    .line 7367
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "notifyKeyEvent(): RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7368
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 7369
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "WindowManager"

    const-string v4, "notifyKeyEvent(): NullPointerException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
