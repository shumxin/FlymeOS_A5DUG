.class public final enum Lcom/android/internal/telephony/RILConstants$SimTypes;
.super Ljava/lang/Enum;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RILConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/RILConstants$SimTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_DUAL_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_NO_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_RUIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_SIM_FAIL:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

.field public static final enum RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 839
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_NO_SIM_CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 840
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_2G_SIM_CARD"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 841
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_3G_SIM_CARD"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 842
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_TITAN_LITE_SIM_CARD"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 843
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_DBDM_SIM_CARD"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 844
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_WIBRO_ONLY_SIM_CARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 845
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_SIM_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_SIM_FAIL:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 846
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_RUIM_CARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_RUIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 847
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_DUAL_CARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 848
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_TESTSIM_2G_SIM_CARD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 849
    new-instance v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    const-string v1, "RIL_TESTSIM_3G_SIM_CARD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RILConstants$SimTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 838
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/telephony/RILConstants$SimTypes;

    sget-object v1, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_TITAN_LITE_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_SIM_FAIL:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_RUIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_TESTSIM_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_TESTSIM_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->$VALUES:[Lcom/android/internal/telephony/RILConstants$SimTypes;

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
    .line 838
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/RILConstants$SimTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 838
    const-class v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILConstants$SimTypes;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/RILConstants$SimTypes;
    .locals 1

    .prologue
    .line 838
    sget-object v0, Lcom/android/internal/telephony/RILConstants$SimTypes;->$VALUES:[Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/RILConstants$SimTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/RILConstants$SimTypes;

    return-object v0
.end method
