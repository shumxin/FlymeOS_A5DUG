.class Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;
.super Ljava/lang/Object;
.source "AnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$1;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;-><init>(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 430
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 431
    .local v6, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 437
    .local v8, "isL":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 438
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    const/4 v5, 0x0

    .line 440
    .local v5, "entryL":Ljava/util/zip/ZipEntry;
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryList:Ljava/util/Enumeration;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$200(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;

    move-result-object v13

    monitor-enter v13

    .line 441
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$300(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I

    move-result v2

    .line 442
    .local v2, "decodeIndex":I
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # operator++ for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mDecodeIndex:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$308(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I

    .line 443
    :cond_1
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$400(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 444
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryList:Ljava/util/Enumeration;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$200(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v4, v0

    .line 445
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "desc.txt"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 447
    :cond_2
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$500(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 448
    :cond_3
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mImgCountL:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$600(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I

    move-result v12

    if-ge v2, v12, :cond_4

    .line 449
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mEntryListL:Ljava/util/Enumeration;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$700(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Enumeration;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v5, v0

    .line 450
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "desc.txt"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 453
    :cond_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$800(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)I

    move-result v12

    if-lt v2, v12, :cond_6

    .line 456
    sget-boolean v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v12, :cond_5

    .line 457
    const-string v12, "AnimationView"

    const-string v13, "decode completed, exit current thread!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_5
    return-void

    .line 453
    .end local v2    # "decodeIndex":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 464
    .restart local v2    # "decodeIndex":I
    :cond_6
    if-eqz v4, :cond_7

    .line 465
    :try_start_2
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipFile:Ljava/util/zip/ZipFile;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$900(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    const/16 v13, 0x2000

    invoke-direct {v7, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    move-object v6, v7

    .line 468
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_7
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$500(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;

    move-result-object v12

    if-eqz v12, :cond_8

    if-eqz v5, :cond_8

    .line 469
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$500(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    const/16 v13, 0x2000

    invoke-direct {v9, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v8    # "isL":Ljava/io/InputStream;
    .local v9, "isL":Ljava/io/InputStream;
    move-object v8, v9

    .line 480
    .end local v9    # "isL":Ljava/io/InputStream;
    .restart local v8    # "isL":Ljava/io/InputStream;
    :cond_8
    :goto_1
    if-eqz v6, :cond_9

    .line 481
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 482
    .local v1, "bitopts":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v1, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    .line 483
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueue:Ljava/util/Vector;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$1000(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    .line 484
    .local v10, "mbp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    const/4 v12, 0x0

    invoke-static {v6, v12, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v10, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 485
    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    .line 489
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 496
    .end local v1    # "bitopts":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "mbp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    :cond_9
    :goto_2
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->zipLandFile:Ljava/util/zip/ZipFile;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$500(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/zip/ZipFile;

    move-result-object v12

    if-eqz v12, :cond_0

    if-eqz v8, :cond_0

    .line 497
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .restart local v1    # "bitopts":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v1, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    .line 499
    iget-object v12, p0, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$ImageDecoder;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;

    # getter for: Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->mBitmapQueueL:Ljava/util/Vector;
    invoke-static {v12}, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;->access$1100(Lcom/android/internal/policy/impl/HtcShutdown/AnimationView;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;

    .line 500
    .local v11, "mbpL":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    const/4 v12, 0x0

    invoke-static {v8, v12, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 501
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;->ready:Z

    .line 506
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v3

    .line 508
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "AnimationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close land texture fail: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 472
    .end local v1    # "bitopts":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v11    # "mbpL":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    :catch_1
    move-exception v3

    .line 473
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "AnimationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read texture fail,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 490
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bitopts":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "mbp":Lcom/android/internal/policy/impl/HtcShutdown/AnimationView$MyBitmap;
    :catch_2
    move-exception v3

    .line 491
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v12, "AnimationView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close texture fail: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method
