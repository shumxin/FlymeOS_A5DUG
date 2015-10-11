.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_POWER_JACKET_EXIST:Z = true

.field public static final BATTERY_POWER_JACKET_NOT_EXIST:Z = false

.field public static final BATTERY_POWER_JACKET_STATUS_CHARGING:I = 0x1

.field public static final BATTERY_POWER_JACKET_STATUS_CHARGING_FULL:I = 0x2

.field public static final BATTERY_POWER_JACKET_STATUS_NOT_CHARGING:I = 0x0

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_OVERLOAD:Ljava/lang/String; = "overload"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PLUGIN_STATUS:Ljava/lang/String; = "plugin_status"

.field public static final EXTRA_POWER_JACKET_EXIST:Ljava/lang/String; = "power_jacket_exist"

.field public static final EXTRA_POWER_JACKET_LEVEL:Ljava/lang/String; = "power_jacket_level"

.field public static final EXTRA_POWER_JACKET_STATUS:Ljava/lang/String; = "power_jacket_status"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_SUPPORT_EXTENSION:Ljava/lang/String; = "support_extension"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_UNSUPPORT_CHARGER:Ljava/lang/String; = "unsupport_charger"

.field public static final EXTRA_USB_OVERHEAT:Ljava/lang/String; = "usb_overheat"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private queryProperty(I)J
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 210
    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v3, :cond_0

    .line 211
    const-string v3, "batteryproperties"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 212
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v3

    iput-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    .line 215
    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v3, :cond_0

    .line 216
    const-wide/high16 v4, -0x8000000000000000L

    .line 230
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-wide v4

    .line 220
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/BatteryProperty;

    invoke-direct {v2}, Landroid/os/BatteryProperty;-><init>()V

    .line 222
    .local v2, "prop":Landroid/os/BatteryProperty;
    iget-object v3, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v3, p1, v2}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v3

    if-nez v3, :cond_1

    .line 223
    invoke-virtual {v2}, Landroid/os/BatteryProperty;->getLong()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .local v4, "ret":J
    goto :goto_0

    .line 225
    .end local v4    # "ret":J
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "ret":J
    goto :goto_0

    .line 226
    .end local v2    # "prop":Landroid/os/BatteryProperty;
    .end local v4    # "ret":J
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Landroid/os/RemoteException;
    const-wide/high16 v4, -0x8000000000000000L

    .restart local v4    # "ret":J
    goto :goto_0
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 243
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongProperty(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method
