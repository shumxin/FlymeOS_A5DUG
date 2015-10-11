.class Lcom/android/server/am/ActiveServices$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    .prologue
    .line 992
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p2, "x1"    # Lcom/android/server/am/ActiveServices$1;

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_0

    .line 1004
    monitor-exit v1

    .line 1015
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDuringHibernate:Z

    if-eqz v0, :cond_2

    .line 1007
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceRestarter: postAtTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1013
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1010
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_AM:Z

    if-eqz v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceRestarter: performServiceRestartLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 997
    return-void
.end method
