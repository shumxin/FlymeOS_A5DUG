.class final Lcom/sprint/net/lte/ApnInfo$1;
.super Ljava/lang/Object;
.source "ApnInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/ApnInfo;
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
        "Lcom/sprint/net/lte/ApnInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/lte/ApnInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    new-instance v0, Lcom/sprint/net/lte/ApnInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sprint/net/lte/ApnInfo;-><init>(Landroid/os/Parcel;Lcom/sprint/net/lte/ApnInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/ApnInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/lte/ApnInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sprint/net/lte/ApnInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 78
    new-array v0, p1, [Lcom/sprint/net/lte/ApnInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/ApnInfo$1;->newArray(I)[Lcom/sprint/net/lte/ApnInfo;

    move-result-object v0

    return-object v0
.end method
