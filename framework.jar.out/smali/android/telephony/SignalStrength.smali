.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$CustomizedUtil;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_DATA_TYPE:I = 0x65

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_LEVEL_5:I = 0x5

.field public static final SIGNAL_STRENGTH_LEVEL_6:I = 0x6

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field public static final SIGNAL_STRENGTH_VOICE_TYPE:I = 0x64

.field private static final VDBG:Z


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSignalBar:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcno:I

.field private mGsmSignalDbm:I

.field private mGsmSignalStrength:I

.field private mHtcLteRsrp:I

.field private mHtcLteRsrq:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTDRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 548
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v0, 0x7fffffff

    const/4 v1, -0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 130
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 131
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 132
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 133
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 134
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 135
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 136
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 137
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 138
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 139
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 140
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 143
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 144
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 147
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 150
    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 151
    iput v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 153
    iput v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 154
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "tdRscp"    # I
    .param p19, "gsm"    # Z

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual/range {p0 .. p19}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIIZ)V

    .line 272
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "gsm"    # Z

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-virtual/range {p0 .. p18}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIZ)V

    .line 253
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "gsmFlag"    # Z

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-virtual/range {p0 .. p16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIZ)V

    .line 236
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 205
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 476
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->readHtcAddedFieldsFrom(Landroid/os/Parcel;)V

    .line 477
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 166
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 167
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 168
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 169
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 170
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 171
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 172
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 173
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 174
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 175
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 176
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 177
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 179
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 180
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 183
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 186
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 187
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 189
    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 190
    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    return-void
.end method

.method private calculateHtcAddedFieldsHashCode()I
    .locals 2

    .prologue
    .line 1443
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    add-int/2addr v0, v1

    return v0
.end method

.method private copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1369
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1370
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1371
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1373
    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1374
    iget v0, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1376
    return-void
.end method

.method private equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z
    .locals 2
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 1432
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    iget v1, p1, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1408
    const-string v0, "GsmSignalDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1409
    const-string v0, "GsmEcno"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1410
    const-string v0, "EvdoSignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1412
    const-string v0, "HtcLteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1413
    const-string v0, "HtcLteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1415
    return-void
.end method

.method private getAsiaLteLevel()I
    .locals 3

    .prologue
    .line 2155
    const/4 v0, 0x1

    .line 2156
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x53

    if-lt v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2162
    :goto_0
    return v0

    .line 2157
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5d

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2158
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x67

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2159
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2160
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAttLteLevel()I
    .locals 4

    .prologue
    .line 2196
    const/4 v0, 0x1

    .line 2197
    .local v0, "rsrpLevel":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x55

    if-le v2, v3, :cond_0

    const/4 v0, 0x5

    .line 2203
    :goto_0
    const/4 v1, 0x1

    .line 2204
    .local v1, "rssnrLevel":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 2211
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 2198
    .end local v1    # "rssnrLevel":I
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5f

    if-le v2, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2199
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-le v2, v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2200
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x73

    if-le v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2201
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2205
    .restart local v1    # "rssnrLevel":I
    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x82

    if-lt v2, v3, :cond_5

    const/4 v1, 0x5

    goto :goto_1

    .line 2206
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    .line 2207
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    .line 2208
    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x1e

    if-lt v2, v3, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    .line 2209
    :cond_8
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getAusNzLteLevel()I
    .locals 3

    .prologue
    .line 2122
    const/4 v0, 0x1

    .line 2123
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5a

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2129
    :goto_0
    return v0

    .line 2124
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2125
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2126
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2127
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 2128
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCTLteLevel()I
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 2268
    const/4 v1, 0x0

    .line 2269
    .local v1, "rsrpLevel":I
    const/4 v0, 0x0

    .line 2271
    .local v0, "levelLteRssnr":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2282
    :goto_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v4, :cond_6

    const/4 v0, 0x0

    .line 2296
    :goto_1
    if-le v1, v0, :cond_b

    .end local v0    # "levelLteRssnr":I
    :goto_2
    return v0

    .line 2274
    .restart local v0    # "levelLteRssnr":I
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-lt v2, v3, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 2277
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x72

    if-lt v2, v3, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    .line 2278
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x76

    if-lt v2, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    .line 2279
    :cond_4
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x7b

    if-lt v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    .line 2280
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 2285
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0x5a

    if-lt v2, v3, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    .line 2287
    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_8

    const/4 v0, 0x3

    goto :goto_1

    .line 2289
    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x1e

    if-lt v2, v3, :cond_9

    const/4 v0, 0x2

    goto :goto_1

    .line 2291
    :cond_9
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v3, -0x32

    if-lt v2, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_1

    .line 2294
    :cond_a
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_1

    :cond_b
    move v0, v1

    .line 2296
    goto :goto_2
.end method

.method private getCULteLevel(I)I
    .locals 1
    .param p1, "signalLevel"    # I

    .prologue
    .line 2117
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCmccLteLevel(I)I

    move-result v0

    return v0
.end method

.method private getCallState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1751
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1752
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1754
    .local v0, "callState":I
    :goto_0
    return v0

    .line 1752
    .end local v0    # "callState":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCdmaCTLevel(II)I
    .locals 3
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    .line 2557
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2567
    :goto_0
    return v0

    .line 2559
    :cond_1
    const/16 v2, -0x55

    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    .line 2565
    .local v1, "levelDbm":I
    :goto_1
    move v0, v1

    .line 2567
    .local v0, "level":I
    goto :goto_0

    .line 2560
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    :cond_2
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2561
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v2, -0x64

    if-lt p1, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2562
    .end local v1    # "levelDbm":I
    :cond_4
    const/16 v2, -0x69

    if-lt p1, v2, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2563
    .end local v1    # "levelDbm":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_1
.end method

.method private getCdmaHtcLevel(III)I
    .locals 3
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "signalBarLevel"    # I

    .prologue
    .line 2487
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2498
    :cond_1
    :goto_0
    return v0

    .line 2489
    :cond_2
    const/16 v2, -0x4b

    if-lt p1, v2, :cond_3

    const/4 v1, 0x4

    .line 2495
    .local v1, "levelDbm":I
    :goto_1
    move v0, v1

    .line 2496
    .local v0, "level":I
    const/4 v2, 0x5

    if-ne p3, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2490
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v2, -0x55

    if-lt p1, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2491
    .end local v1    # "levelDbm":I
    :cond_4
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2492
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v2, -0x64

    if-lt p1, v2, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2493
    .end local v1    # "levelDbm":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_1
.end method

.method private getCdmaKDDILevel(II)I
    .locals 5
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v4, -0x1

    .line 2505
    if-eq p1, v4, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 2513
    .local v1, "levelDbm":I
    :goto_0
    if-eq p2, v4, :cond_1

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_7

    :cond_1
    const/4 v2, 0x0

    .line 2520
    .local v2, "levelEcio":I
    :goto_1
    if-ge v1, v2, :cond_c

    move v0, v1

    .line 2522
    .local v0, "level":I
    :goto_2
    return v0

    .line 2506
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    .end local v2    # "levelEcio":I
    :cond_2
    const/16 v3, -0x62

    if-lt p1, v3, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2507
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v3, -0x65

    if-lt p1, v3, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2508
    .end local v1    # "levelDbm":I
    :cond_4
    const/16 v3, -0x68

    if-lt p1, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2509
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v3, -0x6b

    if-lt p1, v3, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2510
    .end local v1    # "levelDbm":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2514
    :cond_7
    const/16 v3, -0x64

    if-lt p2, v3, :cond_8

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2515
    .end local v2    # "levelEcio":I
    :cond_8
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_9

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2516
    .end local v2    # "levelEcio":I
    :cond_9
    const/16 v3, -0x82

    if-lt p2, v3, :cond_a

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2517
    .end local v2    # "levelEcio":I
    :cond_a
    const/16 v3, -0x96

    if-lt p2, v3, :cond_b

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2518
    .end local v2    # "levelEcio":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_1

    :cond_c
    move v0, v2

    .line 2520
    goto :goto_2
