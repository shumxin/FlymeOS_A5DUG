.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method

.method private exitCurrentModeIfAny(I)V
    .locals 5
    .param p1, "nNewEnteringMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 456
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v1, v1, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v0, v1, 0xf

    .line 457
    .local v0, "nCurModeType":I
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v3, :cond_0

    if-eq p1, v3, :cond_0

    .line 460
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService$5;->disableDeskMode(I)V

    .line 462
    :cond_0
    and-int/lit8 v1, v0, 0x3

    if-ne v1, v4, :cond_1

    if-eq p1, v4, :cond_1

    .line 465
    invoke-virtual {p0, v2}, Lcom/android/server/UiModeManagerService$5;->disableCarMode(I)V

    .line 467
    :cond_1
    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 340
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 342
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 345
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    return-void

    .line 345
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public disableDeskMode(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 376
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 377
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 378
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    .line 379
    # getter for: Lcom/android/server/UiModeManagerService;->localLOG:Z
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "updateLocked, enter: disableDeskMode"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 382
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    return-void

    .line 382
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public enableCarMode(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    .local v0, "ident":J
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService$5;->exitCurrentModeIfAny(I)V

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 327
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 330
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    return-void

    .line 330
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enableDeskMode(I)V
    .locals 5
    .param p1, "flags"    # I

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 357
    .local v0, "ident":J
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/UiModeManagerService$5;->exitCurrentModeIfAny(I)V

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/UiModeManagerService;->setDeskModeLocked(Z)V

    .line 362
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    .line 363
    # getter for: Lcom/android/server/UiModeManagerService;->localLOG:Z
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v4, "updateLocked, enter: enableDeskMode"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 366
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    return-void

    .line 366
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 368
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentModeType()I
    .locals 4

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 398
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v2, v2, 0xf

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 400
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 402
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDockState()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mDockState:I
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    return v0
.end method

.method public getNightMode()I
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    monitor-exit v1

    return v0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNightMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 414
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 419
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    :try_start_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->isDoingNightModeLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    iput p1, v2, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 424
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 426
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    return-void

    .line 426
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 428
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
