.class final Lcom/sprint/net/cdma/EvdoInfo$1;
.super Ljava/lang/Object;
.source "EvdoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/cdma/EvdoInfo;
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
        "Lcom/sprint/net/cdma/EvdoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/cdma/EvdoInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 404
    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sprint/net/cdma/EvdoInfo;-><init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/EvdoInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/sprint/net/cdma/EvdoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/cdma/EvdoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sprint/net/cdma/EvdoInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 409
    new-array v0, p1, [Lcom/sprint/net/cdma/EvdoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/sprint/net/cdma/EvdoInfo$1;->newArray(I)[Lcom/sprint/net/cdma/EvdoInfo;

    move-result-object v0

    return-object v0
.end method
