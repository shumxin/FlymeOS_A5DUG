.class Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;
.super Landroid/os/FileObserver;
.source "ErrorReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/error/ErrorReportController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemWatcher"
.end annotation


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mMask:I

.field final synthetic this$0:Lcom/htc/server/report/error/ErrorReportController;


# direct methods
.method public constructor <init>(Lcom/htc/server/report/error/ErrorReportController;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/server/report/error/ReportException;
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->this$0:Lcom/htc/server/report/error/ErrorReportController;

    .line 25
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    .line 27
    :cond_0
    new-instance v0, Lcom/htc/server/report/error/ReportException;

    const-string v1, "path or ctx is null"

    invoke-direct {v0, v1}, Lcom/htc/server/report/error/ReportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p4, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->mCtx:Landroid/content/Context;

    .line 29
    iput p3, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->mMask:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->mCtx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 33
    iget v1, p0, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;->mMask:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string v1, "ErrorReportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect framework changed, disable Tell HTC, event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher$1;

    invoke-direct {v1, p0}, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher$1;-><init>(Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;)V

    const-string v2, "DisableTellHTC"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 54
    .local v0, "t":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
