.class public Lcom/android/server/HtcHardwareService;
.super Landroid/os/IHtcHardwareService$Stub;
.source "HtcHardwareService.java"


# static fields
.field private static sService:Landroid/os/IHtcHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/IHtcHardwareService$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private static getService()Landroid/os/IHtcHardwareService;
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    .line 63
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 61
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    .line 63
    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    goto :goto_0
.end method

.method private static native getVTEBrightness_native(I)I
.end method

.method private static native hasFrontFlashlight_native()I
.end method

.method private static native setFlashlightBrightness_native(I)V
.end method

.method private static native setFrontFlashlightBrightness_native(I)V
.end method

.method private static native setVTEBrightness_native(II)I
.end method


# virtual methods
.method public getFlashlightBrightness()I
    .locals 7

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "reader1":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 77
    .local v0, "brightness":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .local v3, "reader1":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 79
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move-object v2, v3

    .line 84
    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    :goto_0
    return v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v5, "HtcHardwareService"

    const-string v6, "file open fail: /sys/class/leds/flashlight/brightness"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .restart local v3    # "reader1":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public getFrontFlashlightBrightness()I
    .locals 7

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "reader1":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 91
    .local v0, "brightness":I
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/flashlight_front/brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .local v3, "reader1":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 93
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move-object v2, v3

    .line 98
    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v5, "HtcHardwareService"

    const-string v6, "file open fail: /sys/class/leds/flashlight_friont/brightness"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader1":Ljava/io/BufferedReader;
    .restart local v3    # "reader1":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "reader1":Ljava/io/BufferedReader;
    .restart local v2    # "reader1":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public getFrontFlashlightBrightnessDual(I)I
    .locals 1
    .param p1, "led"    # I

    .prologue
    .line 115
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->getVTEBrightness_native(I)I

    move-result v0

    return v0
.end method

.method public hasFrontFlashlight()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/server/HtcHardwareService;->hasFrontFlashlight_native()I

    move-result v0

    return v0
.end method

.method public setFlashlightBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 107
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFlashlightBrightness_native(I)V

    .line 108
    return-void
.end method

.method public setFrontFlashlightBrightness(I)V
    .locals 0
    .param p1, "brightness"    # I

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFrontFlashlightBrightness_native(I)V

    .line 104
    return-void
.end method

.method public setFrontFlashlightBrightnessDual(II)I
    .locals 1
    .param p1, "br1"    # I
    .param p2, "br2"    # I

    .prologue
    .line 111
    invoke-static {p1, p2}, Lcom/android/server/HtcHardwareService;->setVTEBrightness_native(II)I

    move-result v0

    return v0
.end method
