.class final enum Lcom/sprint/net/cdma/Cdma2000Info$SrvState;
.super Ljava/lang/Enum;
.source "Cdma2000Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/Cdma2000Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SrvState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/net/cdma/Cdma2000Info$SrvState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

.field public static final enum SYS_SRV_STATUS_LIMITED:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

.field public static final enum SYS_SRV_STATUS_LIMITED_REGIONAL:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

.field public static final enum SYS_SRV_STATUS_NO_SRV:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

.field public static final enum SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

.field public static final enum SYS_SRV_STATUS_SRV:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    const-string v1, "SYS_SRV_STATUS_NO_SRV"

    invoke-direct {v0, v1, v2}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_NO_SRV:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    .line 71
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    const-string v1, "SYS_SRV_STATUS_LIMITED"

    invoke-direct {v0, v1, v3}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_LIMITED:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    .line 72
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    const-string v1, "SYS_SRV_STATUS_SRV"

    invoke-direct {v0, v1, v4}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_SRV:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    .line 73
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    const-string v1, "SYS_SRV_STATUS_LIMITED_REGIONAL"

    invoke-direct {v0, v1, v5}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_LIMITED_REGIONAL:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    .line 74
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    const-string v1, "SYS_SRV_STATUS_PWR_SAVE"

    invoke-direct {v0, v1, v6}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    sget-object v1, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_NO_SRV:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_LIMITED:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_SRV:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_LIMITED_REGIONAL:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->$VALUES:[Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/net/cdma/Cdma2000Info$SrvState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/net/cdma/Cdma2000Info$SrvState;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->$VALUES:[Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    invoke-virtual {v0}, [Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    return-object v0
.end method
