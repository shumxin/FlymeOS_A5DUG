.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ON:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mAppMobileActive:J

.field private mAppWifiRunning:J

.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtime:J

.field mRawUptime:J

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWifiOnly:Z

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    .line 77
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 113
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 114
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 133
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 134
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 135
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 113
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 114
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 139
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    .line 140
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    .line 141
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    .line 142
    return-void
.end method

.method private addBluetoothUsage()V
    .locals 14

    .prologue
    const-wide v12, 0x414b774000000000L    # 3600000.0

    .line 1062
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 1063
    .local v2, "btOnTimeMs":J
    long-to-double v0, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v8, v0, v12

    .line 1068
    .local v8, "btPower":D
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothPingCount()I

    move-result v7

    .line 1069
    .local v7, "btPingCount":I
    int-to-double v0, v7

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    div-double v10, v0, v12

    .line 1075
    .local v10, "pingPower":D
    add-double/2addr v8, v10

    .line 1076
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v0, v8

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    .line 1077
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 1079
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1081
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 2
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 1173
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 1174
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 1175
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    return-object v0
.end method

.method private addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    .prologue
    .line 1179
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p4, v2

    if-lez v1, :cond_0

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 1180
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 1181
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTime:J

    .line 1182
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    return-object v0
.end method

.method private addFlashlightUsage()V
    .locals 8

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getFlashlightOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 1085
    .local v2, "flashlightOnTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "camera.flashlight"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 1087
    .local v4, "flashlightPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 1088
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 1090
    :cond_0
    return-void
.end method

.method private addIdleUsage()V
    .locals 10

    .prologue
    .line 1049
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 1051
    .local v2, "idleTimeMs":J
    long-to-double v0, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 1056
    .local v4, "idlePower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 1057
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 1059
    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 8

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 927
    .local v2, "phoneOnTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.talk"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    .line 930
    .local v4, "phoneOnPower":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_0

    .line 931
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 933
    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 26

    .prologue
    .line 960
    const-wide/16 v6, 0x0

    .line 961
    .local v6, "power":D
    const/4 v8, 0x5

    .line 962
    .local v8, "BINS":I
    const-wide/16 v4, 0x0

    .line 963
    .local v4, "signalTimeMs":J
    const-wide/16 v12, 0x0

    .line 964
    .local v12, "noCoverageTimeMs":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_1

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v22, v2, v24

    .line 967
    .local v22, "strengthTimeMs":J
    move-wide/from16 v0, v22

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v24, "radio.on"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    .line 973
    .local v14, "p":D
    add-double/2addr v6, v14

    .line 974
    add-long v4, v4, v22

    .line 975
    if-nez v10, :cond_0

    .line 976
    move-wide/from16 v12, v22

    .line 964
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 979
    .end local v14    # "p":D
    .end local v22    # "strengthTimeMs":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v24, 0x3e8

    div-long v20, v2, v24

    .line 981
    .local v20, "scanningTimeMs":J
    move-wide/from16 v0, v20

    long-to-double v2, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v24, "radio.scanning"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v24

    mul-double v2, v2, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v14, v2, v24

    .line 987
    .restart local v14    # "p":D
    add-double/2addr v6, v14

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v16

    .line 989
    .local v16, "radioActiveTimeUs":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    sub-long v2, v16, v2

    const-wide/16 v24, 0x3e8

    div-long v18, v2, v24

    .line 990
    .local v18, "remainingActiveTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_2

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v2

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v2, v2, v24

    add-double/2addr v6, v2

    .line 993
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_4

    .line 994
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v9

    .line 996
    .local v9, "bs":Lcom/android/internal/os/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 997
    long-to-double v2, v12

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v24

    long-to-double v0, v4

    move-wide/from16 v24, v0

    div-double v2, v2, v24

    iput-wide v2, v9, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 999
    :cond_3
    move-wide/from16 v0, v18

    iput-wide v0, v9, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v2

    iput v2, v9, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 1002
    .end local v9    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_4
    return-void
.end method

.method private addScreenUsage()V
    .locals 20

    .prologue
    .line 936
    const-wide/16 v6, 0x0

    .line 937
    .local v6, "power":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    .line 938
    .local v4, "screenOnTimeMs":J
    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    add-double/2addr v6, v2

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    .line 941
    .local v16, "screenFullPower":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v10, v2, :cond_0

    .line 942
    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    .line 944
    .local v14, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    .line 946
    .local v8, "brightnessTime":J
    long-to-double v2, v8

    mul-double v12, v14, v2

    .line 951
    .local v12, "p":D
    add-double/2addr v6, v12

    .line 941
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 953
    .end local v8    # "brightnessTime":J
    .end local v12    # "p":D
    .end local v14    # "screenBinPower":D
    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    .line 954
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_1

    .line 955
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 957
    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 11

    .prologue
    .line 1093
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1095
    .local v9, "userId":I
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1096
    .local v8, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    .line 1097
    .local v10, "userPower":Ljava/lang/Double;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 1098
    .local v4, "power":D
    :goto_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 1099
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iput v9, v6, Lcom/android/internal/os/BatterySipper;->userId:I

    .line 1100
    const-string v0, "User"

    invoke-direct {p0, v6, v8, v0}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1093
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1097
    .end local v4    # "power":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 1102
    .end local v8    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v9    # "userId":I
    .end local v10    # "userPower":Ljava/lang/Double;
    :cond_1
    return-void
