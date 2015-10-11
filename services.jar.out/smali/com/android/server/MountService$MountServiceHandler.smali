.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 549
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 550
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 554
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 556
    :pswitch_0
    # getter for: Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z
    invoke-static {}, Lcom/android/server/MountService;->access$200()Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "MountService"

    const-string v19, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/MountService$UnmountCallBack;

    .line 558
    .local v17, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    # getter for: Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z
    invoke-static {}, Lcom/android/server/MountService;->access$200()Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "MountService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " registered = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 562
    # getter for: Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z
    invoke-static {}, Lcom/android/server/MountService;->access$200()Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "MountService"

    const-string v19, "Updating external media status on PackageManager"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_0

    .line 569
    .end local v17    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    # getter for: Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z
    invoke-static {}, Lcom/android/server/MountService;->access$200()Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "MountService"

    const-string v19, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_4
    # getter for: Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z
    invoke-static {}, Lcom/android/server/MountService;->access$200()Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v18, "MountService"

    const-string v19, "Updated status. Processing requests"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 573
    .local v13, "size":I
    new-array v14, v13, [I

    .line 574
    .local v14, "sizeArr":[I
    const/4 v15, 0x0

    .line 576
    .local v15, "sizeArrN":I
    const-string v18, "activity"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 578
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v9, 0x0

    .local v9, "i":I
    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .local v16, "sizeArrN":I
    :goto_1
    if-ge v9, v13, :cond_d

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/MountService$UnmountCallBack;

    .line 580
    .restart local v17    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 581
    .local v11, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 582
    .local v6, "done":Z
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 583
    const/4 v6, 0x1

    .line 598
    :cond_6
    :goto_2
    if-nez v6, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 600
    const-string v18, "MountService"

    const-string v19, "Retrying to kill storage users again"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v20, 0x1e

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v15, v16

    .line 578
    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .restart local v16    # "sizeArrN":I
    goto :goto_1

    .line 585
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 586
    .local v12, "pids":[I
    if-eqz v12, :cond_8

    array-length v0, v12

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 587
    :cond_8
    const/4 v6, 0x1

    goto :goto_2

    .line 590
    :cond_9
    const-string v18, "unmount media"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 593
    if-eqz v12, :cond_a

    array-length v0, v12

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 594
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 606
    .end local v12    # "pids":[I
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 607
    const-string v18, "MountService"

    const-string v19, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_c
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    aput v9, v14, v16

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 616
    .end local v6    # "done":Z
    .end local v11    # "path":Ljava/lang/String;
    .end local v15    # "sizeArrN":I
    .end local v17    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v16    # "sizeArrN":I
    :cond_d
    add-int/lit8 v9, v16, -0x1

    :goto_4
    if-ltz v9, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget v19, v14, v9

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 622
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v9    # "i":I
    .end local v13    # "size":I
    .end local v14    # "sizeArr":[I
    .end local v16    # "sizeArrN":I
    :pswitch_2
    # getter for: Lcom/android/server/MountService;->DEBUG_UNMOUNT:Z
    invoke-static {}, Lcom/android/server/MountService;->access$200()Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "MountService"

    const-string v19, "H_UNMOUNT_MS"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/MountService$UnmountCallBack;

    .line 624
    .restart local v17    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 629
    .end local v17    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 630
    :catch_0
    move-exception v8

    .line 631
    .local v8, "ex":Ljava/lang/Exception;
    const-string v18, "MountService"

    const-string v19, "Boot-time mount exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 636
    .end local v8    # "ex":Ljava/lang/Exception;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)V

    .line 637
    const-string v18, "MountService"

    const-string v19, "Running fstrim idle maintenance"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1102(Lcom/android/server/MountService;J)J

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 650
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v18 .. v18}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v18

    const-string v19, "fstrim"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "dotrim"

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 657
    :goto_6
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 658
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 659
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 643
    .end local v5    # "callback":Ljava/lang/Runnable;
    :catch_1
    move-exception v7

    .line 644
    .local v7, "e":Ljava/lang/Exception;
    const-string v18, "MountService"

    const-string v19, "Unable to record last fstrim!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 652
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 653
    .local v10, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v18, "MountService"

    const-string v19, "Failed to run fstrim!"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
