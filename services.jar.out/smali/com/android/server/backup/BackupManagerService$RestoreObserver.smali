.class Lcom/android/server/backup/BackupManagerService$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreObserver"
.end annotation


# instance fields
.field done:Z

.field sets:[Landroid/app/backup/RestoreSet;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 1

    .prologue
    .line 10472
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    .line 10474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 3
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    .prologue
    .line 10489
    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10490
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10492
    :cond_0
    return-void
.end method

.method public restoreFinished(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 10495
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10496
    monitor-enter p0

    .line 10497
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->done:Z

    .line 10498
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10499
    monitor-exit p0

    .line 10500
    return-void

    .line 10499
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 1
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    .prologue
    .line 10477
    monitor-enter p0

    .line 10478
    :try_start_0
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    .line 10479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->done:Z

    .line 10480
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10481
    monitor-exit p0

    .line 10482
    return-void

    .line 10481
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreStarting(I)V
    .locals 3
    .param p1, "numPackages"    # I

    .prologue
    .line 10485
    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStarting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10486
    :cond_0
    return-void
.end method

.method public waitForCompletion()V
    .locals 1

    .prologue
    .line 10505
    monitor-enter p0

    .line 10506
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 10508
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10509
    :catch_0
    move-exception v0

    goto :goto_0

    .line 10512
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$RestoreObserver;->done:Z

    .line 10513
    monitor-exit p0

    .line 10514
    return-void

    .line 10513
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
