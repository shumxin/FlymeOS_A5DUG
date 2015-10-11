.class public Lcom/htc/profileflag/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# static fields
.field private static final PROP_CID:Ljava/lang/String; = "ro.cid"

.field private static final PROP_KIDMODE:Ljava/lang/String; = "ro.kidmode.enable"

.field static final TAG:Ljava/lang/String; = "FeatureConfig"

.field private static cid:Ljava/lang/String;

.field private static kidmode_enable:I

.field private static kidmode_enable_default:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-string/jumbo v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/profileflag/FeatureConfig;->cid:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.kidmode.enable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/profileflag/FeatureConfig;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/profileflag/FeatureConfig;->kidmode_enable:I

    .line 22
    const-string/jumbo v0, "ro.kidmode.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/htc/profileflag/FeatureConfig;->kidmode_enable_default:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFeatureKidModeEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    sget v3, Lcom/htc/profileflag/FeatureConfig;->kidmode_enable:I

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 31
    .local v0, "enabled":Z
    :goto_0
    if-nez v0, :cond_0

    .line 32
    sget v3, Lcom/htc/profileflag/FeatureConfig;->kidmode_enable_default:I

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 34
    :cond_0
    :goto_1
    return v0

    .end local v0    # "enabled":Z
    :cond_1
    move v0, v2

    .line 30
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_2
    move v0, v2

    .line 32
    goto :goto_1
.end method
