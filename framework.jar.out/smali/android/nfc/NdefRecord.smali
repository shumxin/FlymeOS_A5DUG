.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field private static final MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final RTD_ALTERNATIVE_CARRIER:[B

.field public static final RTD_ANDROID_APP:[B

.field public static final RTD_HANDOVER_CARRIER:[B

.field public static final RTD_HANDOVER_REQUEST:[B

.field public static final RTD_HANDOVER_SELECT:[B

.field public static final RTD_SMART_POSTER:[B

.field public static final RTD_TEXT:[B

.field public static final RTD_URI:[B

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 174
    new-array v0, v4, [B

    const/16 v1, 0x54

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    .line 180
    new-array v0, v4, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 186
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    .line 192
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    .line 198
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    .line 204
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    .line 210
    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    .line 224
    const-string v0, "android.com:pkg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    .line 237
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "http://www."

    aput-object v1, v0, v4

    const-string v1, "https://www."

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "tel:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mailto:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ftp://anonymous:anonymous@"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ftp://ftp."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ftps://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "smb://"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "nfs://"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dav://"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "news:"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "telnet://"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "imap:"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "rtsp://"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "urn:"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "pop:"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "sip:"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "sips:"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "tftp:"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "btspp://"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "btl2cap://"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "btgoep://"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "tcpobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "irdaobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "file://"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "urn:epc:id:"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "urn:epc:tag:"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "urn:epc:pat:"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "urn:epc:raw:"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "urn:epc:"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "urn:nfc:"

    aput-object v2, v0, v1

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    .line 278
    new-array v0, v3, [B

    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 999
    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 186
    nop

    :array_0
    .array-data 1
        0x53t
        0x70t
    .end array-data

    .line 192
    nop

    :array_1
    .array-data 1
        0x61t
        0x63t
    .end array-data

    .line 198
    nop

    :array_2
    .array-data 1
        0x48t
        0x63t
    .end array-data

    .line 204
    nop

    :array_3
    .array-data 1
        0x48t
        0x72t
    .end array-data

    .line 210
    nop

    :array_4
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 2
    .param p1, "tnf"    # S
    .param p2, "type"    # [B
    .param p3, "id"    # [B
    .param p4, "payload"    # [B

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    if-nez p2, :cond_0

    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 559
    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 560
    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 562
    :cond_2
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 564
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_3
    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 568
    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 569
    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 570
    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 571
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 591
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 593
    .local v1, "rs":[Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 594
    new-instance v2, Landroid/nfc/FormatException;

    const-string v3, "data too long"

    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :cond_0
    aget-object v2, v1, v3

    iget-short v2, v2, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    .line 598
    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    .line 599
    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    .line 600
    aget-object v2, v1, v3

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mPayload:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    .line 601
    return-void
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .locals 9
    .param p0, "bs"    # [B

    .prologue
    .line 1059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    .local v4, "s":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 1061
    .local v1, "b":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1063
    .end local v1    # "b":B
    :cond_0
    return-object v4
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 312
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 6
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 458
    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "domain is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "type is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "domain is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "type is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 467
    :cond_3
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 468
    .local v1, "byteDomain":[B
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 469
    .local v2, "byteType":[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v0, v3, [B

    .line 470
    .local v0, "b":[B
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 471
    array-length v3, v1

    const/16 v4, 0x3a

    aput-byte v4, v0, v3

    .line 472
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 474
    new-instance v3, Landroid/nfc/NdefRecord;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v3
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "mimeData"    # [B

    .prologue
    .line 412
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "mimeType is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_0
    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 418
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mimeType is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 420
    .local v0, "slashIndex":I
    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mimeType must have major type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 421
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mimeType must have minor type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 428
    .local v1, "typeBytes":[B
    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method

.method public static createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 9
    .param p0, "languageCode"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 491
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "text is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 495
    .local v3, "textBytes":[B
    const/4 v1, 0x0

    .line 496
    .local v1, "languageCodeBytes":[B
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 497
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 503
    :goto_0
    array-length v4, v1

    const/16 v5, 0x40

    if-lt v4, v5, :cond_2

    .line 504
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "language code is too long, must be <64 bytes."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 499
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_0

    .line 506
    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 508
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 509
    .local v2, "status":B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 511
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 513
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 341
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "uri is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "uriString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "uri is empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 347
    :cond_1
    const/4 v1, 0x0

    .line 348
    .local v1, "prefix":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 349
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    int-to-byte v1, v0

    .line 351
    sget-object v5, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 355
    :cond_2
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 356
    .local v3, "uriBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 357
    .local v2, "recordBytes":[B
    aput-byte v1, v2, v6

    .line 358
    array-length v5, v3

    invoke-static {v3, v6, v2, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 359
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    .line 348
    .end local v2    # "recordBytes":[B
    .end local v3    # "uriBytes":[B
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private static ensureSanePayloadSize(J)V
    .locals 4
    .param p0, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 897
    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 898
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "payload above max limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_0
    return-void
.end method

.method static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .locals 32
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "ignoreMbMe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    .line 794
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v22, "records":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    const/16 v25, 0x0

    .line 798
    .local v25, "type":[B
    const/4 v12, 0x0

    .line 799
    .local v12, "id":[B
    const/16 v19, 0x0

    .line 800
    .local v19, "payload":[B
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v6, "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v15, 0x0

    .line 802
    .local v15, "inChunk":Z
    const/4 v5, -0x1

    .line 803
    .local v5, "chunkTnf":S
    const/16 v17, 0x0

    .line 805
    .local v17, "me":Z
    :cond_0
    :goto_0
    if-nez v17, :cond_1b

    .line 806
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 808
    .local v9, "flag":B
    and-int/lit8 v27, v9, -0x80

    if-eqz v27, :cond_1

    const/16 v16, 0x1

    .line 809
    .local v16, "mb":Z
    :goto_1
    and-int/lit8 v27, v9, 0x40

    if-eqz v27, :cond_2

    const/16 v17, 0x1

    .line 810
    :goto_2
    and-int/lit8 v27, v9, 0x20

    if-eqz v27, :cond_3

    const/4 v4, 0x1

    .line 811
    .local v4, "cf":Z
    :goto_3
    and-int/lit8 v27, v9, 0x10

    if-eqz v27, :cond_4

    const/16 v23, 0x1

    .line 812
    .local v23, "sr":Z
    :goto_4
    and-int/lit8 v27, v9, 0x8

    if-eqz v27, :cond_5

    const/4 v14, 0x1

    .line 813
    .local v14, "il":Z
    :goto_5
    and-int/lit8 v27, v9, 0x7

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v24, v0

    .line 815
    .local v24, "tnf":S
    if-nez v16, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_6

    if-nez v15, :cond_6

    if-nez p1, :cond_6

    .line 816
    new-instance v27, Landroid/nfc/FormatException;

    const-string v28, "expected MB flag"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v4    # "cf":Z
    .end local v5    # "chunkTnf":S
    .end local v6    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v9    # "flag":B
    .end local v14    # "il":Z
    .end local v15    # "inChunk":Z
    .end local v16    # "mb":Z
    .end local v17    # "me":Z
    .end local v23    # "sr":Z
    .end local v24    # "tnf":S
    :catch_0
    move-exception v7

    .line 891
    .local v7, "e":Ljava/nio/BufferUnderflowException;
    new-instance v27, Landroid/nfc/FormatException;

    const-string v28, "expected more data"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 808
    .end local v7    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v5    # "chunkTnf":S
    .restart local v6    # "chunks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v9    # "flag":B
    .restart local v15    # "inChunk":Z
    .restart local v17    # "me":Z
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 809
    .restart local v16    # "mb":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 810
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 811
    .restart local v4    # "cf":Z
    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    .line 812
    .restart local v23    # "sr":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 817
    .restart local v14    # "il":Z
    .restart local v24    # "tnf":S
    :cond_6
    if-eqz v16, :cond_7

    :try_start_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-eqz v27, :cond_7

    if-nez p1, :cond_7

    .line 818
    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected MB flag"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 819
    :cond_7
    if-eqz v15, :cond_8

    if-eqz v14, :cond_8

    .line 820
    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected IL flag in non-leading chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 821
    :cond_8
    if-eqz v4, :cond_9

    if-eqz v17, :cond_9

    .line 822
    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected ME flag in non-trailing chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 823
    :cond_9
    if-eqz v15, :cond_a

    const/16 v27, 0x6

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 824
    new-instance v27, Landroid/nfc/FormatException;

    const-string v28, "expected TNF_UNCHANGED in non-leading chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 825
    :cond_a
    if-nez v15, :cond_b

    const/16 v27, 0x6

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 826
    new-instance v27, Landroid/nfc/FormatException;

    const-string/jumbo v28, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 830
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 831
    .local v26, "typeLength":I
    if-eqz v23, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 832
    .local v20, "payloadLength":J
    :goto_6
    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v27

    move/from16 v0, v27

    and-int/lit16 v13, v0, 0xff

    .line 834
    .local v13, "idLength":I
    :goto_7
    if-eqz v15, :cond_e

    if-eqz v26, :cond_e

    .line 835
    new-instance v27, Landroid/nfc/FormatException;

    const-string v28, "expected zero-length type in non-leading chunk"

    invoke-direct/range {v27 .. v28}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 831
    .end local v13    # "idLength":I
    .end local v20    # "payloadLength":J
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v20, v28, v30

    goto :goto_6

    .line 832
    .restart local v20    # "payloadLength":J
    :cond_d
    const/4 v13, 0x0

    goto :goto_7

    .line 838
    .restart local v13    # "idLength":I
    :cond_e
    if-nez v15, :cond_f

    .line 839
    if-lez v26, :cond_13

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 840
    :goto_8
    if-lez v13, :cond_14

    new-array v12, v13, [B

    .line 841
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 842
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 845
    :cond_f
    invoke-static/range {v20 .. v21}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    .line 846
    const-wide/16 v28, 0x0

    cmp-long v27, v20, v28

    if-lez v27, :cond_15

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 847
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 849
    if-eqz v4, :cond_10

    if-nez v15, :cond_10

    .line 851
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 852
    move/from16 v5, v24

    .line 854
    :cond_10
    if-nez v4, :cond_11

    if-eqz v15, :cond_12

    .line 856
    :cond_11
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_12
    if-nez v4, :cond_18

    if-eqz v15, :cond_18

    .line 860
    const-wide/16 v20, 0x0

    .line 861
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 862
    .local v18, "p":[B
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v20, v20, v28

    .line 863
    goto :goto_b

    .line 839
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "p":[B
    :cond_13
    sget-object v25, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    goto :goto_8

    .line 840
    :cond_14
    sget-object v12, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    goto :goto_9

    .line 846
    :cond_15
    sget-object v19, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    goto :goto_a

    .line 864
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-static/range {v20 .. v21}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    .line 865
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 866
    const/4 v10, 0x0

    .line 867
    .local v10, "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    .line 868
    .restart local v18    # "p":[B
    const/16 v27, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move-object/from16 v2, v19

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v10, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 869
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    add-int v10, v10, v27

    .line 870
    goto :goto_c

    .line 871
    .end local v18    # "p":[B
    :cond_17
    move/from16 v24, v5

    .line 873
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_18
    if-eqz v4, :cond_19

    .line 875
    const/4 v15, 0x1

    .line 876
    goto/16 :goto_0

    .line 878
    :cond_19
    const/4 v15, 0x0

    .line 881
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v8

    .line 882
    .local v8, "error":Ljava/lang/String;
    if-eqz v8, :cond_1a

    .line 883
    new-instance v27, Landroid/nfc/FormatException;

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 885
    :cond_1a
    new-instance v27, Landroid/nfc/NdefRecord;

    move-object/from16 v0, v27

    move/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v12, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 886
    if-eqz p1, :cond_0

    .line 893
    .end local v4    # "cf":Z
    .end local v8    # "error":Ljava/lang/String;
    .end local v9    # "flag":B
    .end local v13    # "idLength":I
    .end local v14    # "il":Z
    .end local v16    # "mb":Z
    .end local v20    # "payloadLength":J
    .end local v23    # "sr":Z
    .end local v24    # "tnf":S
    .end local v26    # "typeLength":I
    :cond_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/nfc/NdefRecord;

    return-object v27
.end method

.method private parseWktUri()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 764
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-object v3

    .line 770
    :cond_1
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit8 v1, v4, -0x1

    .line 771
    .local v1, "prefixIndex":I
    if-ltz v1, :cond_0

    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 774
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 775
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 777
    .local v2, "suffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private toUri(Z)Landroid/net/Uri;
    .locals 11
    .param p1, "inSmartPoster"    # Z

    .prologue
    const/4 v7, 0x0

    .line 727
    iget-short v8, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v8, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    :pswitch_0
    return-object v7

    .line 729
    :pswitch_1
    iget-object v8, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez p1, :cond_2

    .line 732
    :try_start_0
    new-instance v3, Landroid/nfc/NdefMessage;

    iget-object v8, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {v3, v8}, Landroid/nfc/NdefMessage;-><init>([B)V

    .line 733
    .local v3, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 734
    .local v4, "nestedRecord":Landroid/nfc/NdefRecord;
    const/4 v8, 0x1

    invoke-direct {v4, v8}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 735
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_1

    move-object v7, v5

    .line 736
    goto :goto_0

    .line 733
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 740
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v4    # "nestedRecord":Landroid/nfc/NdefRecord;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v8, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 741
    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    move-result-object v6

    .line 742
    .local v6, "wktUri":Landroid/net/Uri;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 747
    .end local v6    # "wktUri":Landroid/net/Uri;
    :pswitch_2
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 748
    .restart local v5    # "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 751
    .end local v5    # "uri":Landroid/net/Uri;
    :pswitch_3
    if-nez p1, :cond_0

    .line 754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vnd.android.nfc://ext/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_0

    .line 739
    :catch_0
    move-exception v8

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static validateTnf(S[B[B[B)Ljava/lang/String;
    .locals 4
    .param p0, "tnf"    # S
    .param p1, "type"    # [B
    .param p2, "id"    # [B
    .param p3, "payload"    # [B

    .prologue
    const/4 v0, 0x0

    .line 916
    packed-switch p0, :pswitch_data_0

    .line 936
    const-string/jumbo v0, "unexpected tnf value: 0x%02x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 918
    :pswitch_1
    array-length v1, p1

    if-nez v1, :cond_1

    array-length v1, p2

    if-nez v1, :cond_1

    array-length v1, p3

    if-eqz v1, :cond_0

    .line 919
    :cond_1
    const-string/jumbo v0, "unexpected data in TNF_EMPTY record"

    goto :goto_0

    .line 929
    :pswitch_2
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 930
    const-string/jumbo v0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    goto :goto_0

    .line 934
    :pswitch_3
    const-string/jumbo v0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    goto :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1039
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 1046
    :cond_0
    :goto_0
    return v1

    .line 1040
    :cond_1
    if-eqz p1, :cond_0

    .line 1041
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 1042
    check-cast v0, Landroid/nfc/NdefRecord;

    .line 1043
    .local v0, "other":Landroid/nfc/NdefRecord;
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v3, v0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v3, v0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-short v3, v0, Landroid/nfc/NdefRecord;->mTnf:S

    if-ne v2, v3, :cond_0

    .line 1046
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v2, v0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method getByteLength()I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 972
    iget-object v5, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x3

    iget-object v6, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v6, v6

    add-int v1, v5, v6

    .line 974
    .local v1, "length":I
    iget-object v5, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v5, v5

    const/16 v6, 0x100

    if-ge v5, v6, :cond_2

    move v2, v3

    .line 975
    .local v2, "sr":Z
    :goto_0
    iget-object v5, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v5, v5

    if-lez v5, :cond_3

    move v0, v3

    .line 977
    .local v0, "il":Z
    :goto_1
    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x3

    .line 978
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 980
    :cond_1
    return v1

    .end local v0    # "il":Z
    .end local v2    # "sr":Z
    :cond_2
    move v2, v4

    .line 974
    goto :goto_0

    .restart local v2    # "sr":Z
    :cond_3
    move v0, v4

    .line 975
    goto :goto_1
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    if-nez v0, :cond_0

    .line 637
    sget-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 638
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    if-nez v0, :cond_0

    .line 650
    sget-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 651
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public getTnf()S
    .locals 1

    .prologue
    .line 609
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    if-nez v0, :cond_0

    .line 624
    sget-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    .line 625
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1024
    const/16 v0, 0x1f

    .line 1025
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1026
    .local v1, "result":I
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 1027
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 1028
    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    add-int v1, v2, v3

    .line 1029
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 1030
    return v1
.end method

.method public toByteArray()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 668
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 669
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0, v2, v2}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    .line 670
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toMimeType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    iget-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v1, :pswitch_data_0

    .line 699
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 691
    :pswitch_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    const-string/jumbo v1, "text/plain"

    goto :goto_0

    .line 696
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 697
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NdefRecord tnf=%X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1053
    :cond_0
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1054
    :cond_1
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "mb"    # Z
    .param p3, "me"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 946
    iget-object v5, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v5, v5

    const/16 v6, 0x100

    if-ge v5, v6, :cond_2

    move v2, v3

    .line 947
    .local v2, "sr":Z
    :goto_0
    iget-object v5, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v5, v5

    if-lez v5, :cond_3

    move v1, v3

    .line 949
    .local v1, "il":Z
    :goto_1
    if-eqz p2, :cond_4

    const/16 v3, -0x80

    move v5, v3

    :goto_2
    if-eqz p3, :cond_5

    const/16 v3, 0x40

    :goto_3
    or-int/2addr v5, v3

    if-eqz v2, :cond_6

    const/16 v3, 0x10

    :goto_4
    or-int/2addr v3, v5

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    :cond_0
    or-int/2addr v3, v4

    iget-short v4, p0, Landroid/nfc/NdefRecord;->mTnf:S

    or-int/2addr v3, v4

    int-to-byte v0, v3

    .line 951
    .local v0, "flags":B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 953
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 954
    if-eqz v2, :cond_7

    .line 955
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 959
    :goto_5
    if-eqz v1, :cond_1

    .line 960
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 963
    :cond_1
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 964
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 965
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 966
    return-void

    .end local v0    # "flags":B
    .end local v1    # "il":Z
    .end local v2    # "sr":Z
    :cond_2
    move v2, v4

    .line 946
    goto :goto_0

    .restart local v2    # "sr":Z
    :cond_3
    move v1, v4

    .line 947
    goto :goto_1

    .restart local v1    # "il":Z
    :cond_4
    move v5, v4

    .line 949
    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_4

    .line 957
    .restart local v0    # "flags":B
    :cond_7
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 990
    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 993
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 995
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 997
    return-void
.end method
