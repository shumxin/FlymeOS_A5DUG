.class public Lcom/android/internal/telephony/MobileNetwork$Setting;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$Setting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public grayOut:Ljava/lang/Boolean;

.field public hide:Ljava/lang/Boolean;

.field public value:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 402
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$Setting$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    if-eqz p1, :cond_0

    .line 302
    instance-of v5, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v5, :cond_1

    move-object v5, p1

    .line 303
    check-cast v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v5, v5, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    move-object v5, p1

    .line 304
    check-cast v5, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v5, v5, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 305
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v5, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Landroid/os/Parcel;

    if-eqz v5, :cond_2

    .line 308
    check-cast p1, Landroid/os/Parcel;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "parcelString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 310
    new-instance v5, Ljava/io/CharArrayReader;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-static {v5, p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    goto :goto_0

    .line 314
    .end local v3    # "parcelString":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 315
    .local v1, "matchAllFields":Z
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 316
    const/4 v1, 0x1

    move-object v5, p1

    .line 317
    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 318
    .local v4, "v":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 319
    .local v0, "index":I
    if-eqz v1, :cond_4

    array-length v5, v4

    if-le v5, v0, :cond_4

    .line 320
    aget-object v5, v4, v0

    if-eqz v5, :cond_3

    .line 321
    aget-object v5, v4, v0

    instance-of v1, v5, Ljava/lang/Boolean;

    .line 322
    if-eqz v1, :cond_3

    .line 323
    aget-object v5, v4, v0

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 326
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 328
    :cond_4
    if-eqz v1, :cond_6

    array-length v5, v4

    if-le v5, v0, :cond_6

    .line 329
    aget-object v5, v4, v0

    if-eqz v5, :cond_5

    .line 330
    aget-object v5, v4, v0

    instance-of v1, v5, Ljava/lang/Boolean;

    .line 331
    if-eqz v1, :cond_5

    .line 332
    aget-object v5, v4, v0

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 335
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_6
    if-eqz v1, :cond_8

    array-length v5, v4

    if-le v5, v0, :cond_8

    .line 338
    aget-object v5, v4, v0

    if-eqz v5, :cond_7

    .line 339
    aget-object v5, v4, v0

    instance-of v1, v5, Ljava/lang/Boolean;

    .line 340
    if-eqz v1, :cond_7

    .line 341
    aget-object v5, v4, v0

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    .line 344
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 347
    .end local v0    # "index":I
    .end local v4    # "v":[Ljava/lang/Object;
    :cond_8
    if-nez v1, :cond_0

    .line 348
    const/4 v2, 0x0

    .line 350
    .local v2, "matchAnyField":Z
    :try_start_0
    const-string v5, "value"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v5}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 351
    const/4 v2, 0x1

    .line 354
    :goto_1
    :try_start_1
    const-string v5, "grayOut"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v5}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    const/4 v2, 0x1

    .line 358
    :goto_2
    :try_start_2
    const-string v5, "hide"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v5}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 359
    const/4 v2, 0x1

    .line 361
    :goto_3
    if-nez v2, :cond_0

    .line 362
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 360
    :catch_0
    move-exception v5

    goto :goto_3

    .line 356
    :catch_1
    move-exception v5

    goto :goto_2

    .line 352
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method static synthetic access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/CharArrayWriter;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 290
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    return-void
.end method

.method static synthetic access$500(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 1
    .param p0, "x0"    # Ljava/io/CharArrayReader;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 290
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 290
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 290
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z

    move-result v0

    return v0
.end method

.method private static constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 4
    .param p0, "reader"    # Ljava/io/CharArrayReader;
    .param p1, "givenContainer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 453
    move-object v1, p1

    .line 454
    .local v1, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz p0, :cond_3

    .line 456
    const/16 v0, 0x5f

    .line 457
    .local v0, "key":I
    :try_start_0
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->read()I

    move-result v0

    .line 460
    :cond_0
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    .line 461
    if-nez v1, :cond_1

    .line 462
    new-instance v2, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>()V

    .end local v1    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .local v2, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    move-object v1, v2

    .line 464
    .end local v2    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    .restart local v1    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    :cond_1
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->convertIntToBoolean(I)Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$300(I)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 465
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 466
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->read()I

    move-result v3

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->convertIntToBoolean(I)Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->access$300(I)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    .line 468
    :cond_2
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->read()I

    move-result v3

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->convertIntToBoolean(I)Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/internal/telephony/MobileNetwork;->access$300(I)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0    # "key":I
    :cond_3
    :goto_0
    return-object v1

    .line 472
    .restart local v0    # "key":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private convertToObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 484
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 485
    .local v0, "v":[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 486
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 487
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 488
    return-object v0
.end method

.method private static equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    .locals 3
    .param p0, "o1"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p1, "o2"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "result":Z
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 527
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 528
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 529
    const/4 v0, 0x0

    .line 537
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 539
    const/4 v0, 0x0

    .line 553
    :cond_2
    :goto_2
    return v0

    .line 523
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 524
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 534
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 543
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 544
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 549
    :cond_9
    if-nez p0, :cond_a

    if-eqz p1, :cond_2

    .line 550
    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/CharArrayWriter;
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    .line 442
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$200(Ljava/lang/Boolean;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    .line 439
    iget-object v0, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$200(Ljava/lang/Boolean;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    .line 440
    iget-object v0, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->convertBooleanToChar(Ljava/lang/Boolean;)C
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$200(Ljava/lang/Boolean;)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/CharArrayWriter;->append(C)Ljava/io/CharArrayWriter;

    goto :goto_0
.end method

.method private static invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 2
    .param p0, "o"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->grayOut:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Setting;->hide:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 504
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    .line 505
    .restart local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$Setting;
    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$Setting;->value:Ljava/lang/Boolean;

    .line 508
    :cond_2
    return-object v0

    .line 505
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 421
    .local v0, "writer":Ljava/io/CharArrayWriter;
    invoke-static {v0, p0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 422
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    .end local v0    # "writer":Ljava/io/CharArrayWriter;
    :cond_0
    return-void
.end method
