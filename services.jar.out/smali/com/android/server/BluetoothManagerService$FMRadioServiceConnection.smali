.class Lcom/android/server/BluetoothManagerService$FMRadioServiceConnection;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMRadioServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$FMRadioServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "x1"    # Lcom/android/server/BluetoothManagerService$1;

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$FMRadioServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$FMRadioServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/BluetoothManagerService;->mFMBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 783
    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioService Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 786
    const-string v0, "BluetoothManagerService"

    const-string v1, "FMRadioService Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return-void
.end method