.end method

.method private getCdmaSPCSLevel(II)I
    .locals 7
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v6, -0x1

    const/16 v5, -0x5a

    const/16 v4, -0x78

    .line 2574
    if-eq p1, v6, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 2584
    .local v1, "levelDbm":I
    :goto_0
    if-eq p2, v6, :cond_1

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_1

    .line 2585
    :cond_1
    if-lt p2, v5, :cond_9

    const/4 v2, 0x6

    .line 2593
    .local v2, "levelEcio":I
    :goto_1
    if-ge v1, v2, :cond_f

    move v0, v1

    .line 2595
    .local v0, "level":I
    :goto_2
    return v0

    .line 2575
    .end local v0    # "level":I
    .end local v1    # "levelDbm":I
    .end local v2    # "levelEcio":I
    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_3

    const/4 v1, 0x6

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2576
    .end local v1    # "levelDbm":I
    :cond_3
    const/16 v3, -0x55

    if-lt p1, v3, :cond_4

    const/4 v1, 0x5

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2577
    .end local v1    # "levelDbm":I
    :cond_4
    if-lt p1, v5, :cond_5

    const/4 v1, 0x4

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2578
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_6

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2579
    .end local v1    # "levelDbm":I
    :cond_6
    const/16 v3, -0x64

    if-lt p1, v3, :cond_7

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2580
    .end local v1    # "levelDbm":I
    :cond_7
    const/16 v3, -0x69

    if-lt p1, v3, :cond_8

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2581
    .end local v1    # "levelDbm":I
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_0

    .line 2586
    :cond_9
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_a

    const/4 v2, 0x5

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2587
    .end local v2    # "levelEcio":I
    :cond_a
    if-lt p2, v4, :cond_b

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2588
    .end local v2    # "levelEcio":I
    :cond_b
    const/16 v3, -0x82

    if-lt p2, v3, :cond_c

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2589
    .end local v2    # "levelEcio":I
    :cond_c
    const/16 v3, -0x8c

    if-lt p2, v3, :cond_d

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2590
    .end local v2    # "levelEcio":I
    :cond_d
    const/16 v3, -0x96

    if-lt p2, v3, :cond_e

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_1

    .line 2591
    .end local v2    # "levelEcio":I
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_1

    :cond_f
    move v0, v2

    .line 2593
    goto :goto_2
.end method

.method private getCdmaVZWLevel(II)I
    .locals 6
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I

    .prologue
    const/4 v5, -0x1

    .line 2530
    if-eq p1, v5, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2551
    :cond_1
    :goto_0
    return v0

    .line 2532
    :cond_2
    const/16 v3, -0x4b

    if-lt p1, v3, :cond_4

    const/4 v1, 0x4

    .line 2537
    .local v1, "levelDbm":I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 2539
    .local v0, "level":I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isApplyVerizonNewSignalMappingScheme()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2541
    if-eq p2, v5, :cond_3

    const/16 v3, -0xa0

    if-ne p2, v3, :cond_8

    :cond_3
    const/4 v2, 0x0

    .line 2547
    .local v2, "levelEcio":I
    :goto_2
    if-ge v1, v2, :cond_d

    .end local v1    # "levelDbm":I
    :goto_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 2533
    .end local v0    # "level":I
    .end local v2    # "levelEcio":I
    :cond_4
    const/16 v3, -0x55

    if-lt p1, v3, :cond_5

    const/4 v1, 0x3

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2534
    .end local v1    # "levelDbm":I
    :cond_5
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_6

    const/4 v1, 0x2

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2535
    .end local v1    # "levelDbm":I
    :cond_6
    const/16 v3, -0x64

    if-lt p1, v3, :cond_7

    const/4 v1, 0x1

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2536
    .end local v1    # "levelDbm":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "levelDbm":I
    goto :goto_1

    .line 2542
    .restart local v0    # "level":I
    :cond_8
    const/16 v3, -0x5a

    if-lt p2, v3, :cond_9

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2543
    .end local v2    # "levelEcio":I
    :cond_9
    const/16 v3, -0x6e

    if-lt p2, v3, :cond_a

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2544
    .end local v2    # "levelEcio":I
    :cond_a
    const/16 v3, -0x82

    if-lt p2, v3, :cond_b

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2545
    .end local v2    # "levelEcio":I
    :cond_b
    const/16 v3, -0x96

    if-lt p2, v3, :cond_c

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_2

    .line 2546
    .end local v2    # "levelEcio":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "levelEcio":I
    goto :goto_2

    :cond_d
    move v1, v2

    .line 2547
    goto :goto_3
.end method