.end method

.method private addWiFiUsage()V
    .locals 14

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v8, v0, v4

    .line 1029
    .local v8, "onTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 1032
    .local v2, "runningTimeMs":J
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v2, v0

    .line 1033
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1034
    :cond_0
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v8

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    long-to-double v4, v2

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v12, "wifi.on"

    invoke-virtual {v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v12

    mul-double/2addr v4, v12

    add-double/2addr v0, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v10, v0, v4

    .line 1041
    .local v10, "wifiPower":D
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v0, v10

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    .line 1042
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v4, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    move-result-object v6

    .line 1044
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v6, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 1046
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_1
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1006
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 1008
    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 1009
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 1010
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 1011
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 1012
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 1013
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 1014
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 1015
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 1016
    iget v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v3, v1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 1017
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 1018
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 1019
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 1020
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 1021
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 1022
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1024
    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 1025
    return-void
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 145
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "dropFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 249
    return-void
.end method

.method private getMobilePowerPerMs()D
    .locals 4

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket()D
    .locals 22

    .prologue
    .line 1108
    const-wide/32 v4, 0x30d40

    .line 1109
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .line 1112
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 1113
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 1114
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .line 1116
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 1118
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 1122
    .local v10, "mobilePps":D
    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .line 1118
    .end local v10    # "mobilePps":D
    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    .prologue
    .line 1257
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1258
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 1259
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1261
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    .line 1262
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1263
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1264
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1265
    sget-object v6, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatteryStatsImpl;

    .line 1267
    .local v5, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1276
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :goto_0
    return-object v5

    .line 1269
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read statistics stream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1276
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v5}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    goto :goto_0

    .line 1273
    :catch_1
    move-exception v1

    .line 1274
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v7, "RemoteException:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getWifiPowerPerPacket()D
    .locals 8

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 1136
    const-wide/32 v0, 0xf4240

    .line 1137
    .local v0, "WIFI_BPS":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .line 1139
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .locals 4

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 1249
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    goto :goto_0
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 4
    .param p0, "power"    # D

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 324
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "%.8f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.7f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_1
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.6f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_2
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.5f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_3
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.4f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.3f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 331
    :cond_6
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 332
    :cond_7
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 126
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_0

    .line 502
    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v120, "procAppUsage S"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    const/16 v105, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v105

    if-eqz v105, :cond_1

    const/16 v20, 0x1

    .line 507
    .local v20, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v105, v0

    const-string/jumbo v120, "sensor"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/hardware/SensorManager;

    .line 509
    .local v65, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v104, v0

    .line 510
    .local v104, "which":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    invoke-virtual/range {v105 .. v105}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v67

    .line 511
    .local v67, "speedSteps":I
    move/from16 v0, v67

    new-array v0, v0, [D

    move-object/from16 v54, v0

    .line 513
    .local v54, "powerCpuNormal":[D
    move/from16 v0, v67

    new-array v0, v0, [J

    move-object/from16 v16, v0

    .line 515
    .local v16, "cpuSpeedStepTimes":[J
    const/16 v50, 0x0

    .local v50, "p":I
    :goto_1
    move/from16 v0, v50

    move/from16 v1, v67

    if-ge v0, v1, :cond_2

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v120, "cpu.active"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v120

    aput-wide v120, v54, v50

    .line 515
    add-int/lit8 v50, v50, 0x1

    goto :goto_1

    .line 506
    .end local v16    # "cpuSpeedStepTimes":[J
    .end local v20    # "forAllUsers":Z
    .end local v50    # "p":I
    .end local v54    # "powerCpuNormal":[D
    .end local v65    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v67    # "speedSteps":I
    .end local v104    # "which":I
    :cond_1
    const/16 v20, 0x0

    goto :goto_0

    .line 518
    .restart local v16    # "cpuSpeedStepTimes":[J
    .restart local v20    # "forAllUsers":Z
    .restart local v50    # "p":I
    .restart local v54    # "powerCpuNormal":[D
    .restart local v65    # "sensorManager":Landroid/hardware/SensorManager;
    .restart local v67    # "speedSteps":I
    .restart local v104    # "which":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerPacket()D

    move-result-wide v36

    .line 519
    .local v36, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilePowerPerMs()D

    move-result-wide v34

    .line 520
    .local v34, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getWifiPowerPerPacket()D

    move-result-wide v106

    .line 521
    .local v106, "wifiPowerPerPacket":D
    const-wide/16 v10, 0x0

    .line 522
    .local v10, "appWakelockTimeUs":J
    const/16 v48, 0x0

    .line 523
    .local v48, "osApp":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    move-wide/from16 v120, v0

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v105, v0

    invoke-virtual/range {v105 .. v105}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v92

    .line 525
    .local v92, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v92 .. v92}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 528
    .local v7, "NU":I
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_3

    .line 529
    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v121, "procAppUsage Value("

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-static/range {v36 .. v37}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v121

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-static/range {v34 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v121

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-static/range {v106 .. v107}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v121

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ")"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_3
    const/16 v30, 0x0

    .end local v50    # "p":I
    .local v30, "iu":I
    :goto_2
    move/from16 v0, v30

    if-ge v0, v7, :cond_35

    .line 534
    move-object/from16 v0, v92

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/BatteryStats$Uid;

    .line 536
    .local v91, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v52, 0x0

    .line 537
    .local v52, "power":D
    const-wide/16 v26, 0x0

    .line 538
    .local v26, "highestDrain":D
    const/16 v49, 0x0

    .line 539
    .local v49, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v55

    .line 540
    .local v55, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v18, 0x0

    .line 541
    .local v18, "cpuTime":J
    const-wide/16 v14, 0x0

    .line 542
    .local v14, "cpuFgTime":J
    const-wide/16 v102, 0x0

    .line 543
    .local v102, "wakelockTime":J
    const-wide/16 v24, 0x0

    .line 544
    .local v24, "gpsTime":J
    invoke-interface/range {v55 .. v55}, Ljava/util/Map;->size()I

    move-result v105

    if-lez v105, :cond_e

    .line 547
    invoke-interface/range {v55 .. v55}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v105

    invoke-interface/range {v105 .. v105}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 548
    .local v17, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/os/BatteryStats$Uid$Proc;

    .line 550
    .local v58, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v58

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v96

    .line 551
    .local v96, "userTime":J
    move-object/from16 v0, v58

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v72

    .line 552
    .local v72, "systemTime":J
    move-object/from16 v0, v58

    move/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    .line 553
    .local v22, "foregroundTime":J
    const-wide/16 v120, 0x0

    cmp-long v105, v96, v120

    if-gez v105, :cond_5

    .line 554
    const-wide/16 v96, 0x0

    .line 556
    :cond_5
    const-wide/16 v120, 0x0

    cmp-long v105, v72, v120

    if-gez v105, :cond_6

    .line 557
    const-wide/16 v72, 0x0

    .line 559
    :cond_6
    const-wide/16 v120, 0x0

    cmp-long v105, v22, v120

    if-gez v105, :cond_7

    .line 560
    const-wide/16 v22, 0x0

    .line 563
    :cond_7
    const-wide/16 v120, 0xa

    mul-long v120, v120, v22

    add-long v14, v14, v120

    .line 564
    add-long v120, v96, v72

    const-wide/16 v122, 0xa

    mul-long v78, v120, v122

    .line 565
    .local v78, "tmpCpuTime":J
    const/16 v90, 0x0

    .line 567
    .local v90, "totalTimeAtSpeeds":I
    const/16 v70, 0x0

    .local v70, "step":I
    :goto_4
    move/from16 v0, v70

    move/from16 v1, v67

    if-ge v0, v1, :cond_9

    .line 568
    move-object/from16 v0, v58

    move/from16 v1, v70

    move/from16 v2, v104

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v120

    aput-wide v120, v16, v70

    .line 570
    aget-wide v120, v16, v70

    const-wide/16 v122, 0x0

    cmp-long v105, v120, v122

    if-gez v105, :cond_8

    .line 571
    const-wide/16 v120, 0x0

    aput-wide v120, v16, v70

    .line 574
    :cond_8
    move/from16 v0, v90

    int-to-long v0, v0

    move-wide/from16 v120, v0

    aget-wide v122, v16, v70

    add-long v120, v120, v122

    move-wide/from16 v0, v120

    long-to-int v0, v0

    move/from16 v90, v0

    .line 567
    add-int/lit8 v70, v70, 0x1

    goto :goto_4

    .line 576
    :cond_9
    if-nez v90, :cond_a

    const/16 v90, 0x1

    .line 578
    :cond_a
    const-wide/16 v56, 0x0

    .line 579
    .local v56, "processPower":D
    const/16 v70, 0x0

    :goto_5
    move/from16 v0, v70

    move/from16 v1, v67

    if-ge v0, v1, :cond_b

    .line 580
    aget-wide v120, v16, v70

    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move/from16 v0, v90

    int-to-double v0, v0

    move-wide/from16 v122, v0

    div-double v60, v120, v122

    .line 584
    .local v60, "ratio":D
    move-wide/from16 v0, v78

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v120, v120, v60

    aget-wide v122, v54, v70

    mul-double v120, v120, v122

    add-double v56, v56, v120

    .line 579
    add-int/lit8 v70, v70, 0x1

    goto :goto_5

    .line 586
    .end local v60    # "ratio":D
    :cond_b
    add-long v18, v18, v78

    .line 591
    add-double v52, v52, v56

    .line 592
    if-eqz v49, :cond_c

    const-string v105, "*"

    move-object/from16 v0, v49

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v105

    if-eqz v105, :cond_d

    .line 594
    :cond_c
    move-wide/from16 v26, v56

    .line 595
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v49

    .end local v49    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v49, Ljava/lang/String;

    .restart local v49    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_3

    .line 596
    :cond_d
    cmpg-double v105, v26, v56

    if-gez v105, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Ljava/lang/String;

    const-string v120, "*"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v105

    if-nez v105, :cond_4

    .line 598
    move-wide/from16 v26, v56

    .line 599
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v49

    .end local v49    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v49, Ljava/lang/String;

    .restart local v49    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_3

    .line 603
    .end local v17    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v22    # "foregroundTime":J
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v56    # "processPower":D
    .end local v58    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v70    # "step":I
    .end local v72    # "systemTime":J
    .end local v78    # "tmpCpuTime":J
    .end local v90    # "totalTimeAtSpeeds":I
    .end local v96    # "userTime":J
    :cond_e
    cmp-long v105, v14, v18

    if-lez v105, :cond_f

    .line 607
    move-wide/from16 v18, v14

    .line 609
    :cond_f
    const-wide v120, 0x414b774000000000L    # 3600000.0

    div-double v52, v52, v120

    .line 612
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v101

    .line 614
    .local v101, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v101 .. v101}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v105

    invoke-interface/range {v105 .. v105}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_11

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Ljava/util/Map$Entry;

    .line 615
    .local v100, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v100 .. v100}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 618
    .local v95, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v105, 0x0

    move-object/from16 v0, v95

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v71

    .line 619
    .local v71, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v71, :cond_10

    .line 620
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v71

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    add-long v102, v102, v120

    goto :goto_6

    .line 625
    .end local v71    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v95    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v100    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_11
    const-wide/16 v120, 0x0

    cmp-long v105, v102, v120

    if-gez v105, :cond_12

    .line 626
    const-wide/16 v102, 0x0

    .line 630
    :cond_12
    add-long v10, v10, v102

    .line 631
    const-wide/16 v120, 0x3e8

    div-long v102, v102, v120

    .line 634
    move-wide/from16 v0, v102

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v122, "cpu.awake"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    .line 638
    .local v50, "p":D
    add-double v52, v52, v50

    .line 642
    const/16 v105, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v38

    .line 643
    .local v38, "mobileRx":J
    const/16 v105, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v42

    .line 644
    .local v42, "mobileTx":J
    const/16 v105, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v40

    .line 645
    .local v40, "mobileRxB":J
    const/16 v105, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v44

    .line 646
    .local v44, "mobileTxB":J
    const-wide/16 v120, 0x0

    cmp-long v105, v38, v120

    if-gez v105, :cond_13

    .line 647
    const-wide/16 v38, 0x0

    .line 649
    :cond_13
    const-wide/16 v120, 0x0

    cmp-long v105, v42, v120

    if-gez v105, :cond_14

    .line 650
    const-wide/16 v42, 0x0

    .line 652
    :cond_14
    const-wide/16 v120, 0x0

    cmp-long v105, v40, v120

    if-gez v105, :cond_15

    .line 653
    const-wide/16 v40, 0x0

    .line 655
    :cond_15
    const-wide/16 v120, 0x0

    cmp-long v105, v44, v120

    if-gez v105, :cond_16

    .line 656
    const-wide/16 v44, 0x0

    .line 660
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v32

    .line 661
    .local v32, "mobileActive":J
    const-wide/16 v120, 0x0

    cmp-long v105, v32, v120

    if-lez v105, :cond_1e

    .line 664
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    move-wide/from16 v120, v0

    add-long v120, v120, v32

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 665
    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v120, v120, v34

    const-wide v122, 0x408f400000000000L    # 1000.0

    div-double v50, v120, v122

    .line 674
    :goto_7
    add-double v52, v52, v50

    .line 678
    const/16 v105, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v110

    .line 679
    .local v110, "wifiRx":J
    const/16 v105, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    .line 680
    .local v116, "wifiTx":J
    const/16 v105, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v112

    .line 681
    .local v112, "wifiRxB":J
    const/16 v105, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v118

    .line 682
    .local v118, "wifiTxB":J
    const-wide/16 v120, 0x0

    cmp-long v105, v110, v120

    if-gez v105, :cond_17

    .line 683
    const-wide/16 v110, 0x0

    .line 685
    :cond_17
    const-wide/16 v120, 0x0

    cmp-long v105, v116, v120

    if-gez v105, :cond_18

    .line 686
    const-wide/16 v116, 0x0

    .line 688
    :cond_18
    const-wide/16 v120, 0x0

    cmp-long v105, v112, v120

    if-gez v105, :cond_19

    .line 689
    const-wide/16 v112, 0x0

    .line 691
    :cond_19
    const-wide/16 v120, 0x0

    cmp-long v105, v118, v120

    if-gez v105, :cond_1a

    .line 692
    const-wide/16 v118, 0x0

    .line 695
    :cond_1a
    add-long v120, v110, v116

    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v50, v120, v106

    .line 698
    add-double v52, v52, v50

    .line 701
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v108, v120, v122

    .line 703
    .local v108, "wifiRunningTimeMs":J
    const-wide/16 v120, 0x0

    cmp-long v105, v108, v120

    if-gez v105, :cond_1b

    .line 704
    const-wide/16 v108, 0x0

    .line 707
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    move-wide/from16 v120, v0

    add-long v120, v120, v108

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 708
    move-wide/from16 v0, v108

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v122, "wifi.on"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    .line 712
    add-double v52, v52, v50

    .line 715
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v114, v120, v122

    .line 717
    .local v114, "wifiScanTimeMs":J
    const-wide/16 v120, 0x0

    cmp-long v105, v114, v120

    if-gez v105, :cond_1c

    .line 718
    const-wide/16 v114, 0x0

    .line 721
    :cond_1c
    move-wide/from16 v0, v114

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v122, "wifi.scan"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    .line 725
    add-double v52, v52, v50

    .line 726
    const/4 v9, 0x0

    .local v9, "bin":I
    :goto_8
    const/16 v105, 0x5

    move/from16 v0, v105

    if-ge v9, v0, :cond_1f

    .line 727
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v12, v120, v122

    .line 729
    .local v12, "batchScanTimeMs":J
    const-wide/16 v120, 0x0

    cmp-long v105, v12, v120

    if-gez v105, :cond_1d

    .line 730
    const-wide/16 v12, 0x0

    .line 733
    :cond_1d
    long-to-double v0, v12

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v122, "wifi.batchedscan"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    .line 738
    add-double v52, v52, v50

    .line 726
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 669
    .end local v9    # "bin":I
    .end local v12    # "batchScanTimeMs":J
    .end local v108    # "wifiRunningTimeMs":J
    .end local v110    # "wifiRx":J
    .end local v112    # "wifiRxB":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    .end local v118    # "wifiTxB":J
    :cond_1e
    add-long v120, v38, v42

    move-wide/from16 v0, v120

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v50, v120, v36

    goto/16 :goto_7

    .line 742
    .restart local v9    # "bin":I
    .restart local v108    # "wifiRunningTimeMs":J
    .restart local v110    # "wifiRx":J
    .restart local v112    # "wifiRxB":J
    .restart local v114    # "wifiScanTimeMs":J
    .restart local v116    # "wifiTx":J
    .restart local v118    # "wifiTxB":J
    :cond_1f
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v66

    .line 743
    .local v66, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v66 .. v66}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 744
    .local v6, "NSE":I
    const/16 v29, 0x0

    .local v29, "ise":I
    :goto_9
    move/from16 v0, v29

    if-ge v0, v6, :cond_24

    .line 745
    move-object/from16 v0, v66

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/os/BatteryStats$Uid$Sensor;

    .line 746
    .local v62, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v66

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    .line 747
    .local v63, "sensorHandle":I
    invoke-virtual/range {v62 .. v62}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v71

    .line 749
    .restart local v71    # "timer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v68, 0x0

    .line 750
    .local v68, "sensorTime":J
    if-eqz v71, :cond_20

    .line 751
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v71

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v68, v120, v122

    .line 755
    :cond_20
    const-wide/16 v120, 0x0

    cmp-long v105, v68, v120

    if-gez v105, :cond_21

    .line 756
    const-wide/16 v68, 0x0

    .line 759
    :cond_21
    const-wide/16 v46, 0x0

    .line 760
    .local v46, "multiplier":D
    packed-switch v63, :pswitch_data_0

    .line 766
    const/16 v105, -0x1

    move-object/from16 v0, v65

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v64

    .line 768
    .local v64, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_22
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v105

    if-eqz v105, :cond_23

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/hardware/Sensor;

    .line 769
    .local v59, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v59 .. v59}, Landroid/hardware/Sensor;->getHandle()I

    move-result v105

    move/from16 v0, v105

    move/from16 v1, v63

    if-ne v0, v1, :cond_22

    .line 770
    invoke-virtual/range {v59 .. v59}, Landroid/hardware/Sensor;->getPower()F

    move-result v105

    move/from16 v0, v105

    float-to-double v0, v0

    move-wide/from16 v46, v0

    .line 775
    .end local v59    # "s":Landroid/hardware/Sensor;
    .end local v64    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_23
    :goto_a
    move-wide/from16 v0, v68

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v120, v120, v46

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v50, v120, v122

    .line 778
    add-double v52, v52, v50

    .line 744
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 762
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v120, "gps.on"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v46

    .line 763
    move-wide/from16 v24, v68

    .line 764
    goto :goto_a

    .line 785
    .end local v46    # "multiplier":D
    .end local v62    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v63    # "sensorHandle":I
    .end local v68    # "sensorTime":J
    .end local v71    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v120, "screen.on"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v80

    .line 786
    .local v80, "tmpScrOnPower":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v120

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getDisplayTurnedOnTime(JI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v82, v120, v122

    .line 787
    .local v82, "tmpScrOnTimeMs":J
    const-wide/16 v120, 0x0

    cmp-long v105, v82, v120

    if-gez v105, :cond_25

    .line 788
    const-wide/16 v82, 0x0

    .line 790
    :cond_25
    move-wide/from16 v0, v82

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v88, v80, v120

    .line 792
    .local v88, "totalScrOnPower":D
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_26

    .line 793
    const-wide/16 v120, 0x0

    cmpl-double v105, v88, v120

    if-lez v105, :cond_26

    .line 794
    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string v121, "ProcSu = ("

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string/jumbo v121, "th,"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v82

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ")"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_26
    const-wide/16 v86, 0x0

    .line 802
    .local v86, "totalBrightnessPower":D
    const-wide/16 v74, 0x0

    .line 803
    .local v74, "tmpBrightnessBinPower":D
    const-wide/16 v76, 0x0

    .line 804
    .local v76, "tmpBrightnessTimeMs":J
    const-wide/16 v84, 0x0

    .line 806
    .local v84, "tmpTotalBrightnessPower":D
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_b
    const/16 v105, 0x5

    move/from16 v0, v21

    move/from16 v1, v105

    if-ge v0, v1, :cond_29

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string/jumbo v120, "screen.brightness_bin"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v74

    .line 808
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v120, v0

    move-object/from16 v0, v91

    move/from16 v1, v21

    move-wide/from16 v2, v120

    move/from16 v4, v104

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getDisplayBrightnessTime(IJI)J

    move-result-wide v120

    const-wide/16 v122, 0x3e8

    div-long v76, v120, v122

    .line 809
    const-wide/16 v120, 0x0

    cmp-long v105, v76, v120

    if-gez v105, :cond_27

    .line 810
    const-wide/16 v76, 0x0

    .line 812
    :cond_27
    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v120, v0

    mul-double v84, v74, v120

    .line 814
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_28

    .line 815
    const-wide/16 v120, 0x0

    cmpl-double v105, v84, v120

    if-lez v105, :cond_28

    .line 816
    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string v121, "ProcBr = ("

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string/jumbo v121, "th,"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v84

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ","

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v120

    const-string v121, ")"

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_28
    add-double v86, v86, v84

    .line 806
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    .line 823
    :cond_29
    add-double v120, v88, v86

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v120, v120, v122

    add-double v52, v52, v120

    .line 830
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    invoke-static/range {v105 .. v105}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v93

    .line 831
    .local v93, "userId":I
    const-wide/16 v120, 0x0

    cmpl-double v105, v52, v120

    if-nez v105, :cond_2a

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    if-nez v105, :cond_2c

    .line 832
    :cond_2a
    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v105, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v120, 0x1

    move/from16 v0, v120

    new-array v0, v0, [D

    move-object/from16 v120, v0

    const/16 v121, 0x0

    aput-wide v52, v120, v121

    move-object/from16 v0, v105

    move-object/from16 v1, v91

    move-object/from16 v2, v120

    invoke-direct {v8, v0, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 834
    .local v8, "app":Lcom/android/internal/os/BatterySipper;
    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->cpuTime:J

    .line 835
    move-wide/from16 v0, v24

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->gpsTime:J

    .line 836
    move-wide/from16 v0, v108

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiRunningTime:J

    .line 837
    iput-wide v14, v8, Lcom/android/internal/os/BatterySipper;->cpuFgTime:J

    .line 838
    move-wide/from16 v0, v102

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 839
    move-wide/from16 v0, v38

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 840
    move-wide/from16 v0, v42

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 841
    const-wide/16 v120, 0x3e8

    div-long v120, v32, v120

    move-wide/from16 v0, v120

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v105, v0

    move-object/from16 v0, v91

    move/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v105

    move/from16 v0, v105

    iput v0, v8, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 843
    move-wide/from16 v0, v110

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 844
    move-wide/from16 v0, v116

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 845
    move-wide/from16 v0, v40

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 846
    move-wide/from16 v0, v44

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 847
    move-wide/from16 v0, v112

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 848
    move-wide/from16 v0, v118

    iput-wide v0, v8, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 849
    move-object/from16 v0, v49

    iput-object v0, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 850
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    const/16 v120, 0x3f2

    move/from16 v0, v105

    move/from16 v1, v120

    if-ne v0, v1, :cond_2d

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 886
    :cond_2b
    :goto_c
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    if-nez v105, :cond_2c

    .line 887
    move-object/from16 v48, v8

    .line 533
    .end local v8    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_2c
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 853
    .restart local v8    # "app":Lcom/android/internal/os/BatterySipper;
    :cond_2d
    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    const/16 v120, 0x3ea

    move/from16 v0, v105

    move/from16 v1, v120

    if-ne v0, v1, :cond_2e

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_c

    .line 856
    :cond_2e
    if-nez v20, :cond_32

    move-object/from16 v0, p1

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v105

    if-nez v105, :cond_32

    invoke-virtual/range {v91 .. v91}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v105

    invoke-static/range {v105 .. v105}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v105

    const/16 v120, 0x2710

    move/from16 v0, v105

    move/from16 v1, v120

    if-lt v0, v1, :cond_32

    .line 860
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_2f

    .line 861
    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v120, Ljava/lang/StringBuilder;

    invoke-direct/range {v120 .. v120}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v121, "procAppUsage if3="

    invoke-virtual/range {v120 .. v121}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v120

    move-object/from16 v0, v120

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v120

    invoke-virtual/range {v120 .. v120}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    .line 866
    .local v31, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v31, :cond_30

    .line 867
    new-instance v31, Ljava/util/ArrayList;

    .end local v31    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .restart local v31    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 870
    :cond_30
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    const-wide/16 v120, 0x0

    cmpl-double v105, v52, v120

    if-eqz v105, :cond_2b

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Ljava/lang/Double;

    .line 873
    .local v94, "userPower":Ljava/lang/Double;
    if-nez v94, :cond_31

    .line 874
    invoke-static/range {v52 .. v53}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v94

    .line 878
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    move/from16 v1, v93

    move-object/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 876
    :cond_31
    invoke-virtual/range {v94 .. v94}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v120

    add-double v120, v120, v52

    invoke-static/range {v120 .. v121}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v94

    goto :goto_d

    .line 881
    .end local v31    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v94    # "userPower":Ljava/lang/Double;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v105, v0

    move-object/from16 v0, v105

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v120, v0

    cmpl-double v105, v52, v120

    if-lez v105, :cond_33

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 883
    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v120, v0

    cmpl-double v105, v52, v120

    if-lez v105, :cond_34

    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 884
    :cond_34
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    goto/16 :goto_c

    .line 895
    .end local v6    # "NSE":I
    .end local v8    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v9    # "bin":I
    .end local v14    # "cpuFgTime":J
    .end local v18    # "cpuTime":J
    .end local v21    # "i":I
    .end local v24    # "gpsTime":J
    .end local v26    # "highestDrain":D
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v29    # "ise":I
    .end local v32    # "mobileActive":J
    .end local v38    # "mobileRx":J
    .end local v40    # "mobileRxB":J
    .end local v42    # "mobileTx":J
    .end local v44    # "mobileTxB":J
    .end local v49    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v50    # "p":D
    .end local v52    # "power":D
    .end local v55    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v66    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v74    # "tmpBrightnessBinPower":D
    .end local v76    # "tmpBrightnessTimeMs":J
    .end local v80    # "tmpScrOnPower":D
    .end local v82    # "tmpScrOnTimeMs":J
    .end local v84    # "tmpTotalBrightnessPower":D
    .end local v86    # "totalBrightnessPower":D
    .end local v88    # "totalScrOnPower":D
    .end local v91    # "u":Landroid/os/BatteryStats$Uid;
    .end local v93    # "userId":I
    .end local v101    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v102    # "wakelockTime":J
    .end local v108    # "wifiRunningTimeMs":J
    .end local v110    # "wifiRx":J
    .end local v112    # "wifiRxB":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    .end local v118    # "wifiTxB":J
    :cond_35
    if-eqz v48, :cond_38

    .line 896
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    move-wide/from16 v120, v0

    const-wide/16 v122, 0x3e8

    div-long v98, v120, v122

    .line 897
    .local v98, "wakeTimeMillis":J
    const-wide/16 v120, 0x3e8

    div-long v120, v10, v120

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v105, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    move-wide/from16 v122, v0

    move-object/from16 v0, v105

    move-wide/from16 v1, v122

    move/from16 v3, v104

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v122

    const-wide/16 v124, 0x3e8

    div-long v122, v122, v124

    add-long v120, v120, v122

    sub-long v98, v98, v120

    .line 899
    const-wide/16 v120, 0x0

    cmp-long v105, v98, v120

    if-lez v105, :cond_38

    .line 900
    move-wide/from16 v0, v98

    long-to-double v0, v0

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v105, v0

    const-string v122, "cpu.awake"

    move-object/from16 v0, v105

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v122

    mul-double v120, v120, v122

    const-wide v122, 0x414b774000000000L    # 3600000.0

    div-double v52, v120, v122

    .line 905
    .restart local v52    # "power":D
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    move-wide/from16 v120, v0

    add-long v120, v120, v98

    move-wide/from16 v0, v120

    move-object/from16 v2, v48

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->wakeLockTime:J

    .line 906
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, v48

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->value:D

    .line 907
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->values:[D

    move-object/from16 v105, v0

    const/16 v120, 0x0

    aget-wide v122, v105, v120

    add-double v122, v122, v52

    aput-wide v122, v105, v120

    .line 908
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v122, v0

    cmpl-double v105, v120, v122

    if-lez v105, :cond_36

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 909
    :cond_36
    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-wide/from16 v122, v0

    cmpl-double v105, v120, v122

    if-lez v105, :cond_37

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v120, v0

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 910
    :cond_37
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v120, v0

    add-double v120, v120, v52

    move-wide/from16 v0, v120

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 915
    .end local v52    # "power":D
    .end local v98    # "wakeTimeMillis":J
    :cond_38
    sget-boolean v105, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v105, :cond_39

    .line 916
    sget-object v105, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v120, "procAppUsage E"

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_39
    return-void

    .line 760
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 2

    .prologue
    .line 1145
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 1146
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "procMiscUsage S"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    .line 1151
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    .line 1155
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addFlashlightUsage()V

    .line 1156
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    .line 1157
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    .line 1158
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    .line 1160
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_1

    .line 1161
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    .line 1165
    :cond_1
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_2

    .line 1166
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "procMiscUsage E"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_2
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1223
    const/4 v3, 0x0

    .line 1224
    .local v3, "pos":I
    new-array v1, p1, [B

    .line 1226
    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 1229
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 1232
    return-object v1

    .line 1234
    :cond_1
    add-int/2addr v3, v0

    .line 1235
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 1236
    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    .line 1237
    add-int v4, v3, p1

    new-array v2, v4, [B

    .line 1238
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1239
    move-object v1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_0

    .line 192
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "statsFromFile S"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 197
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 198
    .local v5, "path":Ljava/io/File;
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;

    .line 199
    .local v6, "stats":Landroid/os/BatteryStats;
    if-eqz v6, :cond_2

    .line 201
    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_1

    .line 202
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "statsFromFile has data"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :goto_0
    return-object v6

    .line 207
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :cond_2
    const/4 v2, 0x0

    .line 209
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 211
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 212
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v9, v0

    invoke-virtual {v4, v0, v7, v9}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 213
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 215
    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_3

    .line 216
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "statsFromFile create data"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_3
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    if-eqz v3, :cond_4

    .line 225
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    goto :goto_0

    .line 220
    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    if-eqz v2, :cond_5

    .line 225
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 230
    :cond_5
    :goto_3
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 233
    sget-boolean v7, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v7, :cond_6

    .line 234
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "statsFromFile E"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_6
    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_7

    .line 225
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 227
    :cond_7
    :goto_5
    :try_start_9
    throw v7

    .line 230
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 226
    .restart local v0    # "data":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "parcel":Landroid/os/Parcel;
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :catch_1
    move-exception v9

    goto :goto_1

    .end local v0    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_5

    .line 223
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 220
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public clearStats()V
    .locals 2

    .prologue
    .line 258
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearStats"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 263
    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 290
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "create Stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 295
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 296
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 300
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "create Bundle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    .line 306
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    .line 308
    :cond_1
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 310
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 311
    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .locals 2

    .prologue
    .line 1214
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .locals 2

    .prologue
    .line 1216
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    return-wide v0
.end method

.method public getComputedPower()D
    .locals 2

    .prologue
    .line 1204
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    .prologue
    .line 1211
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    .prologue
    .line 1198
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    .prologue
    .line 1200
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    .prologue
    .line 1207
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_1

    .line 268
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "getStats first"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    .prologue
    .line 1194
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    .prologue
    .line 1196
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .locals 2

    .prologue
    .line 1202
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public refreshStats(II)V
    .locals 2
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    .prologue
    .line 339
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 340
    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 342
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 8
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const-wide/16 v2, 0x3e8

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    .line 363
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 13
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 370
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats S ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    .line 377
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    .line 378
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    .line 379
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    .line 380
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 381
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPower:D

    .line 382
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPower:D

    .line 383
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppMobileActive:J

    .line 384
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mAppWifiRunning:J

    .line 386
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 387
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 388
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 389
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 390
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 391
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 393
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_2

    .line 395
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 396
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "rfStats no data"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iput p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    .line 403
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    .line 404
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    .line 405
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    .line 406
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    .line 407
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    .line 408
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    .line 409
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    .line 410
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    .line 420
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    .line 422
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    .line 426
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 427
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats time ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats Drain ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    .line 435
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_5

    .line 436
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 437
    .local v8, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 438
    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 439
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 442
    .end local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_5
    const/4 v9, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_8

    .line 443
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 444
    .local v11, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_7

    .line 445
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    .line 446
    .restart local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    .line 447
    iget-wide v2, v8, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    .line 448
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 442
    .end local v8    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 452
    .end local v10    # "j":I
    .end local v11    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_8
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper$1;

    invoke-direct {v3, p0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    .line 467
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_9

    .line 468
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rfStats power ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_9
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 477
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    .line 478
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_b

    .line 479
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    sub-double v6, v2, v4

    .line 480
    .local v6, "amount":D
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    .line 481
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    .line 488
    .end local v6    # "amount":D
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 491
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 492
    sget-object v2, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "refreshStats E"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :cond_b
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a

    .line 483
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    sub-double v6, v2, v4

    .line 484
    .restart local v6    # "amount":D
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntryNoTotal(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    goto :goto_4
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 349
    .local v1, "n":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 350
    .local v3, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 351
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 352
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    .line 355
    return-void
.end method

.method public storeState()V
    .locals 2

    .prologue
    .line 315
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "storeState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    .line 320
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    .line 321
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v6, :cond_0

    .line 154
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "storeStatsHistoryInFile S"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 159
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 160
    .local v5, "path":Ljava/io/File;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 165
    .local v3, "hist":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 166
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 167
    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    if-eqz v2, :cond_4

    .line 173
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    .line 178
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 181
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsHelper;->DEBUG_ON:Z

    if-eqz v6, :cond_2

    .line 182
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "storeStatsHistoryInFile E"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    return-void

    .line 174
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 175
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 168
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    if-eqz v1, :cond_1

    .line 173
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 174
    :catch_2
    move-exception v6

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_3

    .line 173
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 175
    :cond_3
    :goto_3
    :try_start_8
    throw v6

    .line 178
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "path":Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 174
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "path":Ljava/io/File;
    :catch_3
    move-exception v8

    goto :goto_3

    .line 171
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 168
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :cond_4
    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
