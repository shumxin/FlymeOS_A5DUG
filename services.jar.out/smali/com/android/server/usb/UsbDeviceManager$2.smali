.class Lcom/android/server/usb/UsbDeviceManager$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1987
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[USBNET] BroadcastReceiver action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    sget-object v1, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_ON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1992
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    sget-object v1, Landroid/hardware/usb/UsbManager;->USB_SWITCH_MTP_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1995
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1997
    :cond_2
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1998
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v1, v4}, Lcom/android/server/usb/UsbDeviceManager;->access$4302(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1999
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$2;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$4400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    goto :goto_0
.end method
