.class public Lcom/android/server/HtcDeviceRootMonitor;
.super Ljava/lang/Object;
.source "HtcDeviceRootMonitor.java"


# static fields
.field public static final ROOT_MONITOR_KEY:Ljava/lang/String; = "device_root_monitor_report_period"

.field private static final ROOT_STATUS_INTENT:Ljava/lang/String; = "com.verizon.security.ROOT_STATUS"

.field public static final SERVICE:Ljava/lang/String; = "rootmonitor"

.field private static final TAG:Ljava/lang/String; = "HtcDeviceRootMonitor"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPeriod:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "root_period"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/HtcDeviceRootMonitor$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/HtcDeviceRootMonitor$1;-><init>(Lcom/android/server/HtcDeviceRootMonitor;Z)V

    iput-object v0, p0, Lcom/android/server/HtcDeviceRootMonitor;->mHandler:Landroid/os/Handler;

    .line 56
    iput p1, p0, Lcom/android/server/HtcDeviceRootMonitor;->mPeriod:I

    .line 57
    iget-object v0, p0, Lcom/android/server/HtcDeviceRootMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcDeviceRootMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HtcDeviceRootMonitor;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/HtcDeviceRootMonitor;->mPeriod:I

    return v0
.end method
