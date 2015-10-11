.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 439
    const/4 v6, 0x0

    .line 441
    .local v6, "radioOff":Z
    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    .line 443
    .local v3, "nfc":Landroid/nfc/INfcAdapter;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 445
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v9, "bluetooth_manager"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 450
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    :try_start_0
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_0

    const-string v9, "ShutdownThread"

    const-string v10, "Check NFC state"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_e

    :cond_1
    move v4, v7

    .line 453
    .local v4, "nfcOff":Z
    :goto_0
    if-nez v4, :cond_2

    .line 454
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_2
    :goto_1
    :try_start_1
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_3

    const-string v9, "ShutdownThread"

    const-string v10, "Check Bluetooth state"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_f

    :cond_4
    move v1, v7

    .line 465
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_5

    .line 466
    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :cond_5
    :goto_3
    :try_start_2
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_6

    const-string v9, "ShutdownThread"

    const-string v10, "Check Radio state"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_7
    move v6, v7

    .line 479
    :goto_4
    if-nez v6, :cond_8

    .line 480
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off cellular radios..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    :cond_8
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_9

    const-string v9, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radioOff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_9
    :goto_5
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_12

    .line 491
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_d

    .line 496
    if-nez v1, :cond_a

    .line 498
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    if-nez v9, :cond_13

    move v1, v7

    .line 503
    :goto_7
    if-eqz v1, :cond_a

    .line 504
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_14

    .line 505
    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_a
    :goto_8
    if-nez v6, :cond_b

    .line 512
    :try_start_4
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    if-nez v9, :cond_15

    move v6, v7

    .line 517
    :goto_9
    if-eqz v6, :cond_b

    .line 518
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_16

    .line 519
    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_b
    :goto_a
    if-nez v4, :cond_c

    .line 526
    :try_start_5
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    if-ne v9, v7, :cond_17

    move v4, v7

    .line 532
    :goto_b
    if-eqz v4, :cond_c

    .line 533
    const-string v9, "ShutdownThread"

    const-string v10, "NFC turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_c
    if-eqz v6, :cond_19

    if-eqz v1, :cond_19

    if-eqz v4, :cond_19

    .line 538
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_18

    .line 539
    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_c
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v7, v9, v8

    .line 547
    :cond_d
    return-void

    .end local v1    # "bluetoothOff":Z
    .end local v4    # "nfcOff":Z
    :cond_e
    move v4, v8

    .line 451
    goto/16 :goto_0

    .line 457
    :catch_0
    move-exception v2

    .line 458
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    const/4 v4, 0x1

    .restart local v4    # "nfcOff":Z
    goto/16 :goto_1

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_f
    move v1, v8

    .line 464
    goto/16 :goto_2

    .line 469
    :catch_1
    move-exception v2

    .line 470
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto/16 :goto_3

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_10
    move v6, v8

    .line 477
    goto/16 :goto_4

    .line 483
    :catch_2
    move-exception v2

    .line 484
    .restart local v2    # "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 485
    const/4 v6, 0x1

    .line 487
    sget-boolean v9, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v9, :cond_9

    const-string v9, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radioOff = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    sget-boolean v8, Lcom/android/server/HtcLogChecker;->DEBUG_FLAG:Z

    if-eqz v8, :cond_11

    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radioOff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    throw v7

    .line 493
    :cond_12
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_13
    move v1, v8

    .line 498
    goto/16 :goto_7

    .line 499
    :catch_3
    move-exception v2

    .line 500
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 507
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_14
    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_15
    move v6, v8

    .line 512
    goto/16 :goto_9

    .line 513
    :catch_4
    move-exception v2

    .line 514
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 521
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_16
    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_17
    move v4, v8

    .line 526
    goto/16 :goto_b

    .line 527
    :catch_5
    move-exception v2

    .line 528
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    const/4 v4, 0x1

    goto/16 :goto_b

    .line 541
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_18
    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 545
    :cond_19
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6
.end method
