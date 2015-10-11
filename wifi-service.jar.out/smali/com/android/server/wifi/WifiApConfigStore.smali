.class Lcom/android/server/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApConfigStore$ActiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$InactiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final ENCRYPED_HOTSPOT_PASSWORD:Ljava/lang/String; = "ENCRYPED_HOTSPOT_PASSWORD"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;

.field private mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 104
    const-string v0, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 85
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 86
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 87
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 94
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;

    .line 101
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 106
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig_rsp:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private byte2String([B)Ljava/lang/String;
    .locals 7
    .param p1, "byteArray"    # [B

    .prologue
    .line 687
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 696
    :goto_0
    return-object v4

    .line 689
    :cond_0
    const-string v0, "0123456789ABCDEF"

    .line 690
    .local v0, "HEX":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 692
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 693
    aget-byte v1, p1, v2

    .line 694
    .local v1, "b":B
    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    .end local v1    # "b":B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private checkDatabaseConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 11
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v10, 0x0

    .line 303
    const/4 v4, 0x0

    .line 307
    .local v4, "varied":Z
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_ssid"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "temp":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 310
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 311
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_ssid"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    const/4 v4, 0x1

    .line 316
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_security_type"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_2

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 319
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 320
    const-string v5, "wep"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "wpa-psk"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getSenseVersion()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_6

    .line 322
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHotspotSecurityType()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 324
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getKeyManagement(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 331
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_security_type"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    const/4 v4, 0x1

    .line 336
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_password"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_3

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 340
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ENCRYPED_HOTSPOT_PASSWORD"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 341
    const-string v5, "WifiApConfigStore"

    const-string v6, "Decrypt Password and set ENCRYPED_HOTSPOT_PASSWORD to 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ENCRYPED_HOTSPOT_PASSWORD"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wifi/WifiApConfigStore;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hotspot_password"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    const/4 v4, 0x1

    .line 356
    :cond_3
    if-eqz v4, :cond_4

    .line 357
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 358
    .local v2, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    const v5, 0x20019

    invoke-virtual {p0, v5, v2}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 360
    .end local v2    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    return-void

    .line 326
    .restart local v3    # "type":Ljava/lang/String;
    :cond_5
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 329
    .end local v3    # "type":Ljava/lang/String;
    :cond_6
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->getKeyManagement(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 345
    :cond_7
    :try_start_1
    const-string v5, "WifiApConfigStore"

    const-string v6, "No need to decryp hotspot password"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "WifiApConfigStore"

    const-string v6, "No need to decryp hotspot password"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method

.method private decrypt_AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "encrypted"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 609
    if-nez p1, :cond_0

    .line 610
    const-string v5, "WifiApConfigStore"

    const-string v6, "decrypt()...v1 ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string p1, "00:11:22:33:44:55"

    .line 613
    :cond_0
    if-nez p2, :cond_1

    .line 614
    const-string v5, "WifiApConfigStore"

    const-string v6, "decrypt()...1 ERROR: encrypted is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_0
    return-object v4

    .line 619
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getKey([B)[B

    move-result-object v3

    .line 620
    .local v3, "key":[B
    if-nez v3, :cond_2

    .line 621
    const-string v5, "WifiApConfigStore"

    const-string v6, "decrypt()...v1 ERROR: getKey() fails!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    .end local v3    # "key":[B
    :catch_0
    move-exception v2

    .line 631
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "WifiApConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt()...v1 ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "key":[B
    :cond_2
    :try_start_1
    const-string v5, "WifiApConfigStore"

    const-string v6, "Decrypt...v1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 627
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v3, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 628
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiApConfigStore;->string2Byte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 629
    .local v1, "decrypted":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_0
.end method

.method private getKey([B)[B
    .locals 5
    .param p1, "seed"    # [B

    .prologue
    .line 676
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 677
    .local v1, "keyGen":Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    const-string v4, "Crypto"

    invoke-static {v3, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 678
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 679
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 680
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 683
    .end local v1    # "keyGen":Ljavax/crypto/KeyGenerator;
    .end local v2    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKey() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiApConfigStore;->log(Ljava/lang/String;)V

    .line 683
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getKeyManagement(Ljava/lang/String;)I
    .locals 3
    .param p1, "secureType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 556
    if-eqz p1, :cond_4

    .line 557
    const-string v1, "wpa-psk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    const/4 v0, 0x1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 559
    :cond_1
    const-string v1, "wpa2-psk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    const/4 v0, 0x4

    goto :goto_0

    .line 561
    :cond_2
    const-string v1, "wep"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 562
    const/4 v0, 0x2

    goto :goto_0

    .line 563
    :cond_3
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    const-string v1, "WifiApConfigStore"

    const-string v2, "Unknown secure type, set to open."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :cond_4
    const-string v1, "WifiApConfigStore"

    const-string v2, "No secure type, set to open."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRandomKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "seed"    # Ljava/lang/String;

    .prologue
    .line 534
    if-nez p1, :cond_0

    .line 535
    const-string v2, "WifiApConfigStore"

    const-string v3, "getRandomKey() ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string p1, "00:11:22:33:44:55"

    .line 540
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiApConfigStore;->getKey([B)[B

    move-result-object v1

    .line 541
    .local v1, "key":[B
    if-nez v1, :cond_1

    .line 542
    const-string v2, "WifiApConfigStore"

    const-string v3, "() ERROR: getKey() fails!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v2, "1234567890123"

    .line 549
    .end local v1    # "key":[B
    :goto_0
    return-object v2

    .line 546
    .restart local v1    # "key":[B
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->byte2String([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 547
    .end local v1    # "key":[B
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "WifiApConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRandomKey() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v2, "1234567890123"

    goto :goto_0
.end method

.method private loadDatabaseOrSetDefaultConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 434
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_ssid"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "temp":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    :cond_0
    const-string v4, "HTC Portable Hotspot"

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 445
    :goto_0
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 446
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_security_type"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHotspotSecurityType()Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 450
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getKeyManagement(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 471
    .end local v3    # "type":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_password"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 473
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "randomKey":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v11, :cond_a

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHotspotPasswordCount()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHotspotPasswordCount()I

    move-result v4

    if-ge v4, v11, :cond_3

    .line 476
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHotspotPasswordCount()I

    move-result v4

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 478
    :cond_3
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 500
    .end local v1    # "randomKey":Ljava/lang/String;
    :goto_2
    return-void

    .line 439
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 440
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_ssid"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 441
    const-string v4, "persist.hotspot.ssid.prior"

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    .restart local v3    # "type":Ljava/lang/String;
    :cond_5
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 456
    .end local v3    # "type":Ljava/lang/String;
    :cond_6
    const-string v4, "wep"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "wpa-psk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_9

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHotspotSecurityType()Ljava/lang/String;

    move-result-object v3

    .line 459
    .restart local v3    # "type":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 460
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getKeyManagement(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 467
    .end local v3    # "type":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_security_type"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 462
    .restart local v3    # "type":Ljava/lang/String;
    :cond_8
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 465
    .end local v3    # "type":Ljava/lang/String;
    :cond_9
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiApConfigStore;->getKeyManagement(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_3

    .line 480
    .restart local v1    # "randomKey":Ljava/lang/String;
    :cond_a
    const-string v4, "1234567890"

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 485
    .end local v1    # "randomKey":Ljava/lang/String;
    :cond_b
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ENCRYPED_HOTSPOT_PASSWORD"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 486
    const-string v4, "WifiApConfigStore"

    const-string v5, "Decrypt Password and set ENCRYPED_HOTSPOT_PASSWORD to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ENCRYPED_HOTSPOT_PASSWORD"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/wifi/WifiApConfigStore;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_password"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    const-string v4, "persist.hotspot.password.prior"

    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 490
    :cond_c
    :try_start_1
    const-string v4, "WifiApConfigStore"

    const-string v5, "No need to decryp hotspot password"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiApConfigStore"

    const-string v5, "No need to decryp hotspot password"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_4
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 115
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 116
    .local v0, "s":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->start()V

    .line 117
    return-object v0
.end method

.method private setDefaultApConfiguration()V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 419
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadDatabaseOrSetDefaultConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 423
    const v1, 0x20019

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 424
    return-void
.end method

.method private string2Byte(Ljava/lang/String;)[B
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 667
    .local v2, "len":I
    new-array v0, v2, [B

    .line 668
    .local v0, "byteArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 669
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-object v0
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 367
    const/4 v2, 0x0

    .line 369
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 373
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 375
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wifi/WifiApConfigStore;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 393
    if-eqz v3, :cond_2

    .line 395
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 399
    .end local v0    # "authType":I
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 396
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 384
    .end local v0    # "authType":I
    :catch_1
    move-exception v1

    .line 385
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 393
    if-eqz v2, :cond_0

    .line 395
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 396
    :catch_2
    move-exception v4

    goto :goto_0

    .line 389
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_5
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    if-eqz v2, :cond_0

    .line 395
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 396
    :catch_4
    move-exception v4

    goto :goto_0

    .line 393
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    .line 395
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 396
    :cond_1
    :goto_4
    throw v4

    :catch_5
    move-exception v5

    goto :goto_4

    .line 393
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 389
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 384
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v0    # "authType":I
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "encrypted"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 637
    if-nez p1, :cond_0

    .line 638
    const-string v6, "WifiApConfigStore"

    const-string v7, "decrypt()...v2 ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string p1, "00:11:22:33:44:55"

    .line 641
    :cond_0
    if-nez p2, :cond_1

    .line 642
    const-string v6, "WifiApConfigStore"

    const-string v7, "decrypt()...v2 ERROR: encrypted is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_0
    return-object v5

    .line 647
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->getKey([B)[B

    move-result-object v4

    .line 648
    .local v4, "key":[B
    if-nez v4, :cond_2

    .line 649
    const-string v6, "WifiApConfigStore"

    const-string v7, "decrypt()...v2 ERROR: getKey() fails!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    .end local v4    # "key":[B
    :catch_0
    move-exception v2

    .line 660
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "WifiApConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decrypt()...v2 ERROR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiApConfigStore;->decrypt_AES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 653
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "key":[B
    :cond_2
    :try_start_1
    const-string v5, "WifiApConfigStore"

    const-string v6, "Decrypt...v2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 655
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "1234567890123456"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 656
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v5, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 657
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiApConfigStore;->string2Byte(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 658
    .local v1, "decrypted":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "plaintext"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 580
    if-nez p1, :cond_0

    .line 581
    const-string v6, "WifiApConfigStore"

    const-string v7, "encrypt()...v2 ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string p1, "00:11:22:33:44:55"

    .line 584
    :cond_0
    if-nez p2, :cond_1

    .line 585
    const-string v6, "WifiApConfigStore"

    const-string v7, "encrypt()...v2 ERROR: plaintext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    return-object v5

    .line 590
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->getKey([B)[B

    move-result-object v4

    .line 591
    .local v4, "key":[B
    if-nez v4, :cond_2

    .line 592
    const-string v6, "WifiApConfigStore"

    const-string v7, "encrypt()...v2 ERROR: getKey() fails!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    .end local v4    # "key":[B
    :catch_0
    move-exception v2

    .line 603
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encrypt()...v2 ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v4    # "key":[B
    :cond_2
    :try_start_1
    const-string v6, "WifiApConfigStore"

    const-string v7, "Encrypt...v2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 598
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v6, "1234567890123456"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 599
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 600
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 601
    .local v1, "encrypted":[B
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->byte2String([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method

.method public getHotspotPasswordCount()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;

    invoke-virtual {v0}, Landroid/net/wifi/WifiCustomizeReader;->getHotspotPasswordCount()I

    move-result v0

    return v0
.end method

.method public getHotspotSecurityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;

    invoke-virtual {v0}, Landroid/net/wifi/WifiCustomizeReader;->getHotspotSecurityType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 705
    monitor-enter p0

    const/4 v1, 0x0

    .line 710
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/calibration"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    if-nez v2, :cond_1

    .line 767
    if-eqz v2, :cond_0

    .line 768
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 772
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 774
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    monitor-exit p0

    return-object v9

    .line 713
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "line":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_2

    const-string v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 715
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 722
    :cond_2
    if-eqz v8, :cond_5

    const-string v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 723
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v6

    .line 725
    .local v6, "index":I
    if-gez v6, :cond_4

    .line 727
    const/4 v9, 0x0

    .line 767
    .end local v6    # "index":I
    .local v9, "tmpMac":Ljava/lang/String;
    :goto_3
    if-eqz v2, :cond_3

    .line 768
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 772
    :cond_3
    :goto_4
    const/4 v1, 0x0

    .line 773
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 729
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v9    # "tmpMac":Ljava/lang/String;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "index":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 730
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "tmpMac":Ljava/lang/String;
    goto :goto_3

    .line 735
    .end local v6    # "index":I
    .end local v9    # "tmpMac":Ljava/lang/String;
    :cond_5
    const/16 v10, 0x20

    new-array v0, v10, [B

    .line 737
    .local v0, "buffer":[B
    new-instance v4, Ljava/io/File;

    const-string v10, "/proc/calibration"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 738
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 740
    .local v5, "in":Ljava/io/FileInputStream;
    if-nez v4, :cond_7

    .line 741
    const-string v10, "TI Open /proc/calibration fail, return MAC = NULL"

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiApConfigStore;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 767
    if-eqz v2, :cond_6

    .line 768
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 772
    :cond_6
    :goto_5
    const/4 v1, 0x0

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 745
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_7
    :try_start_6
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5    # "in":Ljava/io/FileInputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 746
    .restart local v5    # "in":Ljava/io/FileInputStream;
    if-nez v5, :cond_9

    .line 747
    const-string v10, "TI new FileInputStream fail, return MAC = NULL"

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiApConfigStore;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 767
    if-eqz v2, :cond_8

    .line 768
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 772
    :cond_8
    :goto_6
    const/4 v1, 0x0

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 751
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_9
    const/4 v10, 0x0

    const/16 v11, 0xf

    :try_start_8
    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 752
    .local v7, "length":I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_b

    .line 753
    const-string v10, "TI read file fail, return MAC = NULL"

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/WifiApConfigStore;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 767
    if-eqz v2, :cond_a

    .line 768
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 772
    :cond_a
    :goto_7
    const/4 v1, 0x0

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 757
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :cond_b
    :try_start_a
    const-string v10, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xb

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x6

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x5

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x4

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x3

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v9

    .restart local v9    # "tmpMac":Ljava/lang/String;
    goto/16 :goto_3

    .line 763
    .end local v0    # "buffer":[B
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "tmpMac":Ljava/lang/String;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 764
    .local v3, "e":Ljava/io/IOException;
    :goto_8
    const/4 v9, 0x0

    .line 767
    .restart local v9    # "tmpMac":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 768
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 772
    :cond_c
    :goto_9
    const/4 v1, 0x0

    .line 773
    goto/16 :goto_1

    .line 766
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "tmpMac":Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 767
    :goto_a
    if-eqz v1, :cond_d

    .line 768
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 772
    :cond_d
    :goto_b
    const/4 v1, 0x0

    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 705
    :catchall_1
    move-exception v10

    :goto_c
    monitor-exit p0

    throw v10

    .line 769
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .restart local v0    # "buffer":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto/16 :goto_5

    :catch_3
    move-exception v10

    goto :goto_6

    .restart local v7    # "length":I
    :catch_4
    move-exception v10

    goto :goto_7

    .end local v0    # "buffer":[B
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .restart local v9    # "tmpMac":Ljava/lang/String;
    :catch_5
    move-exception v10

    goto/16 :goto_4

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_9

    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "tmpMac":Ljava/lang/String;
    :catch_7
    move-exception v11

    goto :goto_b

    .line 766
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_a

    .line 763
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 705
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_c
.end method

.method getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getSenseVersion()F
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Landroid/net/wifi/WifiCustomizeReader;->getSenseVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public isEnableImeiPassword()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;

    invoke-virtual {v0}, Landroid/net/wifi/WifiCustomizeReader;->isEnableImeiPassword()Z

    move-result v0

    return v0
.end method

.method public isEnableImeiSsid()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;

    invoke-virtual {v0}, Landroid/net/wifi/WifiCustomizeReader;->isEnableImeiSsid()Z

    move-result v0

    return v0
.end method

.method public isEnableMdnPassword()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;

    invoke-virtual {v0}, Landroid/net/wifi/WifiCustomizeReader;->isEnableMdnPassword()Z

    move-result v0

    return v0
.end method

.method loadApConfiguration()V
    .locals 9

    .prologue
    .line 235
    const/4 v3, 0x0

    .line 239
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 242
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 245
    .local v5, "version":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 246
    const-string v6, "WifiApConfigStore"

    const-string v7, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    if-eqz v4, :cond_0

    .line 293
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v3, v4

    .line 297
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 260
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "version":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 261
    const-string v6, "persist.hotspot.ssid.prior"

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 264
    .local v0, "authType":I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->clear()V

    .line 265
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 267
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 270
    const-string v6, "persist.hotspot.password.prior"

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->checkDatabaseConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 275
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    if-eqz v4, :cond_4

    .line 293
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .line 294
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .line 280
    .end local v0    # "authType":I
    .end local v5    # "version":I
    :catch_1
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/EOFException;
    :goto_2
    :try_start_5
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error load hotspot configuration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v6, "persist.hotspot.password.prior"

    const-string v7, "2"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->checkDatabaseConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 285
    iput-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 291
    if-eqz v3, :cond_1

    .line 293
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 294
    :catch_2
    move-exception v6

    goto :goto_1

    .line 287
    .end local v2    # "e":Ljava/io/EOFException;
    :catch_3
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error load hotspot configuration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 291
    if-eqz v3, :cond_1

    .line 293
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 294
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .line 291
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_3

    .line 293
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 294
    :cond_3
    :goto_5
    throw v6

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "version":I
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v7

    goto :goto_5

    .line 291
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_4

    .line 287
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 280
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "version":I
    :cond_4
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_1
.end method

.method public setWifiCustomizeReader(Landroid/net/wifi/WifiCustomizeReader;)V
    .locals 2
    .param p1, "reader"    # Landroid/net/wifi/WifiCustomizeReader;

    .prologue
    .line 505
    const-string v0, "WifiApConfigStore"

    const-string v1, "setWifiCustomizeReader()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiCustomizeReader:Landroid/net/wifi/WifiCustomizeReader;

    .line 507
    return-void
.end method
