.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final MAX_NET_CAPABILITY:I = 0x1e

.field private static final MAX_TRANSPORT:I = 0x5

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field private static final MIN_TRANSPORT:I = 0x0

.field public static final NET_CAPABILITY_APN_INTERNET:I = 0x1b

.field public static final NET_CAPABILITY_CALLERNAMEID:I = 0x1d

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field private static final NET_CAPABILITY_HTC_OFFSET:I = 0x19

.field public static final NET_CAPABILITY_HTTPPROXY:I = 0x1c

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_VERIZON800:I = 0x1e

.field public static final NET_CAPABILITY_VZWAPP:I = 0x1a

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "NetworkCapabilities"

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_USBNET:I = 0x5

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1


# instance fields
.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Ljava/lang/String;

.field private mTransportTypes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 583
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/32 v0, 0xe000

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/32 v0, 0xe000

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 57
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 58
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 59
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 60
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/NetworkCapabilities;J)J
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/NetworkCapabilities;J)J
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide p1
.end method

.method static synthetic access$202(Landroid/net/NetworkCapabilities;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/NetworkCapabilities;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    return-object p1
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 459
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 461
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 463
    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 265
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 266
    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "otherSpecifier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t combine two networkSpecifiers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 381
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 382
    return-void
.end method

.method private enumerateBits(J)[I
    .locals 11
    .param p1, "val"    # J

    .prologue
    const-wide/16 v8, 0x1

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 253
    .local v4, "size":I
    new-array v3, v4, [I

    .line 254
    .local v3, "result":[I
    const/4 v0, 0x0

    .line 255
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "resource":I
    move v1, v0

    .line 256
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 257
    and-long v6, p1, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput v2, v3, v1

    .line 258
    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p1, v5

    .line 259
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 261
    :cond_0
    return-object v3

    :cond_1
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 469
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 522
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 525
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 465
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 269
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 518
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    const-wide/16 v4, 0x0

    .line 384
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    .prologue
    .line 205
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 209
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    .prologue
    .line 332
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransportType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 336
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 337
    return-object p0
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 534
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 535
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    .line 536
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    .line 537
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    .line 538
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 554
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/net/NetworkCapabilities;

    if-nez v2, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 555
    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 556
    .local v0, "that":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 274
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 389
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCapabilities()[I
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public getNetworkSpecifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportTypes()[I
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->enumerateBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 6
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    if-ltz p1, :cond_0

    const/16 v2, 0x1e

    if-le p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 248
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public hasTransport(I)Z
    .locals 6
    .param p1, "transportType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 374
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-le p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 377
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shl-int v4, v0, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/16 v4, 0x20

    .line 564
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v0, v6

    long-to-int v0, v0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    goto :goto_0
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "capability"    # I

    .prologue
    .line 220
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkCapability out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 224
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "transportType"    # I

    .prologue
    .line 348
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransportType out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    xor-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 352
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 353
    return-object p0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 545
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "downKbps"    # I

    .prologue
    .line 445
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 446
    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .locals 0
    .param p1, "upKbps"    # I

    .prologue
    .line 416
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 417
    return-void
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have a single transport specified to use setNetworkSpecifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v5

    .line 602
    .local v5, "types":[I
    array-length v7, v5

    if-lez v7, :cond_1

    const-string v4, " Transports: "

    .line 603
    .local v4, "transports":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 604
    aget v7, v5, v2

    packed-switch v7, :pswitch_data_0

    .line 611
    :goto_2
    add-int/lit8 v2, v2, 0x1

    array-length v7, v5

    if-ge v2, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 602
    .end local v2    # "i":I
    .end local v4    # "transports":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 605
    .restart local v2    # "i":I
    .restart local v4    # "transports":Ljava/lang/String;
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CELLULAR"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 606
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 607
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 608
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ETHERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 609
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VPN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 614
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v5

    .line 615
    array-length v7, v5

    if-lez v7, :cond_4

    const-string v0, " Capabilities: "

    .line 616
    .local v0, "capabilities":Ljava/lang/String;
    :goto_3
    const/4 v2, 0x0

    :cond_3
    :goto_4
    array-length v7, v5

    if-ge v2, v7, :cond_5

    .line 617
    aget v7, v5, v2

    packed-switch v7, :pswitch_data_1

    .line 642
    :goto_5
    :pswitch_5
    add-int/lit8 v2, v2, 0x1

    array-length v7, v5

    if-ge v2, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 615
    .end local v0    # "capabilities":Ljava/lang/String;
    :cond_4
    const-string v0, ""

    goto :goto_3

    .line 618
    .restart local v0    # "capabilities":Ljava/lang/String;
    :pswitch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MMS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 619
    :pswitch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SUPL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 620
    :pswitch_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "DUN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 621
    :pswitch_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "FOTA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 622
    :pswitch_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IMS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 623
    :pswitch_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CBS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 624
    :pswitch_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "WIFI_P2P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 625
    :pswitch_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "IA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 626
    :pswitch_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "RCS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 627
    :pswitch_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "XCAP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 628
    :pswitch_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "EIMS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 629
    :pswitch_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOT_METERED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 630
    :pswitch_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "INTERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 631
    :pswitch_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOT_RESTRICTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 632
    :pswitch_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TRUSTED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 633
    :pswitch_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOT_VPN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 635
    :pswitch_16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "APN_INTERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 636
    :pswitch_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "HTTPPROXY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 637
    :pswitch_18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CALLERNAMEID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 638
    :pswitch_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VERIZON800"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 639
    :pswitch_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "VZWAPP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 645
    :cond_5
    iget v7, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " LinkUpBandwidth>="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, "upBand":Ljava/lang/String;
    :goto_6
    iget v7, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-lez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " LinkDnBandwidth>="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Kbps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "dnBand":Ljava/lang/String;
    :goto_7
    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    if-nez v7, :cond_8

    const-string v3, ""

    .line 653
    .local v3, "specifier":Ljava/lang/String;
    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 645
    .end local v1    # "dnBand":Ljava/lang/String;
    .end local v3    # "specifier":Ljava/lang/String;
    .end local v6    # "upBand":Ljava/lang/String;
    :cond_6
    const-string v6, ""

    goto :goto_6

    .line 647
    .restart local v6    # "upBand":Ljava/lang/String;
    :cond_7
    const-string v1, ""

    goto :goto_7

    .line 650
    .restart local v1    # "dnBand":Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Specifier: <"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 617
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1a
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 577
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 578
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 579
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    return-void
.end method