.method private getCmccLteLevel(I)I
    .locals 5
    .param p1, "signalLevel"    # I

    .prologue
    const/16 v4, -0x61

    const/16 v2, -0x69

    const/16 v3, -0x78

    .line 2096
    const/4 v0, 0x0

    .line 2098
    .local v0, "rsrpLevel":I
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 2099
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_1

    const/4 v0, 0x5

    .line 2113
    :cond_0
    :goto_0
    return v0

    .line 2100
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 2101
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2102
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 2103
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 2104
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 2105
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 2106
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    .line 2107
    :cond_7
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v2, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    .line 2108
    :cond_8
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    .line 2109
    :cond_9
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    .line 2110
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCombineNetworkType(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1771
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1772
    .local v0, "combineNetworkType":I
    if-nez v0, :cond_0

    .line 1774
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1776
    .end local v0    # "combineNetworkType":I
    :cond_0
    return v0
.end method

.method private getEvdoCTLevel(II)I
    .locals 3
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    .line 2417
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2427
    :goto_0
    return v0

    .line 2419
    :cond_1
    const/16 v2, -0x5a

    if-lt p1, v2, :cond_2

    const/4 v1, 0x4

    .line 2425
    .local v1, "levelEvdoDbm":I
    :goto_1
    move v0, v1

    .line 2427
    .local v0, "level":I
    goto :goto_0

    .line 2420
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    :cond_2
    const/16 v2, -0x64

    if-lt p1, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2421
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v2, -0x69

    if-lt p1, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2422
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v2, -0x6e

    if-lt p1, v2, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2423
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1
.end method

.method private getEvdoHtcLevel(III)I
    .locals 6
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I
    .param p3, "signalBarLevel"    # I

    .prologue
    const/16 v5, -0x4b

    .line 2336
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2364
    :cond_1
    :goto_0
    return v0

    .line 2338
    :cond_2
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isApplyVerizonNewSignalMappingScheme()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 2339
    if-lt p1, v5, :cond_3

    const/4 v1, 0x4

    .line 2344
    .local v1, "levelEvdoDbm":I
    :goto_1
    move v0, v1

    .line 2361
    .local v0, "level":I
    :goto_2
    const/4 v3, 0x5

    if-ne p3, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2340
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v3, -0x55

    if-lt p1, v3, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2341
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, -0x5f

    if-lt p1, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2342
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/16 v3, -0x64

    if-lt p1, v3, :cond_6

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2343
    .end local v1    # "levelEvdoDbm":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2347
    .end local v1    # "levelEvdoDbm":I
    :cond_7
    const/16 v3, -0x41

    if-lt p1, v3, :cond_8

    const/4 v1, 0x4

    .line 2353
    .restart local v1    # "levelEvdoDbm":I
    :goto_3
    const/4 v3, 0x6

    if-le p2, v3, :cond_c

    const/4 v2, 0x4

    .line 2358
    .local v2, "levelEvdoSnr":I
    :goto_4
    if-ge v1, v2, :cond_10

    move v0, v1

    .restart local v0    # "level":I
    :goto_5
    goto :goto_2

    .line 2348
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    .end local v2    # "levelEvdoSnr":I
    :cond_8
    if-lt p1, v5, :cond_9

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2349
    .end local v1    # "levelEvdoDbm":I
    :cond_9
    const/16 v3, -0x5a

    if-lt p1, v3, :cond_a

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2350
    .end local v1    # "levelEvdoDbm":I
    :cond_a
    const/16 v3, -0x69

    if-lt p1, v3, :cond_b

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2351
    .end local v1    # "levelEvdoDbm":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_3

    .line 2354
    :cond_c
    const/4 v3, 0x4

    if-le p2, v3, :cond_d

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    .line 2355
    .end local v2    # "levelEvdoSnr":I
    :cond_d
    const/4 v3, 0x2

    if-le p2, v3, :cond_e

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    .line 2356
    .end local v2    # "levelEvdoSnr":I
    :cond_e
    if-lez p2, :cond_f

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    .line 2357
    .end local v2    # "levelEvdoSnr":I
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_4

    :cond_10
    move v0, v2

    .line 2358
    goto :goto_5
.end method

.method private getEvdoKDDILevel(II)I
    .locals 4
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    .line 2372
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, -0x78

    if-ne p1, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2381
    .local v1, "levelEvdoDbm":I
    :goto_0
    const/4 v3, 0x2

    if-lt p2, v3, :cond_6

    const/4 v2, 0x4

    .line 2388
    .local v2, "levelEvdoSnr":I
    :goto_1
    if-ge v1, v2, :cond_9

    move v0, v1

    .line 2390
    .local v0, "level":I
    :goto_2
    return v0

    .line 2373
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    .end local v2    # "levelEvdoSnr":I
    :cond_1
    const/16 v3, -0x60

    if-lt p1, v3, :cond_2

    const/4 v1, 0x4

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2374
    .end local v1    # "levelEvdoDbm":I
    :cond_2
    const/16 v3, -0x63

    if-lt p1, v3, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2375
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v3, -0x66

    if-lt p1, v3, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2376
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, -0x69

    if-lt p1, v3, :cond_5

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2377
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_0

    .line 2382
    :cond_6
    const/4 v3, 0x1

    if-lt p2, v3, :cond_7

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_1

    .line 2383
    .end local v2    # "levelEvdoSnr":I
    :cond_7
    if-ltz p2, :cond_8

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_1

    .line 2386
    .end local v2    # "levelEvdoSnr":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_1

    :cond_9
    move v0, v2

    .line 2388
    goto :goto_2
.end method

.method private getEvdoSPCSLevel(II)I
    .locals 3
    .param p1, "evdoDbm"    # I
    .param p2, "evdoSnr"    # I

    .prologue
    .line 2433
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/16 v2, -0x78

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2445
    :goto_0
    return v0

    .line 2435
    :cond_1
    const/16 v2, -0x4b

    if-lt p1, v2, :cond_2

    const/4 v1, 0x6

    .line 2443
    .local v1, "levelEvdoDbm":I
    :goto_1
    move v0, v1

    .line 2445
    .local v0, "level":I
    goto :goto_0

    .line 2436
    .end local v0    # "level":I
    .end local v1    # "levelEvdoDbm":I
    :cond_2
    const/16 v2, -0x55

    if-lt p1, v2, :cond_3

    const/4 v1, 0x5

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2437
    .end local v1    # "levelEvdoDbm":I
    :cond_3
    const/16 v2, -0x5a

    if-lt p1, v2, :cond_4

    const/4 v1, 0x4

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2438
    .end local v1    # "levelEvdoDbm":I
    :cond_4
    const/16 v2, -0x5f

    if-lt p1, v2, :cond_5

    const/4 v1, 0x3

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2439
    .end local v1    # "levelEvdoDbm":I
    :cond_5
    const/16 v2, -0x64

    if-lt p1, v2, :cond_6

    const/4 v1, 0x2

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2440
    .end local v1    # "levelEvdoDbm":I
    :cond_6
    const/16 v2, -0x69

    if-lt p1, v2, :cond_7

    const/4 v1, 0x1

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1

    .line 2441
    .end local v1    # "levelEvdoDbm":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "levelEvdoDbm":I
    goto :goto_1
.end method

.method private getGenericLteLevel(I)I
    .locals 4
    .param p1, "maxLevel"    # I

    .prologue
    .line 2056
    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v2, :cond_8

    .line 2057
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 2075
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAttLteLevel()I

    move-result v1

    .line 2091
    :cond_0
    :goto_0
    return v1

    .line 2078
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x50

    if-le v2, v3, :cond_2

    const/4 v0, 0x4

    .line 2083
    .local v0, "rsrpLevel":I
    :goto_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xa

    if-le v2, v3, :cond_5

    const/4 v1, 0x4

    .line 2088
    .local v1, "rsrqLevel":I
    :goto_2
    if-gt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 2079
    .end local v0    # "rsrpLevel":I
    .end local v1    # "rsrqLevel":I
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5a

    if-le v2, v3, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "rsrpLevel":I
    goto :goto_1

    .line 2080
    .end local v0    # "rsrpLevel":I
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x64

    if-le v2, v3, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "rsrpLevel":I
    goto :goto_1

    .line 2081
    .end local v0    # "rsrpLevel":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "rsrpLevel":I
    goto :goto_1

    .line 2084
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xd

    if-le v2, v3, :cond_6

    const/4 v1, 0x3

    .restart local v1    # "rsrqLevel":I
    goto :goto_2

    .line 2085
    .end local v1    # "rsrqLevel":I
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x10

    if-le v2, v3, :cond_7

    const/4 v1, 0x2

    .restart local v1    # "rsrqLevel":I
    goto :goto_2

    .line 2086
    .end local v1    # "rsrqLevel":I
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "rsrqLevel":I
    goto :goto_2

    .line 2091
    .end local v0    # "rsrpLevel":I
    .end local v1    # "rsrqLevel":I
    :cond_8
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVZWLteLevel(I)I

    move-result v1

    goto :goto_0
.end method

.method private getH3gLteLevel()I
    .locals 3

    .prologue
    .line 2144
    const/4 v0, 0x1

    .line 2145
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x55

    if-le v1, v2, :cond_1

    const/4 v0, 0x5

    .line 2151
    :cond_0
    :goto_0
    return v0

    .line 2146
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5f

    if-le v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 2147
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-le v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 2148
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-le v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 2149
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x82

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getHKLteLevel()I
    .locals 4

    .prologue
    .line 2177
    const/4 v0, 0x1

    .line 2178
    .local v0, "rsrpLevel":I
    const/4 v1, 0x1

    .line 2179
    .local v1, "rsrqLevel":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x5a

    if-le v2, v3, :cond_0

    const/4 v0, 0x5

    .line 2186
    :goto_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v3, -0x7

    if-le v2, v3, :cond_5

    const/4 v1, 0x5

    .line 2192
    :goto_1
    if-le v0, v1, :cond_a

    .end local v1    # "rsrqLevel":I
    :goto_2
    return v1

    .line 2180
    .restart local v1    # "rsrqLevel":I
    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x64

    if-le v2, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2181
    :cond_1
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x69

    if-le v2, v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2182
    :cond_2
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x73

    if-le v2, v3, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2183
    :cond_3
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v3, -0x78

    if-le v2, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 2184
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2187
    :cond_5
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0xd

    if-le v2, v3, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    .line 2188
    :cond_6
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x12

    if-le v2, v3, :cond_7

    const/4 v1, 0x3

    goto :goto_1

    .line 2189
    :cond_7
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x16

    if-le v2, v3, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    .line 2190
    :cond_8
    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v3, -0x19

    if-le v2, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    .line 2191
    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    move v1, v0

    .line 2192
    goto :goto_2
.end method

.method private getHtcAddedFieldsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHtcTDLevel(I)I
    .locals 9
    .param p1, "networkType"    # I

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 1787
    const/4 v1, 0x0

    .line 1788
    .local v1, "iconLevel":I
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 1791
    .local v0, "asu":I
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 1792
    if-lez v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 1793
    :cond_0
    const/4 v1, 0x0

    .line 1817
    :goto_0
    return v1

    .line 1794
    :cond_1
    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    .line 1795
    const/4 v1, 0x5

    goto :goto_0

    .line 1796
    :cond_2
    if-lt v0, v8, :cond_3

    .line 1797
    const/4 v1, 0x4

    goto :goto_0

    .line 1798
    :cond_3
    if-lt v0, v7, :cond_4

    .line 1799
    const/4 v1, 0x3

    goto :goto_0

    .line 1800
    :cond_4
    if-lt v0, v6, :cond_5

    .line 1801
    const/4 v1, 0x2

    goto :goto_0

    .line 1802
    :cond_5
    if-lt v0, v5, :cond_6

    .line 1803
    const/4 v1, 0x1

    goto :goto_0

    .line 1805
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 1809
    :cond_7
    const/4 v2, 0x1

    if-le v0, v2, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 1810
    :cond_9
    if-lt v0, v8, :cond_a

    const/4 v1, 0x4

    goto :goto_0

    .line 1811
    :cond_a
    if-lt v0, v7, :cond_b

    const/4 v1, 0x3

    goto :goto_0

    .line 1812
    :cond_b
    if-lt v0, v6, :cond_c

    const/4 v1, 0x2

    goto :goto_0

    .line 1813
    :cond_c
    if-lt v0, v5, :cond_d

    const/4 v1, 0x1

    goto :goto_0

    .line 1814
    :cond_d
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getKddiLevel(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xd

    .line 1635
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v0

    .line 1636
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    .line 1637
    .local v2, "evdoLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v3

    .line 1639
    .local v3, "lteLevel":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 1640
    .local v1, "dataNetworkType":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v4

    .line 1645
    .local v4, "voiceNetworkType":I
    if-eq v1, v5, :cond_0

    if-ne v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 1679
    .end local v2    # "evdoLevel":I
    :cond_1
    :goto_0
    return v2

    .line 1651
    .restart local v2    # "evdoLevel":I
    :cond_2
    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1653
    if-eqz v4, :cond_1

    .line 1658
    if-nez v2, :cond_3

    move v2, v0

    .line 1660
    goto :goto_0

    .line 1661
    :cond_3
    if-eqz v0, :cond_1

    .line 1666
    if-lt v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    .line 1671
    :cond_4
    invoke-direct {p0, v4}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, v1}, Landroid/telephony/SignalStrength;->isCdma1xNetworkTypes(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v2, v0

    .line 1674
    goto :goto_0

    .line 1679
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKddiLteLevel()I
    .locals 7

    .prologue
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 2029
    const/4 v2, 0x0

    .line 2030
    .local v2, "rsrpLevel":I
    const/4 v1, 0x0

    .line 2032
    .local v1, "levelLteRssnr":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v3, v6, :cond_1

    :cond_0
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 2039
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v3, v6, :cond_6

    const/4 v1, 0x0

    .line 2046
    :goto_1
    if-le v2, v1, :cond_b

    move v0, v1

    .line 2049
    .local v0, "level":I
    :goto_2
    return v0

    .line 2033
    .end local v0    # "level":I
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 2034
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    .line 2035
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x76

    if-lt v3, v4, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    .line 2036
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x78

    if-lt v3, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    .line 2037
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 2040
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    .line 2041
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    .line 2042
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xa

    if-lt v3, v4, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    .line 2043
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    .line 2044
    :cond_a
    iput v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_1

    :cond_b
    move v0, v2

    .line 2046
    goto :goto_2
.end method

.method private getNetworkType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1735
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1736
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1738
    .local v0, "networkType":I
    :goto_0
    return v0

    .line 1736
    .end local v0    # "networkType":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignalStrengthLevelByOldRule(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1709
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceState(Landroid/content/Context;)I

    move-result v1

    .line 1712
    .local v1, "voiceServiceState":I
    if-nez v1, :cond_0

    .line 1713
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    .line 1727
    :goto_0
    return v2

    .line 1715
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1718
    .local v0, "networkType":I
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1719
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v2

    goto :goto_0

    .line 1722
    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 1723
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    goto :goto_0

    .line 1727
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSpcsLteLevel()I
    .locals 3

    .prologue
    .line 2251
    const/4 v0, 0x0

    .line 2252
    .local v0, "levelLteRsrp":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2260
    :goto_0
    return v0

    .line 2253
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x56

    if-lt v1, v2, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    .line 2254
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5a

    if-le v1, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 2255
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5e

    if-le v1, v2, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 2256
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-le v1, v2, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 2257
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 2258
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTmoUsLteLevel()I
    .locals 3

    .prologue
    .line 2133
    const/4 v0, 0x1

    .line 2134
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x64

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2140
    :goto_0
    return v0

    .line 2135
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-le v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2136
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x73

    if-le v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2137
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-le v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2138
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x87

    if-le v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 2139
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVZWLteLevel(I)I
    .locals 8
    .param p1, "signalBarLevel"    # I

    .prologue
    const v7, 0x7fffffff

    .line 2215
    const/4 v1, 0x0

    .line 2216
    .local v1, "levelLteRsrp":I
    const/4 v2, 0x0

    .line 2217
    .local v2, "levelLteRssnr":I
    const/4 v3, 0x0

    .line 2218
    .local v3, "rsrpInvalid":Z
    const/4 v4, 0x0

    .line 2220
    .local v4, "rssnrInvalid":Z
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v5, v7, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 2226
    :cond_1
    :goto_0
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v5, v7, :cond_8

    const/4 v4, 0x1

    .line 2236
    :cond_2
    :goto_1
    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    .line 2247
    :cond_3
    :goto_2
    return v0

    .line 2221
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x55

    if-lt v5, v6, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    .line 2222
    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5f

    if-lt v5, v6, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    .line 2223
    :cond_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x69

    if-lt v5, v6, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    .line 2224
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-lt v5, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 2227
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 2228
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 2230
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 2233
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 2237
    :cond_c
    if-eqz v3, :cond_d

    .line 2238
    move v0, v2

    .line 2244
    .local v0, "level":I
    :goto_3
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2239
    .end local v0    # "level":I
    :cond_d
    if-eqz v4, :cond_e

    .line 2240
    move v0, v1

    .restart local v0    # "level":I
    goto :goto_3

    .line 2242
    .end local v0    # "level":I
    :cond_e
    if-ge v2, v1, :cond_f

    move v0, v2

    .restart local v0    # "level":I
    :goto_4
    goto :goto_3

    .end local v0    # "level":I
    :cond_f
    move v0, v1

    goto :goto_4
.end method

.method private getVodaFRLteLevel()I
    .locals 3

    .prologue
    .line 2166
    const/4 v0, 0x1

    .line 2167
    .local v0, "rsrpLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x53

    if-lt v1, v2, :cond_0

    const/4 v0, 0x5

    .line 2173
    :goto_0
    return v0

    .line 2168
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x5d

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 2169
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x68

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 2170
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 2171
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getVoiceNetworkType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1765
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1766
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v1

    .line 1767
    .local v1, "voiceNetworkType":I
    :goto_0
    return v1

    .line 1766
    .end local v1    # "voiceNetworkType":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVoiceState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1743
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    .line 1744
    .local v0, "htctelephonyMgr":Lcom/htc/service/HtcTelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/service/HtcTelephonyManager;->getServiceState()I

    move-result v1

    .line 1746
    .local v1, "voiceServiceState":I
    :goto_0
    return v1

    .line 1744
    .end local v1    # "voiceServiceState":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initHtcAddFields(IIIII)V
    .locals 0
    .param p1, "gsmSignalDbm"    # I
    .param p2, "gsmEcno"    # I
    .param p3, "evdoSingalBar"    # I
    .param p4, "htcLteRsrp"    # I
    .param p5, "htcLteRsrq"    # I

    .prologue
    .line 1358
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1359
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1360
    iput p3, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1361
    iput p4, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1362
    iput p5, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1363
    return-void
.end method

.method private isCdma1xNetworkTypes(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1687
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1689
    :cond_0
    const/4 v0, 0x1

    .line 1691
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaEvdoNetworkTypes(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1696
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 1700
    :cond_0
    const/4 v0, 0x1

    .line 1702
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkRoaming(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1759
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1760
    .local v1, "telephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1761
    .local v0, "isRoaming":Z
    :goto_0
    return v0

    .line 1760
    .end local v0    # "isRoaming":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1321
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 489
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 490
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 491
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 492
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 493
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 494
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 495
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 496
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 497
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 498
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 499
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 500
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 501
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 502
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 504
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 505
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 506
    iget v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 507
    iget v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 512
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 118
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 119
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method private readHtcAddedFieldsFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1382
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1384
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1389
    return-void
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1276
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1277
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1278
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1279
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1280
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1281
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1282
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1283
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1284
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1285
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1286
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1287
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1288
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1289
    const-string v0, "TdRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 1290
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V

    .line 1291
    return-void
.end method

.method private setHtcAddedFieldsFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1420
    const-string v0, "GsmSignalDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 1421
    const-string v0, "GsmEcno"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 1422
    const-string v0, "EvdoSignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1424
    const-string v0, "HtcLteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1425
    const-string v0, "HtcLteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1427
    return-void
.end method

.method private writeHtcAddedFieldsInto(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 1395
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1396
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1397
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1400
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1402
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 437
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 438
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 439
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 440
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 441
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 442
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 443
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 444
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 445
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 446
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 447
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 448
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 449
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 450
    iget v0, p1, Landroid/telephony/SignalStrength;->mTDRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 451
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->copyHtcAddedFieldsFrom(Landroid/telephony/SignalStrength;)V

    .line 452
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1214
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .local v3, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_0

    .line 1240
    .end local v3    # "s":Landroid/telephony/SignalStrength;
    :goto_0
    return v5

    .line 1215
    :catch_0
    move-exception v2

    .line 1216
    .local v2, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1223
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    .restart local v3    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v6, v7, :cond_1

    iget-boolean v6, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v7, v3, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v6, v7, :cond_1

    iget v6, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    iget v7, v3, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-ne v6, v7, :cond_1

    move v1, v4

    .line 1240
    .local v1, "equal":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->equalsHtcAddedFields(Landroid/telephony/SignalStrength;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    move v5, v4

    goto :goto_0

    .end local v1    # "equal":Z
    :cond_1
    move v1, v5

    .line 1223
    goto :goto_1

    .restart local v1    # "equal":Z
    :cond_2
    move v4, v5

    .line 1240
    goto :goto_2
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1300
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1301
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1302
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1303
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1304
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1305
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1306
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1307
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1308
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1309
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1310
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1312
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1313
    const-string v0, "TdRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1314
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->fillHtcAddedFieldsInNotifierBundle(Landroid/os/Bundle;)V

    .line 1315
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 849
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 850
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 870
    .local v0, "asuLevel":I
    :goto_0
    return v0

    .line 853
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 856
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 857
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 858
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    .line 860
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 861
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    .line 863
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 866
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 996
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 997
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1001
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1009
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1016
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1018
    .local v4, "level":I
    :goto_2
    return v4

    .line 1002
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1003
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1004
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1005
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1006
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1010
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1011
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1012
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1013
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1014
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1016
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 968
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 972
    .local v1, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 979
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 985
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 987
    .local v2, "level":I
    :goto_2
    return v2

    .line 973
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 974
    .end local v3    # "levelDbm":I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 975
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 976
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 980
    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 981
    .end local v4    # "levelEcio":I
    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 982
    .end local v4    # "levelEcio":I
    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 983
    .end local v4    # "levelEcio":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 985
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 881
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 882
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 884
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 895
    .end local v1    # "dBm":I
    :cond_0
    :goto_0
    return v1

    .line 888
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 889
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 891
    .local v2, "evdoDbm":I
    if-ne v2, v4, :cond_3

    .end local v0    # "cdmaDbm":I
    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "cdmaDbm":I
    :cond_3
    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1055
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1056
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1060
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1067
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1074
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1076
    .local v2, "level":I
    :goto_2
    return v2

    .line 1061
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1062
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1063
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1064
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1065
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1068
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1069
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1070
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1071
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1072
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1074
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 1027
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1028
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1032
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 1038
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 1044
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 1046
    .local v2, "level":I
    :goto_2
    return v2

    .line 1033
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1034
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1035
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1036
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1039
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1040
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1041
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1042
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 1044
    goto :goto_2
.end method

.method public getEvdoSignalBar()I
    .locals 1

    .prologue
    .line 1328
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 958
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 906
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 907
    .local v2, "gsmSignalStrength":I
    const/16 v5, 0x63

    if-ne v2, v5, :cond_1

    move v0, v4

    .line 909
    .local v0, "asu":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTDRscp()I

    move-result v3

    .line 910
    .local v3, "tdRscp":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v5

    if-nez v5, :cond_0

    .line 911
    move v0, v3

    .line 915
    :cond_0
    if-eq v0, v4, :cond_2

    .line 916
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .line 921
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    .end local v3    # "tdRscp":I
    :cond_1
    move v0, v2

    .line 907
    goto :goto_0

    .line 918
    .restart local v0    # "asu":I
    .restart local v3    # "tdRscp":I
    :cond_2
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmEcno()I
    .locals 1

    .prologue
    .line 1349
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 937
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 943
    .local v1, "level":I
    :goto_0
    return v1

    .line 938
    .end local v1    # "level":I
    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 939
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 940
    .end local v1    # "level":I
    :cond_3
    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 941
    .end local v1    # "level":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalDbm()I
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getHtcCdmaLevel()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 2454
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 2455
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 2457
    .local v1, "cdmaEcio":I
    const/4 v2, 0x0

    .line 2458
    .local v2, "level":I
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 2459
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2460
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(II)I

    move-result v2

    .line 2480
    :goto_0
    return v2

    .line 2463
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaSPCSLevel(II)I

    move-result v2

    goto :goto_0

    .line 2465
    :cond_2
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 2466
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isChinaTelecom()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAptgTw()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAsia()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMmrWwe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2467
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaCTLevel(II)I

    move-result v2

    goto :goto_0

    .line 2468
    :cond_4
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2469
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaKDDILevel(II)I

    move-result v2

    goto :goto_0

    .line 2471
    :cond_5
    invoke-direct {p0, v0, v1, v5}, Landroid/telephony/SignalStrength;->getCdmaHtcLevel(III)I

    move-result v2

    goto :goto_0

    .line 2474
    :cond_6
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isVerizon()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2475
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getCdmaVZWLevel(II)I

    move-result v2

    goto :goto_0

    .line 2477
    :cond_7
    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v3}, Landroid/telephony/SignalStrength;->getCdmaHtcLevel(III)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcCdmaMaxLevel()I
    .locals 1

    .prologue
    .line 1518
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v0

    return v0
.end method

.method public getHtcEvdoLevel()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 2306
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 2307
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 2308
    .local v1, "evdoSnr":I
    const/4 v2, 0x0

    .line 2310
    .local v2, "level":I
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 2311
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2312
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(II)I

    move-result v2

    .line 2328
    :goto_0
    return v2

    .line 2315
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoSPCSLevel(II)I

    move-result v2

    goto :goto_0

    .line 2317
    :cond_2
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 2318
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isChinaTelecom()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAptgTw()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAsia()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isMmrWwe()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2319
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoCTLevel(II)I

    move-result v2

    goto :goto_0

    .line 2320
    :cond_4
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2321
    invoke-direct {p0, v0, v1}, Landroid/telephony/SignalStrength;->getEvdoKDDILevel(II)I

    move-result v2

    goto :goto_0

    .line 2323
    :cond_5
    invoke-direct {p0, v0, v1, v5}, Landroid/telephony/SignalStrength;->getEvdoHtcLevel(III)I

    move-result v2

    goto :goto_0

    .line 2326
    :cond_6
    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v3}, Landroid/telephony/SignalStrength;->getEvdoHtcLevel(III)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcGsmLevel(I)I
    .locals 13
    .param p1, "networkType"    # I

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x3

    const/16 v9, -0x61

    const/16 v7, -0x68

    const/16 v10, 0x63

    .line 1827
    const/4 v5, 0x0

    .line 1828
    .local v5, "iconLevel":I
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    mul-int/lit8 v1, v6, -0x1

    .line 1829
    .local v1, "dbm":I
    iget v6, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    mul-int/lit8 v3, v6, -0x1

    .line 1830
    .local v3, "ecno":I
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1833
    .local v0, "asu":I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isVerizon()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1834
    if-lt p1, v11, :cond_5

    .line 1835
    if-gez v1, :cond_4

    .line 1836
    const/16 v6, -0x37

    if-lt v1, v6, :cond_0

    const/4 v5, 0x5

    .line 1958
    :goto_0
    return v5

    .line 1837
    :cond_0
    const/16 v6, -0x46

    if-lt v1, v6, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    .line 1838
    :cond_1
    const/16 v6, -0x55

    if-lt v1, v6, :cond_2

    const/4 v5, 0x3

    goto :goto_0

    .line 1839
    :cond_2
    const/16 v6, -0x64

    if-lt v1, v6, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    .line 1840
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 1842
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 1845
    :cond_5
    if-gez v1, :cond_a

    .line 1846
    const/16 v6, -0x54

    if-lt v1, v6, :cond_6

    const/4 v5, 0x5

    goto :goto_0

    .line 1847
    :cond_6
    const/16 v6, -0x5d

    if-lt v1, v6, :cond_7

    const/4 v5, 0x4

    goto :goto_0

    .line 1848
    :cond_7
    if-lt v1, v9, :cond_8

    const/4 v5, 0x3

    goto :goto_0

    .line 1849
    :cond_8
    if-lt v1, v7, :cond_9

    const/4 v5, 0x2

    goto :goto_0

    .line 1850
    :cond_9
    const/4 v5, 0x1

    goto :goto_0

    .line 1852
    :cond_a
    const/4 v5, 0x1

    goto :goto_0

    .line 1855
    :cond_b
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isATT()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1856
    if-lt p1, v11, :cond_16

    .line 1857
    if-ltz v1, :cond_c

    if-gez v3, :cond_15

    .line 1858
    :cond_c
    const/4 v2, 0x1

    .line 1859
    .local v2, "dbmLevel":I
    const/4 v4, 0x1

    .line 1860
    .local v4, "ecnoLevel":I
    const/16 v6, -0x50

    if-le v1, v6, :cond_d

    const/4 v2, 0x5

    .line 1866
    :goto_1
    const/16 v6, -0x14

    if-le v3, v6, :cond_11

    const/4 v4, 0x5

    .line 1872
    :goto_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1873
    goto :goto_0

    .line 1861
    :cond_d
    const/16 v6, -0x5a

    if-le v1, v6, :cond_e

    const/4 v2, 0x4

    goto :goto_1

    .line 1862
    :cond_e
    const/16 v6, -0x64

    if-le v1, v6, :cond_f

    const/4 v2, 0x3

    goto :goto_1

    .line 1863
    :cond_f
    const/16 v6, -0x6a

    if-le v1, v6, :cond_10

    const/4 v2, 0x2

    goto :goto_1

    .line 1864
    :cond_10
    const/4 v2, 0x1

    goto :goto_1

    .line 1867
    :cond_11
    const/16 v6, -0x18

    if-le v3, v6, :cond_12

    const/4 v4, 0x4

    goto :goto_2

    .line 1868
    :cond_12
    const/16 v6, -0x1c

    if-le v3, v6, :cond_13

    const/4 v4, 0x3

    goto :goto_2

    .line 1869
    :cond_13
    const/16 v6, -0x20

    if-le v3, v6, :cond_14

    const/4 v4, 0x2

    goto :goto_2

    .line 1870
    :cond_14
    const/4 v4, 0x1

    goto :goto_2

    .line 1875
    .end local v2    # "dbmLevel":I
    .end local v4    # "ecnoLevel":I
    :cond_15
    const/4 v5, 0x1

    goto :goto_0

    .line 1878
    :cond_16
    if-lez v0, :cond_17

    if-ne v0, v10, :cond_18

    :cond_17
    const/4 v5, 0x1

    goto :goto_0

    .line 1879
    :cond_18
    const/16 v6, -0x50

    if-le v1, v6, :cond_19

    const/4 v5, 0x5

    goto/16 :goto_0

    .line 1880
    :cond_19
    const/16 v6, -0x59

    if-le v1, v6, :cond_1a

    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1881
    :cond_1a
    const/16 v6, -0x62

    if-le v1, v6, :cond_1b

    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1882
    :cond_1b
    if-le v1, v7, :cond_1c

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1883
    :cond_1c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1885
    :cond_1d
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1886
    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_1e

    if-ne v0, v10, :cond_1f

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1887
    :cond_1f
    int-to-double v6, v0

    const-wide v8, 0x4031800000000000L    # 17.5

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_20

    const/4 v5, 0x6

    goto/16 :goto_0

    .line 1888
    :cond_20
    const/16 v6, 0xf

    if-lt v0, v6, :cond_21

    const/4 v5, 0x5

    goto/16 :goto_0

    .line 1889
    :cond_21
    if-lt v0, v12, :cond_22

    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1890
    :cond_22
    int-to-double v6, v0

    const-wide/high16 v8, 0x4021000000000000L    # 8.5

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_23

    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1891
    :cond_23
    const/4 v6, 0x5

    if-lt v0, v6, :cond_24

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1892
    :cond_24
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1893
    :cond_25
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isH3G()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1894
    if-ltz v1, :cond_26

    if-gez v3, :cond_2f

    .line 1898
    :cond_26
    const/4 v2, 0x0

    .line 1899
    .restart local v2    # "dbmLevel":I
    const/16 v6, -0x5b

    if-lt v1, v6, :cond_27

    const/4 v2, 0x5

    .line 1908
    :goto_3
    const/4 v4, 0x0

    .line 1909
    .restart local v4    # "ecnoLevel":I
    const/16 v6, -0x1a

    if-lt v3, v6, :cond_2c

    const/4 v4, 0x5

    .line 1914
    :goto_4
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1916
    goto/16 :goto_0

    .line 1900
    .end local v4    # "ecnoLevel":I
    :cond_27
    if-lt v1, v9, :cond_28

    const/4 v2, 0x4

    goto :goto_3

    .line 1901
    :cond_28
    if-lt v1, v7, :cond_29

    const/4 v2, 0x3

    goto :goto_3

    .line 1902
    :cond_29
    const/16 v6, -0x6f

    if-lt v1, v6, :cond_2a

    const/4 v2, 0x2

    goto :goto_3

    .line 1903
    :cond_2a
    const/16 v6, -0x73

    if-lt v1, v6, :cond_2b

    const/4 v2, 0x1

    goto :goto_3

    .line 1904
    :cond_2b
    const/4 v2, 0x0

    goto :goto_3

    .line 1910
    .restart local v4    # "ecnoLevel":I
    :cond_2c
    const/16 v6, -0x1e

    if-lt v3, v6, :cond_2d

    const/4 v4, 0x3

    goto :goto_4

    .line 1911
    :cond_2d
    const/16 v6, -0x24

    if-lt v3, v6, :cond_2e

    const/4 v4, 0x1

    goto :goto_4

    .line 1912
    :cond_2e
    const/4 v4, 0x0

    goto :goto_4

    .line 1917
    .end local v2    # "dbmLevel":I
    .end local v4    # "ecnoLevel":I
    :cond_2f
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1920
    :cond_30
    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0xb

    aput v8, v6, v7

    invoke-static {v6}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v6

    if-eqz v6, :cond_36

    if-lt p1, v11, :cond_36

    .line 1922
    const/16 v6, -0x59

    if-lt v1, v6, :cond_31

    const/4 v5, 0x5

    goto/16 :goto_0

    .line 1923
    :cond_31
    if-lt v1, v9, :cond_32

    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1924
    :cond_32
    const/16 v6, -0x67

    if-lt v1, v6, :cond_33

    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1925
    :cond_33
    const/16 v6, -0x71

    if-lt v1, v6, :cond_34

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1926
    :cond_34
    const/16 v6, -0x7d

    if-lt v1, v6, :cond_35

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1927
    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1931
    :cond_36
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3e

    .line 1932
    if-lez v0, :cond_37

    if-ne v0, v10, :cond_38

    .line 1933
    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1934
    :cond_38
    const/16 v6, 0xe

    if-lt v0, v6, :cond_39

    .line 1935
    const/4 v5, 0x5

    goto/16 :goto_0

    .line 1936
    :cond_39
    if-lt v0, v12, :cond_3a

    .line 1937
    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1938
    :cond_3a
    const/16 v6, 0x8

    if-lt v0, v6, :cond_3b

    .line 1939
    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1940
    :cond_3b
    const/4 v6, 0x4

    if-lt v0, v6, :cond_3c

    .line 1941
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1942
    :cond_3c
    const/4 v6, 0x2

    if-lt v0, v6, :cond_3d

    .line 1943
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1945
    :cond_3d
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1949
    :cond_3e
    const/4 v6, 0x1

    if-le v0, v6, :cond_3f

    if-ne v0, v10, :cond_40

    :cond_3f
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1950
    :cond_40
    if-lt v0, v12, :cond_41

    const/4 v5, 0x4

    goto/16 :goto_0

    .line 1951
    :cond_41
    const/16 v6, 0x8

    if-lt v0, v6, :cond_42

    const/4 v5, 0x3

    goto/16 :goto_0

    .line 1952
    :cond_42
    const/4 v6, 0x4

    if-lt v0, v6, :cond_43

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 1953
    :cond_43
    const/4 v6, 0x2

    if-lt v0, v6, :cond_44

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1954
    :cond_44
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public getHtcGsmMaxLevel()I
    .locals 1

    .prologue
    .line 1509
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v0

    return v0
.end method

.method public getHtcLevel(Landroid/content/Context;)I
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    .line 1571
    const/4 v5, 0x1

    .line 1575
    .local v5, "level":I
    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v10, :cond_3

    .line 1576
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCombineNetworkType(Landroid/content/Context;)I

    move-result v8

    .line 1578
    .local v8, "networkType":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1579
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v5

    .line 1622
    .end local v8    # "networkType":I
    :goto_0
    iget-boolean v10, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v10, :cond_a

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v7

    .line 1623
    .local v7, "maxLevel":I
    :goto_1
    if-le v5, v7, :cond_0

    .line 1626
    move v5, v7

    :cond_0
    move v10, v5

    .line 1630
    .end local v7    # "maxLevel":I
    :goto_2
    return v10

    .line 1581
    .restart local v8    # "networkType":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0, v8}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v5

    :goto_3
    goto :goto_0

    :cond_2
    invoke-direct {p0, v8}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v5

    goto :goto_3

    .line 1585
    .end local v8    # "networkType":I
    :cond_3
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1586
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getKddiLevel(Landroid/content/Context;)I

    move-result v10

    goto :goto_2

    .line 1588
    :cond_4
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$200()I

    move-result v10

    const/16 v11, 0x5e

    if-eq v10, v11, :cond_9

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$200()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_9

    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isApplyOldSignalMappingScheme()Z

    move-result v10

    if-eq v10, v12, :cond_9

    .line 1589
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcCdmaLevel()I

    move-result v2

    .line 1590
    .local v2, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcEvdoLevel()I

    move-result v3

    .line 1591
    .local v3, "evdoLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v6

    .line 1592
    .local v6, "lteLevel":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getCallState(Landroid/content/Context;)I

    move-result v1

    .line 1595
    .local v1, "callState":I
    const/4 v4, 0x1

    .line 1596
    .local v4, "isImsPhoneIdle":Z
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mVoLTEnabled:Z
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$300()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1597
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1598
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v10

    const-string/jumbo v11, "isImsPhoneIdle"

    invoke-virtual {v10, v11, v0}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1599
    .local v9, "ret":Landroid/os/Bundle;
    const-string/jumbo v10, "isImsPhoneIdle"

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1600
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isImsPhoneIdle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1602
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v9    # "ret":Landroid/os/Bundle;
    :cond_5
    if-eqz v1, :cond_6

    if-ne v4, v12, :cond_6

    .line 1606
    move v5, v2

    goto/16 :goto_0

    .line 1608
    :cond_6
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v8

    .line 1609
    .restart local v8    # "networkType":I
    const/16 v10, 0xd

    if-ne v8, v10, :cond_7

    .line 1610
    move v5, v6

    goto/16 :goto_0

    .line 1611
    :cond_7
    invoke-direct {p0, v8}, Landroid/telephony/SignalStrength;->isCdmaEvdoNetworkTypes(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1612
    move v5, v3

    goto/16 :goto_0

    .line 1614
    :cond_8
    move v5, v2

    goto/16 :goto_0

    .line 1618
    .end local v1    # "callState":I
    .end local v2    # "cdmaLevel":I
    .end local v3    # "evdoLevel":I
    .end local v4    # "isImsPhoneIdle":Z
    .end local v6    # "lteLevel":I
    .end local v8    # "networkType":I
    :cond_9
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getSignalStrengthLevelByOldRule(Landroid/content/Context;)I

    move-result v5

    goto/16 :goto_0

    .line 1622
    :cond_a
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v7

    goto/16 :goto_1
.end method

.method public getHtcLevel(Landroid/content/Context;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/16 v6, 0xd

    .line 1531
    const/4 v2, 0x1

    .line 1532
    .local v2, "level":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v1

    .line 1533
    .local v1, "isRoaming":Z
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getVoiceNetworkType(Landroid/content/Context;)I

    move-result v3

    .line 1534
    .local v3, "voiceNetworkType":I
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 1536
    .local v0, "dataNetworkType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHtcLevel, isRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voiceNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dataNetworkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1538
    const/16 v4, 0x64

    if-ne p2, v4, :cond_4

    .line 1539
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_3

    .line 1540
    if-ne v3, v6, :cond_1

    .line 1541
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    .line 1561
    :cond_0
    :goto_0
    return v2

    .line 1543
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v2

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v2

    goto :goto_1

    .line 1546
    :cond_3
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 1548
    :cond_4
    const/16 v4, 0x65

    if-ne p2, v4, :cond_0

    .line 1549
    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v4, :cond_7

    .line 1550
    if-ne v0, v6, :cond_5

    .line 1551
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getHtcLteLevel()I

    move-result v2

    goto :goto_0

    .line 1553
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidTDSignalStrength()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getHtcGsmLevel(I)I

    move-result v2

    :goto_2
    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getHtcTDLevel(I)I

    move-result v2

    goto :goto_2

    .line 1556
    :cond_7
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->getHtcLevel(Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method public getHtcLteLevel()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1967
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$000()I

    move-result v0

    .line 1975
    .local v0, "maxLevel":I
    :goto_0
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1976
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getVZWLteLevel(I)I

    move-result v1

    .line 2023
    :goto_1
    return v1

    .line 1967
    .end local v0    # "maxLevel":I
    :cond_0
    # getter for: Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->access$100()I

    move-result v0

    goto :goto_0

    .line 1977
    .restart local v0    # "maxLevel":I
    :cond_1
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isATT()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1978
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAttLteLevel()I

    move-result v1

    goto :goto_1

    .line 1979
    :cond_2
    new-array v1, v4, [I

    const/16 v2, 0x3f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1982
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getVodaFRLteLevel()I

    move-result v1

    goto :goto_1

    .line 1983
    :cond_3
    new-array v1, v4, [I

    const/16 v2, 0x46

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1985
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHKLteLevel()I

    move-result v1

    goto :goto_1

    .line 1986
    :cond_4
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAsia()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1993
    :cond_5
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAsiaLteLevel()I

    move-result v1

    goto :goto_1

    .line 1994
    :cond_6
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isH3G()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1995
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getH3gLteLevel()I

    move-result v1

    goto :goto_1

    .line 1996
    :cond_7
    new-array v1, v4, [I

    const/16 v2, 0xb

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1999
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getTmoUsLteLevel()I

    move-result v1

    goto :goto_1

    .line 2000
    :cond_8
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isSprintBrand()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2002
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getSpcsLteLevel()I

    move-result v1

    goto :goto_1

    .line 2003
    :cond_9
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isAusNzSku()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2005
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getAusNzLteLevel()I

    move-result v1

    goto :goto_1

    .line 2006
    :cond_a
    new-array v1, v4, [I

    const/16 v2, 0x1a

    aput v2, v1, v3

    invoke-static {v1}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2008
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getCmccLteLevel(I)I

    move-result v1

    goto/16 :goto_1

    .line 2010
    :cond_b
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isChinaTelecom()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2011
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCTLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2014
    :cond_c
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isKDDI()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2015
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getKddiLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2018
    :cond_d
    invoke-static {}, Landroid/telephony/SignalStrength$CustomizedUtil;->isCU()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2019
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getCULteLevel(I)I

    move-result v1

    goto/16 :goto_1

    .line 2023
    :cond_e
    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;->getGenericLteLevel(I)I

    move-result v1

    goto/16 :goto_1

    .line 1986
    :array_0
    .array-data 4
        0x1
        0x5
        0x9
        0x26
    .end array-data
.end method

.method public getHtcLteRsrp()I
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    return v0
.end method

.method public getHtcLteRsrq()I
    .locals 1

    .prologue
    .line 1486
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 784
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 787
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isInvalidLteSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 810
    .local v2, "level":I
    :cond_0
    :goto_0
    return v2

    .line 790
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 791
    .restart local v2    # "level":I
    if-nez v2, :cond_0

    .line 792
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    goto :goto_0

    .line 796
    .end local v2    # "level":I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 797
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 798
    .local v1, "evdoLevel":I
    if-nez v1, :cond_3

    .line 800
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 801
    .end local v2    # "level":I
    :cond_3
    if-nez v0, :cond_4

    .line 803
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 806
    .end local v2    # "level":I
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1158
    const/16 v0, 0x63

    .line 1159
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1173
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1176
    :goto_0
    return v0

    .line 1174
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1100
    const/4 v1, 0x0

    .local v1, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v2, -0x1

    .line 1102
    .local v2, "snrIconLevel":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 1115
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 1127
    :cond_1
    :goto_1
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 1133
    if-ge v0, v2, :cond_d

    .line 1148
    .end local v0    # "rsrpIconLevel":I
    :cond_2
    :goto_2
    return v0

    .line 1103
    .restart local v0    # "rsrpIconLevel":I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 1104
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 1105
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 1106
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 1107
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1116
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 1117
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 1118
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 1119
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    .line 1120
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 1121
    const/4 v2, 0x0

    goto :goto_1

    :cond_d
    move v0, v2

    .line 1133
    goto :goto_2

    .line 1136
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 1138
    :cond_f
    if-ne v0, v5, :cond_2

    .line 1141
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    :cond_10
    :goto_3
    move v0, v1

    .line 1148
    goto :goto_2

    .line 1142
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 1143
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 1144
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 1145
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTDRscp()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1191
    const/16 v0, 0x1f

    .line 1192
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->calculateHtcAddedFieldsHashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIIIIIIIZ)V
    .locals 7
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "tdRscp"    # I
    .param p19, "gsm"    # Z

    .prologue
    .line 408
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 409
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 410
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 411
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 412
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 413
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 414
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 415
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 416
    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 417
    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 418
    move/from16 v0, p11

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 419
    move/from16 v0, p12

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 420
    move/from16 v0, p18

    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 421
    move/from16 v0, p19

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    .line 426
    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalStrength;->initHtcAddFields(IIIII)V

    .line 427
    iput p2, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 431
    return-void
.end method

.method public initialize(IIIIIIIIIIIIIIIIIZ)V
    .locals 20
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "htcLteRsrp"    # I
    .param p17, "htcLteRsrq"    # I
    .param p18, "gsm"    # Z

    .prologue
    .line 388
    const v18, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v19, p18

    invoke-virtual/range {v0 .. v19}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIIZ)V

    .line 396
    return-void
.end method

.method public initialize(IIIIIIIIIIIIIIIZ)V
    .locals 19
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "gsm"    # Z

    .prologue
    .line 371
    const v16, 0x7fffffff

    const v17, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v18, p16

    invoke-virtual/range {v0 .. v18}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIIIZ)V

    .line 378
    return-void
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 17
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 335
    const v13, 0x7fffffff

    const v14, 0x7fffffff

    const v15, 0x7fffffff

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v16, p13

    invoke-virtual/range {v0 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIIZ)V

    .line 341
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 305
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 308
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1183
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public isInvalidLteSignalStrength()Z
    .locals 2

    .prologue
    .line 824
    const/16 v0, 0x63

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v0, v1, :cond_0

    .line 825
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidTDSignalStrength()Z
    .locals 2

    .prologue
    .line 834
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 836
    :cond_0
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDefaultValues(IIIIIIIIIIIIIIIZ)V
    .locals 7
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmSignalDbm"    # I
    .param p14, "gsmEcno"    # I
    .param p15, "evdoSignalBar"    # I
    .param p16, "gsm"    # Z

    .prologue
    .line 679
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 680
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 681
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 682
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 683
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 684
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 685
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 686
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 687
    move/from16 v0, p9

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 688
    move/from16 v0, p10

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 689
    move/from16 v0, p11

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 690
    move/from16 v0, p12

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 691
    move/from16 v0, p16

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 692
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalStrength;->initHtcAddFields(IIIII)V

    .line 693
    return-void
.end method

.method public setEvdoSignalBar(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1493
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 1494
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 669
    return-void
.end method

.method public setHtcLteRsrp(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1474
    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 1475
    return-void
.end method

.method public setHtcLteRsrq(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1478
    iput p1, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 1479
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1464
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1465
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 1468
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1469
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdma"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getHtcAddedFieldsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x3

    const/16 v1, -0x78

    const v3, 0x7fffffff

    const/4 v2, -0x1

    .line 572
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 575
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 576
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 578
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v1, v0

    :cond_0
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 579
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 580
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 583
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 584
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 585
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-lt v0, v4, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-gt v0, v5, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 586
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 589
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-ltz v0, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    :goto_9
    iput v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    .line 592
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    :goto_a
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 593
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    :goto_b
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalDbm:I

    .line 594
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    if-ltz v0, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmEcno:I

    .line 595
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_f

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    :goto_c
    iput v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrp:I

    .line 596
    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-lt v0, v4, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    if-gt v0, v5, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    :cond_2
    iput v3, p0, Landroid/telephony/SignalStrength;->mHtcLteRsrq:I

    .line 600
    return-void

    .line 572
    :cond_3
    const/16 v0, 0x63

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 575
    goto/16 :goto_1

    .line 576
    :cond_5
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 579
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 580
    goto/16 :goto_4

    .line 583
    :cond_8
    const/16 v0, 0x63

    goto/16 :goto_5

    :cond_9
    move v0, v3

    .line 584
    goto :goto_6

    :cond_a
    move v0, v3

    .line 585
    goto :goto_7

    :cond_b
    move v0, v3

    .line 586
    goto :goto_8

    :cond_c
    move v0, v2

    .line 589
    goto :goto_9

    :cond_d
    move v0, v2

    .line 592
    goto :goto_a

    :cond_e
    move v0, v2

    .line 593
    goto :goto_b

    :cond_f
    move v0, v3

    .line 595
    goto :goto_c
.end method

.method public validateInputForCDMA()V
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 643
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSignalBar:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 519
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mTDRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;->writeHtcAddedFieldsInto(Landroid/os/Parcel;)V

    .line 534
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
