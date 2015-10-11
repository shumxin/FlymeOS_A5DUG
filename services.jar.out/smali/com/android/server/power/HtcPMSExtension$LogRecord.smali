.class Lcom/android/server/power/HtcPMSExtension$LogRecord;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPMSExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogRecord"
.end annotation


# instance fields
.field final REPEAT_THRESHOLD:I

.field mLogBody:Ljava/lang/String;

.field mRepeat:I

.field mTAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/HtcPMSExtension;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "logBody"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->this$0:Lcom/android/server/power/HtcPMSExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->REPEAT_THRESHOLD:I

    .line 323
    iput-object p2, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    .line 326
    return-void
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logBody"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 330
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 331
    iget v1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    .line 333
    :cond_0
    return v0

    .line 329
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverThreshold()Z
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logBody"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    .line 342
    iput-object p2, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    .line 344
    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "logBody"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcPMSExtension$LogRecord;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    iget v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    if-lez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mLogBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (repeat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcPMSExtension$LogRecord;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1
    :goto_0
    return-void

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/HtcPMSExtension$LogRecord;->isOverThreshold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (repeat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/HtcPMSExtension$LogRecord;->mRepeat:I

    goto :goto_0
.end method
