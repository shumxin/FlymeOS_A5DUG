.class final Lcom/sprint/net/lte/BaseStationInfo$Modulation$1;
.super Ljava/lang/Object;
.source "BaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/BaseStationInfo$Modulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sprint/net/lte/BaseStationInfo$Modulation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/net/lte/BaseStationInfo$Modulation;->valueOf(Ljava/lang/String;)Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/BaseStationInfo$Modulation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/BaseStationInfo$Modulation$1;->newArray(I)[Lcom/sprint/net/lte/BaseStationInfo$Modulation;

    move-result-object v0

    return-object v0
.end method
