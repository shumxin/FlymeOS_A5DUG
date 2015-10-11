.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation


# instance fields
.field private bSmartUsb2:Z

.field private configured:I

.field private connected:I

.field private intentDelay:I

.field private last_configured:I

.field private last_connected:I

.field private mAtsMode:Ljava/lang/String;

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentKernelFunctions:Ljava/lang/String;

.field private mCurrentUser:I

.field private mDefaultFunctions:Ljava/lang/String;

.field private mSecureKey:Ljava/lang/String;

.field private mUsbNotificationId:I

.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

.field private mbModifyMpDec:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 23
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 637
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 608
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    .line 609
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    .line 616
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->bSmartUsb2:Z

    .line 617
    const/16 v19, -0x2710

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 618
    const-string v19, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    .line 621
    new-instance v19, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 629
    new-instance v19, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 641
    const/16 v19, 0x46

    :try_start_0
    move/from16 v0, v19

    new-array v5, v0, [C

    .line 642
    .local v5, "buffer4ats":[C
    new-instance v14, Ljava/io/FileReader;

    const-string v19, "/sys/devices/platform/android_usb/ats"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 643
    .local v14, "reader4ats":Ljava/io/FileReader;
    const/16 v19, 0x0

    const/16 v20, 0x46

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v12

    .line 644
    .local v12, "len4ats":I
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    add-int/lit8 v21, v12, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v5, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    .line 646
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[USBNET] UsbHandler: mAtsMode= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAtsMode:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v5    # "buffer4ats":[C
    .end local v12    # "len4ats":I
    .end local v14    # "reader4ats":Ljava/io/FileReader;
    :goto_0
    const/16 v19, 0x46

    :try_start_1
    move/from16 v0, v19

    new-array v4, v0, [C

    .line 655
    .local v4, "buffer":[C
    new-instance v13, Ljava/io/FileReader;

    const-string v19, "/sys/class/android_usb/android0/functions"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 656
    .local v13, "reader":Ljava/io/FileReader;
    const/16 v19, 0x0

    const/16 v20, 0x46

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v4, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v11

    .line 657
    .local v11, "len":I
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x0

    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$802(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    const/4 v3, 0x0

    .line 660
    .local v3, "bSkipCheckDefault":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mbModifyMpDec:Z

    .line 661
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[USBNET] UsbHandler: mDefaultKernelFunctions= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v19, "ro.build.sense.version"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    const/high16 v20, 0x40800000    # 4.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_6

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mbSmartUsb:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->checkSpecificProduct()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 668
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[USBNET] UsbHandler: isSpecificProduct = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v19, "persist.sys.usb.config"

    const-string v20, "adb"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 674
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1600()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 676
    const-string v19, "persist.sys.usb.hsm_detect"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 678
    .local v17, "szValue":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v19

    if-gtz v19, :cond_0

    .line 679
    const/4 v10, 0x0

    .line 682
    .local v10, "iHSM_NewPidSupport":I
    :try_start_2
    new-instance v19, Ljava/io/File;

    const-string v20, "/sys/module/g_android/parameters/hsm_newpid"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v10

    .line 689
    :goto_2
    :try_start_3
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[USBNET] iHSM_NewPidSupport ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_7

    .line 692
    const-string v19, "persist.sys.usb.hsm_detect"

    const-string v20, "0"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v10    # "iHSM_NewPidSupport":I
    .end local v17    # "szValue":Ljava/lang/String;
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "adb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 698
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 699
    const-string v19, "mtp,mass_storage,adb"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 703
    :goto_4
    const/4 v3, 0x1

    .line 705
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[USBNET] UsbHandler: Skip Check Default"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 722
    const-string v19, "sys.usb.config"

    const-string v20, "none"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, "config":Ljava/lang/String;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[USBNET] UsbHandler: mDefaultFunctions="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "; mCurrentFunctions="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    if-eqz v3, :cond_2

    .line 726
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 727
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 728
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "resetting config to persistent property: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v19, "sys.usb.config"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 733
    new-instance v19, Ljava/io/File;

    const-string v20, "/sys/class/android_usb/android0/state"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 734
    .local v16, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1902(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 738
    const-string v19, "persist.service.adb.enable"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 739
    .local v18, "value":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 740
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 741
    .local v8, "enable":C
    const/16 v19, 0x31

    move/from16 v0, v19

    if-ne v8, v0, :cond_b

    .line 742
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    .line 746
    :cond_4
    :goto_6
    const-string v19, "persist.service.adb.enable"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v8    # "enable":C
    :cond_5
    const-string v19, "ro.sf"

    const-string v20, "1"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecureKey:Ljava/lang/String;

    .line 751
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[USBNET] mSecureKey= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecureKey:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "adb_enabled"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    new-instance v22, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 759
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 760
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 761
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/usb_connect2pc"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 762
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 763
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/platform/msm_otg"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 764
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/msm_dwc3/f9200000.dwc3"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 765
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/prj2_status"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 766
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/usb_diag"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 767
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/htcmode"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 768
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/mirror_link"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 769
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/scsi_cmd"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 770
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v19

    const-string v20, "DEVPATH=/devices/virtual/switch/USB_PERF"

    invoke-virtual/range {v19 .. v20}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 772
    new-instance v9, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 773
    .local v9, "filter":Landroid/content/IntentFilter;
    const/16 v19, 0x3e8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 774
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 775
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "android.intent.action.USER_SWITCHED"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 780
    .end local v3    # "bSkipCheckDefault":Z
    .end local v4    # "buffer":[C
    .end local v6    # "config":Ljava/lang/String;
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "len":I
    .end local v13    # "reader":Ljava/io/FileReader;
    .end local v16    # "state":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :goto_7
    return-void

    .line 648
    :catch_0
    move-exception v7

    .line 649
    .local v7, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Error FileReader reader4ats"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 664
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "bSkipCheckDefault":Z
    .restart local v4    # "buffer":[C
    .restart local v11    # "len":I
    .restart local v13    # "reader":Ljava/io/FileReader;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 683
    .restart local v10    # "iHSM_NewPidSupport":I
    .restart local v17    # "szValue":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 684
    .local v15, "sEx":Ljava/io/FileNotFoundException;
    :try_start_4
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "This kernel does not have HSM NewPid support"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 777
    .end local v3    # "bSkipCheckDefault":Z
    .end local v4    # "buffer":[C
    .end local v10    # "iHSM_NewPidSupport":I
    .end local v11    # "len":I
    .end local v13    # "reader":Ljava/io/FileReader;
    .end local v15    # "sEx":Ljava/io/FileNotFoundException;
    .end local v17    # "szValue":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 778
    .restart local v7    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Error initializing UsbHandler"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 685
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "bSkipCheckDefault":Z
    .restart local v4    # "buffer":[C
    .restart local v10    # "iHSM_NewPidSupport":I
    .restart local v11    # "len":I
    .restart local v13    # "reader":Ljava/io/FileReader;
    .restart local v17    # "szValue":Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 686
    .local v15, "sEx":Ljava/lang/Exception;
    :try_start_5
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 694
    .end local v15    # "sEx":Ljava/lang/Exception;
    :cond_7
    const/16 v19, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/usb/UsbDeviceManager;->access$1602(I)I

    goto/16 :goto_3

    .line 701
    .end local v10    # "iHSM_NewPidSupport":I
    .end local v17    # "szValue":Ljava/lang/String;
    :cond_8
    const-string v19, "mass_storage,adb"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    goto/16 :goto_4

    .line 707
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "adboff"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 708
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 709
    const-string v19, "mtp,mass_storage"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 713
    :goto_8
    const/4 v3, 0x1

    .line 714
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v19

    const-string v20, "[USBNET] UsbHandler: Skip Check Default"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 711
    :cond_a
    const-string v19, "mass_storage"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    goto :goto_8

    .line 743
    .restart local v6    # "config":Ljava/lang/String;
    .restart local v8    # "enable":C
    .restart local v16    # "state":Ljava/lang/String;
    .restart local v18    # "value":Ljava/lang/String;
    :cond_b
    const/16 v19, 0x30

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    .line 744
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_6
.end method

.method static synthetic access$4400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 601
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V

    return-void
.end method

.method private checkSpecificProduct()I
    .locals 3

    .prologue
    .line 1433
    const-string v0, "t6wl"

    const-string v1, "ro.build.product"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Verizon"

    const-string v1, "ro.cdma.home.operator.alpha"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    const/4 v0, 0x1

    .line 1437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHtcMode()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1306
    new-instance v3, Ljava/lang/String;

    const-string v7, "0"

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v3, "mHtcMode":Ljava/lang/String;
    const/4 v7, 0x5

    :try_start_0
    new-array v0, v7, [C

    .line 1309
    .local v0, "buffer4HtcMode":[C
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/sys/devices/platform/android_usb/usb_denied"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v5, "reader4HtcMode":Ljava/io/FileReader;
    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v5, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 1311
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 1312
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v4, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .end local v3    # "mHtcMode":Ljava/lang/String;
    .local v4, "mHtcMode":Ljava/lang/String;
    move-object v3, v4

    .line 1314
    .end local v4    # "mHtcMode":Ljava/lang/String;
    .restart local v3    # "mHtcMode":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] mHtcMode= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1323
    .end local v0    # "buffer4HtcMode":[C
    .end local v2    # "len":I
    .end local v5    # "reader4HtcMode":Ljava/io/FileReader;
    :goto_0
    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1324
    const/4 v6, 0x1

    .line 1326
    :cond_1
    return v6

    .line 1317
    :catch_0
    move-exception v1

    .line 1318
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error FileReader reader"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1319
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1320
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setAdbEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 871
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(ZZ)V

    .line 872
    return-void
.end method

.method private setAdbEnabled(ZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "makeDefault"    # Z

    .prologue
    .line 875
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdbEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1902(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 880
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 881
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 886
    :cond_1
    return-void
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 889
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setEnabledFunctions("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; mAcmEnabled: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z
    invoke-static {v12}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, "bRndisEnabled":Z
    const/4 v1, 0x0

    .line 894
    .local v1, "bRndisTetheringEnabled":Z
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "send Fake intent while setEnabledFunctions"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    if-nez p1, :cond_4

    .line 897
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 898
    const-string v10, "mass_storage,adb"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    .line 911
    :cond_0
    :goto_0
    const/16 v10, 0x46

    :try_start_0
    new-array v2, v10, [C

    .line 912
    .local v2, "buffer":[C
    new-instance v8, Ljava/io/FileReader;

    const-string v10, "/sys/class/android_usb/android0/functions"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 913
    .local v8, "reader":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x46

    invoke-virtual {v8, v2, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 914
    .local v7, "len":I
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v7, -0x1

    invoke-direct {v10, v2, v11, v12}, Ljava/lang/String;-><init>([CII)V

    iput-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    .line 915
    if-nez p1, :cond_6

    .line 916
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 917
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag_mdm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 918
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "modem"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 919
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "serial"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 954
    .end local v2    # "buffer":[C
    .end local v7    # "len":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :goto_1
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->needsOemUsbOverride()Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 956
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 957
    const-string v10, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 958
    const-string v10, "mtp,mass_storage,adb"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 959
    const-string p1, "adb"

    .line 970
    :cond_1
    :goto_2
    const-string v10, "none"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 971
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Failed to disable USB"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 1201
    :cond_2
    :goto_3
    return-void

    .line 900
    :cond_3
    const-string v10, "mass_storage"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 902
    :cond_4
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "rndis"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 904
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 905
    const-string v10, "mass_storage,adb"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 907
    :cond_5
    const-string v10, "mass_storage"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 922
    .restart local v2    # "buffer":[C
    .restart local v7    # "len":I
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_6
    :try_start_1
    const-string v10, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 923
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 924
    const-string v10, "diag_mdm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 925
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 933
    :cond_7
    :goto_4
    const-string v10, "modem"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 934
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 940
    :goto_5
    const-string v10, "serial"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 941
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 946
    .end local v2    # "buffer":[C
    .end local v7    # "len":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 947
    .local v3, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error FileReader reader2"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 928
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "buffer":[C
    .restart local v7    # "len":I
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_8
    :try_start_2
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 929
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "diag_mdm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2602(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 948
    .end local v2    # "buffer":[C
    .end local v7    # "len":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 949
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error Exception"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 936
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "buffer":[C
    .restart local v7    # "len":I
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_9
    :try_start_3
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "modem"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2702(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    goto :goto_5

    .line 943
    :cond_a
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentKernelFunctions:Ljava/lang/String;

    const-string v12, "serial"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2802(Lcom/android/server/usb/UsbDeviceManager;Z)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 960
    .end local v2    # "buffer":[C
    .end local v7    # "len":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :cond_b
    const-string v10, "mass_storage,adb"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 961
    const-string p1, "adb"

    goto/16 :goto_2

    .line 963
    :cond_c
    const-string v10, "adb"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 964
    const-string p1, "mtp,mass_storage,adb"

    .line 965
    :cond_d
    const-string v10, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 978
    :cond_e
    move-object v4, p1

    .line 979
    .local v4, "functions2":Ljava/lang/String;
    const-string v10, "mass_storage"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "mtp,mass_storage"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 981
    :cond_f
    const-string v4, "adboff"

    .line 983
    :cond_10
    const-string v10, "persist.sys.usb.config"

    invoke-static {v10, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set persist.sys.usb.config to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 988
    const/16 v10, 0x46

    :try_start_4
    new-array v2, v10, [C

    .line 989
    .restart local v2    # "buffer":[C
    new-instance v8, Ljava/io/FileReader;

    const-string v10, "/sys/class/android_usb/android0/functions"

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 990
    .restart local v8    # "reader":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x46

    invoke-virtual {v8, v2, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 991
    .restart local v7    # "len":I
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v7, -0x1

    invoke-direct {v10, v2, v11, v12}, Ljava/lang/String;-><init>([CII)V

    iput-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 993
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 994
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v11, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1004
    .end local v2    # "buffer":[C
    .end local v7    # "len":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :goto_6
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[USBNET] Update mDefaultFunctions = mCurrentFunctions = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 996
    .restart local v2    # "buffer":[C
    .restart local v7    # "len":I
    .restart local v8    # "reader":Ljava/io/FileReader;
    :cond_11
    :try_start_5
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string v11, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 998
    .end local v2    # "buffer":[C
    .end local v7    # "len":I
    .end local v8    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 999
    .local v3, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error FileReader reader2"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1000
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    .line 1001
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Error Exception"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 1007
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_12
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to switch persistent USB config to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v10, "persist.sys.usb.config"

    iget-object v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1012
    .end local v4    # "functions2":Ljava/lang/String;
    :cond_13
    if-eqz p1, :cond_14

    .line 1013
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1600()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_14

    .line 1014
    const-string v10, "acm"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1015
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1017
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1027
    :cond_14
    :goto_7
    if-nez p1, :cond_16

    .line 1028
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 1031
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "rndis"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1033
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->DisableLockTetherPerf(Z)V

    .line 1035
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "rndis"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "ipton"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    :cond_15
    const/4 v0, 0x1

    .line 1037
    :goto_8
    if-eqz v0, :cond_16

    .line 1041
    const-wide/16 v10, 0xbb8

    :try_start_6
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1048
    :cond_16
    :goto_9
    const-string v10, "adb"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1049
    const-string p1, "mtp,mass_storage,adb"

    .line 1053
    :cond_17
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->processOemUsbOverride(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, p1}, Lcom/android/server/usb/UsbDeviceManager;->access$1800(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1055
    const-string v10, "rndis"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1056
    const-string v10, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1059
    :cond_18
    const-string v10, "ipton"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 1060
    const-string v10, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1063
    :cond_19
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1600()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1a

    const-string v10, "mtp,adb,mass_storage"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1064
    const-string v10, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1066
    :cond_1a
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1067
    const-string v10, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1073
    :goto_a
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1074
    const-string v10, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1080
    :goto_b
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2700(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1081
    const-string v10, "modem"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1087
    :goto_c
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1088
    const-string v10, "diag_mdm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1093
    :goto_d
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mModemEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2700(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagMdmEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2600(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mSerialEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2800(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1094
    :cond_1b
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[USBNET] skip check ACM due to diag, modem or serial is enabled"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_e
    const-string v10, "cdc_network"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1113
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1115
    :cond_1c
    const-string v10, "ipton"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1116
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1120
    :cond_1d
    const-string v10, "rndis"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1121
    const/4 v5, 0x0

    .line 1122
    .local v5, "iHostType":I
    const/4 v6, 0x0

    .line 1123
    .local v6, "iReadHostCount":I
    :cond_1e
    :goto_f
    if-nez v5, :cond_2c

    const/4 v10, 0x3

    if-ge v6, v10, :cond_2c

    iget-boolean v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v10, :cond_2c

    .line 1125
    :try_start_7
    new-instance v10, Ljava/io/File;

    const-string v11, "/sys/devices/platform/android_usb/os_type"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1126
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[USBNET] iHostType ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1131
    :goto_10
    if-nez v5, :cond_1e

    .line 1132
    add-int/lit8 v6, v6, 0x1

    .line 1133
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[USBNET] can\'t read Host type, wait 500ms and retry: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_f

    .line 1019
    .end local v5    # "iHostType":I
    .end local v6    # "iReadHostCount":I
    :cond_1f
    const-string v10, "acmoff"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1020
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$2402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1022
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    goto/16 :goto_7

    .line 1035
    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 1042
    :catch_4
    move-exception v9

    .line 1043
    .local v9, "sEx":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "InterruptedException"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1069
    .end local v9    # "sEx":Ljava/lang/InterruptedException;
    :cond_21
    const-string v10, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_a

    .line 1076
    :cond_22
    const-string v10, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_b

    .line 1083
    :cond_23
    const-string v10, "modem"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c

    .line 1090
    :cond_24
    const-string v10, "diag_mdm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_d

    .line 1095
    :cond_25
    const-string v10, "accessory"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_26

    const-string v10, "audio_source"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 1097
    :cond_26
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[USBNET] skip check ACM due to in Accessory mode"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1098
    :cond_27
    const-string v10, "ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1099
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[USBNET] skip check ACM due to in PTP mode"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1100
    :cond_28
    const-string v10, "mass_storage,adb"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    const-string v10, "mass_storage"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 1101
    :cond_29
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[USBNET] skip check ACM due to in disk mode"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1104
    :cond_2a
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[USBNET] check if ACM should be enabled"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2400(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1106
    const-string v10, "acm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_e

    .line 1108
    :cond_2b
    const-string v10, "acm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_e

    .line 1127
    .restart local v5    # "iHostType":I
    .restart local v6    # "iReadHostCount":I
    :catch_5
    move-exception v9

    .line 1128
    .local v9, "sEx":Ljava/io/IOException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1139
    .end local v9    # "sEx":Ljava/io/IOException;
    :cond_2c
    const/4 v10, 0x1

    if-ne v5, v10, :cond_30

    .line 1140
    const-string p1, "cdc_ethernet"

    .line 1151
    :cond_2d
    :goto_11
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->bAddPerfMonitor:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3100(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 1153
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "rndis"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1155
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->EnableLockTetherPerf(Z)V

    .line 1160
    :cond_2e
    const-string v10, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2f

    const-string v10, "modem"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1161
    const-string v10, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1162
    const-string v10, "acm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1163
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[USBNET] rndis+diag+modem case, remove mtp and acm, functions= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v5    # "iHostType":I
    .end local v6    # "iReadHostCount":I
    :cond_2f
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_36

    .line 1168
    if-nez v0, :cond_32

    .line 1169
    const-string v10, "none"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_32

    .line 1170
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Failed to disable USB"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1142
    .restart local v5    # "iHostType":I
    .restart local v6    # "iReadHostCount":I
    :cond_30
    const-string v10, "net.usb0.isharing.host"

    const-string v11, "win"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ncm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1143
    const-string p1, "cdc_network"

    .line 1144
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 1145
    const-string v10, "adb"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$3000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_11

    .line 1147
    :cond_31
    const-string v10, "net.usb0.isharing.host"

    const-string v11, "win"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mac"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 1148
    const-string p1, "cdc_ethernet"

    goto/16 :goto_11

    .line 1176
    .end local v5    # "iHostType":I
    .end local v6    # "iReadHostCount":I
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1177
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "send Fake intent while setUsbConfig"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v10, "rndis"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1180
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 1181
    const-string v10, "rndis,mass_storage,adb"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    .line 1185
    :cond_33
    :goto_12
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    goto/16 :goto_3

    .line 1183
    :cond_34
    const-string v10, "rndis,mass_storage"

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto :goto_12

    .line 1187
    :cond_35
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to switch USB config to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1192
    :cond_36
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->miAcmEnabledCfg:I
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$1600()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 1193
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1194
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Re-send Fake intent due to no setUsbConfig"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v11, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1197
    iget-object v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 864
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const-string v0, "sys.usb.config"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final update2(II)V
    .locals 4
    .param p1, "iMsgType"    # I
    .param p2, "delayed"    # I

    .prologue
    .line 805
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[USBNET] update2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 808
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    if-lez p2, :cond_1

    .end local p2    # "delayed":I
    :goto_0
    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 810
    :cond_0
    return-void

    .line 808
    .restart local p2    # "delayed":I
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private updateAdbNotification()V
    .locals 12

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1719
    :cond_1
    const v6, 0x10404ee

    .line 1720
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_2

    .line 1721
    const-string v0, "0"

    const-string v1, "persist.adb.notify"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1725
    .local v10, "r":Landroid/content/res/Resources;
    const v0, 0x10404ee

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1726
    .local v11, "title":Ljava/lang/CharSequence;
    const v0, 0x10404ef

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1729
    .local v7, "message":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1730
    .local v8, "notification":Landroid/app/Notification;
    const v0, 0x1080657

    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 1731
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Landroid/app/Notification;->when:J

    .line 1732
    const/4 v0, 0x2

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1733
    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1734
    const/4 v0, 0x0

    iput v0, v8, Landroid/app/Notification;->defaults:I

    .line 1735
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1736
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/app/Notification;->vibrate:[J

    .line 1737
    const/4 v0, -0x1

    iput v0, v8, Landroid/app/Notification;->priority:I

    .line 1739
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1742
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1744
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v8, Landroid/app/Notification;->color:I

    .line 1746
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1747
    const/4 v0, 0x1

    iput v0, v8, Landroid/app/Notification;->visibility:I

    .line 1748
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$4302(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1749
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x10404ee

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1752
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "r":Landroid/content/res/Resources;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4300(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbNotificationShown:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager;->access$4302(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1754
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x10404ee

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private updateAudioSourceFunction()V
    .locals 10

    .prologue
    .line 1274
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v8, "audio_source"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1276
    .local v3, "enabled":Z
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$3500(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v7

    if-eq v3, v7, :cond_1

    .line 1278
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1280
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1281
    const-string v8, "state"

    if-eqz v3, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    if-eqz v3, :cond_0

    .line 1283
    const/4 v5, 0x0

    .line 1285
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v6, Ljava/util/Scanner;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v6, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 1287
    .local v0, "card":I
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 1288
    .local v1, "device":I
    const-string v7, "card"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1289
    const-string v7, "device"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1293
    if-eqz v6, :cond_0

    .line 1294
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 1298
    .end local v0    # "card":I
    .end local v1    # "device":I
    .end local v6    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1299
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendStickyBroadcast ACTION_USB_STATE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAudioSourceEnabled:Z
    invoke-static {v7, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3502(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1303
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1281
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1290
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 1291
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "could not open audio source PCM file"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1293
    if-eqz v5, :cond_0

    .line 1294
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_1

    .line 1293
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v5, :cond_3

    .line 1294
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v7

    .line 1293
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_3

    .line 1290
    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method private updateCurrentAccessory()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1206
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$3200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryModeRequestTime:J
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$3200(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, 0x1

    .line 1211
    .local v0, "enteringAccessoryMode":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1214
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$3300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1215
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$3300(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1216
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$3400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1238
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enteringAccessoryMode":Z
    :cond_1
    move v0, v1

    .line 1206
    goto :goto_0

    .line 1222
    .restart local v0    # "enteringAccessoryMode":Z
    :cond_2
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1224
    :cond_3
    if-nez v0, :cond_0

    .line 1227
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exited USB accessory mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 1230
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1232
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$3400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1234
    :cond_4
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1235
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$3302(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateUsbNotification()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1654
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUseUsbNotification:Z
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1715
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    const/4 v6, 0x0

    .line 1656
    .local v6, "id":I
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1657
    .local v10, "r":Landroid/content/res/Resources;
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_2

    .line 1658
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1659
    const v6, 0x10404e6

    .line 1678
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eq v6, v0, :cond_0

    .line 1680
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v0, :cond_3

    .line 1681
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1683
    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1686
    :cond_3
    if-eqz v6, :cond_0

    .line 1687
    const v0, 0x10404ea

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1689
    .local v7, "message":Ljava/lang/CharSequence;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1691
    .local v11, "title":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 1692
    .local v8, "notification":Landroid/app/Notification;
    const v0, 0x1080676

    iput v0, v8, Landroid/app/Notification;->icon:I

    .line 1693
    const-wide/16 v12, 0x0

    iput-wide v12, v8, Landroid/app/Notification;->when:J

    .line 1694
    const/4 v0, 0x2

    iput v0, v8, Landroid/app/Notification;->flags:I

    .line 1695
    iput-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1696
    iput v1, v8, Landroid/app/Notification;->defaults:I

    .line 1697
    iput-object v4, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1698
    iput-object v4, v8, Landroid/app/Notification;->vibrate:[J

    .line 1699
    const/4 v0, -0x2

    iput v0, v8, Landroid/app/Notification;->priority:I

    .line 1701
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.UsbSettings"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1704
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1706
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, v8, Landroid/app/Notification;->color:I

    .line 1708
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1709
    const/4 v0, 0x1

    iput v0, v8, Landroid/app/Notification;->visibility:I

    .line 1710
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->access$4100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v6, v8, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1712
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    goto/16 :goto_0

    .line 1661
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "message":Ljava/lang/CharSequence;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1662
    const v6, 0x10404e7

    goto/16 :goto_1

    .line 1664
    :cond_5
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "mass_storage"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1666
    const v6, 0x10404e8

    goto/16 :goto_1

    .line 1668
    :cond_6
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v3, "accessory"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1669
    const v6, 0x10404e9

    goto/16 :goto_1
.end method

.method private updateUsbState()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState(Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method private updateUsbState(Ljava/lang/String;)V
    .locals 6
    .param p1, "SetCurrentFunctions"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1246
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1248
    const-string v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1249
    const-string v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    if-eqz p1, :cond_1

    .line 1252
    const-string v3, "cdc_ethernet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cdc_network"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p1, v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1255
    :cond_0
    const-string v3, "rndis"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1268
    :cond_1
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendStickyBroadcast: broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " configured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; SetCurrentFunctions= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1271
    return-void

    .line 1258
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1260
    aget-object v3, v0, v1

    const-string v4, "cdc_ethernet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1261
    const-string v3, "rndis"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1259
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1263
    :cond_3
    aget-object v3, v0, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 856
    const-string v1, "sys.usb.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 860
    :goto_1
    return v1

    .line 857
    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_1
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method DisableLockTetherPerf(Z)V
    .locals 6
    .param p1, "bRndisTetheringEnabled"    # Z

    .prologue
    .line 1342
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1343
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] Specific product("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") UnTethering, 2 CPU lock released"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1347
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 1350
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1351
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 1357
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_3

    .line 1358
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    .line 1359
    .local v2, "tm":Lcom/htc/service/HtcTelephonyManager;
    if-nez v2, :cond_2

    .line 1360
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] Can\'t new TelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1363
    .local v0, "itc":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1364
    const-string v3, "itc_value"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    :goto_0
    const-string v3, "setITC"

    invoke-virtual {v2, v3, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1370
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    const-string v3, "setITC"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1371
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] Fail to set ITC = 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .end local v0    # "itc":Landroid/os/Bundle;
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :cond_3
    :goto_1
    return-void

    .line 1366
    .restart local v0    # "itc":Landroid/os/Bundle;
    .restart local v2    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :cond_4
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] can\'t new Bundle itc, so doesn\'t set ITC"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1373
    .restart local v1    # "result":Landroid/os/Bundle;
    :cond_5
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] Specific product("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Tethering rndis off, set ITC = 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method EnableLockTetherPerf(Z)V
    .locals 7
    .param p1, "bRndisTetheringEnabled"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1396
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 1397
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] Specific product("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Tethering, 2 CPU lock acquired"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3600(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 1402
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$3700(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 1408
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 1409
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] rndis on, will set ITC = 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v2

    .line 1411
    .local v2, "tm":Lcom/htc/service/HtcTelephonyManager;
    if-nez v2, :cond_2

    .line 1412
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] Can\'t new TelephonyManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1415
    .local v0, "itc":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1416
    const-string v3, "itc_value"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    :goto_0
    const-string v3, "setITC"

    invoke-virtual {v2, v3, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1421
    .local v1, "result":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    const-string v3, "setITC"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1422
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] Fail to set ITC = 1"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v0    # "itc":Landroid/os/Bundle;
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :cond_3
    :goto_1
    return-void

    .line 1418
    .restart local v0    # "itc":Landroid/os/Bundle;
    .restart local v2    # "tm":Lcom/htc/service/HtcTelephonyManager;
    :cond_4
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[USBNET] can\'t new Bundle itc, so doesn\'t set ITC"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    .restart local v1    # "result":Landroid/os/Bundle;
    :cond_5
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USBNET] Specific product("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->isSpecificProduct:I
    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Tethering rndis on, set ITC = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1759
    const-string v1, "  USB Device State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Current Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default Functions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Mass storage backing file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    :goto_0
    return-void

    .line 1772
    :catch_0
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1443
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; mConnected="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mConfiguration="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$3800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$3800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$3800(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/KeyguardManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v7, 0x1

    .line 1447
    .local v7, "isLocked":Z
    :goto_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 1644
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] Unknown handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_0
    :goto_1
    return-void

    .line 1445
    .end local v7    # "isLocked":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1449
    .restart local v7    # "isLocked":Z
    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1450
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1453
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v15, "accessory"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1456
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 1459
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v14, :cond_3

    .line 1461
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET] gotDisconnected, disable acm function flag"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mAcmEnabled:Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$2402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 1467
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1468
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState()V

    .line 1469
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    goto :goto_1

    .line 1449
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1450
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 1474
    :pswitch_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    .line 1478
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1479
    .local v2, "functions":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v8, 0x1

    .line 1480
    .local v8, "makeDefault":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1479
    .end local v8    # "makeDefault":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 1485
    .end local v2    # "functions":Ljava/lang/String;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 1487
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    goto/16 :goto_1

    .line 1492
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v15, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$2202(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v14, :cond_8

    .line 1494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$3400(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v14, v15}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1497
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 1498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDebuggingManager:Lcom/android/server/usb/UsbDebuggingManager;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2300(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mAdbEnabled:Z
    invoke-static {v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 1501
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_a

    .line 1503
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v14, :cond_b

    .line 1504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v15, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 1510
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 1511
    const/16 v14, 0xa

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V

    .line 1515
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbState()V

    goto/16 :goto_1

    .line 1506
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v15, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto :goto_6

    .line 1513
    :cond_c
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET] MSG_BOOT_COMPLETED: skip for not connected"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1520
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "user"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 1522
    .local v13, "userManager":Landroid/os/UserManager;
    const-string v14, "no_usb_file_transfer"

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1523
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Switched to user with DISALLOW_USB_FILE_TRANSFER restriction; disabling USB."

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string v14, "none"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 1526
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    goto/16 :goto_1

    .line 1530
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v15, "mtp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string v15, "ptp"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    :cond_e
    const/4 v9, 0x1

    .line 1533
    .local v9, "mtpActive":Z
    :goto_8
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/16 v15, -0x2710

    if-eq v14, v15, :cond_f

    .line 1534
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Current user switched; resetting USB host stack for MTP"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    const-string v14, "none"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 1536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 1539
    :cond_f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    goto/16 :goto_1

    .line 1530
    .end local v9    # "mtpActive":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_8

    .line 1544
    .end local v13    # "userManager":Landroid/os/UserManager;
    :pswitch_6
    new-instance v3, Landroid/content/Intent;

    const-string v14, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    .local v3, "intent2":Landroid/content/Intent;
    const/high16 v14, 0x20000000

    invoke-virtual {v3, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1546
    const-string v15, "connected"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_11

    const/4 v14, 0x1

    :goto_9
    invoke-virtual {v3, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1548
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] sendStickyBroadcast ACTION_USB_CONNECT2PC: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbDeviceManager;->access$400(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1546
    :cond_11
    const/4 v14, 0x0

    goto :goto_9

    .line 1553
    .end local v3    # "intent2":Landroid/content/Intent;
    :pswitch_7
    new-instance v11, Landroid/content/Intent;

    const-string v14, "com.htc.intent.action.USB_HTC_CARMODE"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v11, "sIntentNcm":Landroid/content/Intent;
    const-string v15, "connected"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, 0x1

    :goto_a
    invoke-virtual {v11, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1556
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] sendBroadcast ACTION_USB_HTC_CARMODE: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbDeviceManager;->access$1000(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1554
    :cond_12
    const/4 v14, 0x0

    goto :goto_a

    .line 1560
    .end local v11    # "sIntentNcm":Landroid/content/Intent;
    :pswitch_8
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.htc.usb.USB_HOST_CABLE"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v4, "intent3":Landroid/content/Intent;
    const-string v15, "connected"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    :goto_b
    invoke-virtual {v4, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1562
    const/high16 v14, 0x20000000

    invoke-virtual {v4, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1564
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] sendStickyBroadcast ACTION_USB_HOST_CABLE: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbDeviceManager;->access$600(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1561
    :cond_13
    const/4 v14, 0x0

    goto :goto_b

    .line 1574
    .end local v4    # "intent3":Landroid/content/Intent;
    :pswitch_9
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET](skip) sendStickyBroadcast ACTION_USB_HOST_MODE"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1578
    :pswitch_a
    new-instance v5, Landroid/content/Intent;

    const-string v14, "com.htc.mirrorlink.hsml.STATE_CHANGED"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v5, "intent5":Landroid/content/Intent;
    const-string v14, "state"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    const/high16 v14, 0x20000000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1582
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] sendStickyBroadcast ACTION_USB_HSML_STATE, mProjector2State: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1100(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v15

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->updateFlingerOptions(I)I
    invoke-static {v14, v15}, Lcom/android/server/usb/UsbDeviceManager;->access$3900(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto/16 :goto_1

    .line 1587
    .end local v5    # "intent5":Landroid/content/Intent;
    :pswitch_b
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.htc.autobot.htcmodeclient.USBPlug"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v6, "intent6":Landroid/content/Intent;
    const-string v14, "IsPlug"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z
    invoke-static {v15}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1589
    const/high16 v14, 0x20000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1591
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] sendStickyBroadcast ACTION_USB_HTCMODE_STATE, isPlug: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbDeviceManager;->access$1200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1595
    .end local v6    # "intent6":Landroid/content/Intent;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->bAddPerfMonitor:Z
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$3100(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1597
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] mUsbPerfLock="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbPerfLock:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbPerfLock:I
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$1300(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_14

    .line 1600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->EnableLockTetherPerf(Z)V

    goto/16 :goto_1

    .line 1604
    :cond_14
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->DisableLockTetherPerf(Z)V

    goto/16 :goto_1

    .line 1611
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1612
    .local v12, "szFunction":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_15

    const/4 v1, 0x1

    .line 1614
    .local v1, "bParam":Z
    :goto_c
    const-string v14, "setUsbStatus"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$4000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v14

    if-nez v14, :cond_16

    .line 1616
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Unable to connect to usbnet service!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1612
    .end local v1    # "bParam":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_c

    .line 1620
    .restart local v1    # "bParam":Z
    :cond_16
    :try_start_0
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] mUsbnetService.setUsbStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$4000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v14

    invoke-interface {v14, v1}, Lcom/htc/net/usbnet/IUsbnetController;->setUsbStatus(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1622
    :catch_0
    move-exception v10

    .line 1623
    .local v10, "sEx":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1627
    .end local v10    # "sEx":Landroid/os/RemoteException;
    :cond_17
    const-string v14, "setUsbDriveStatus"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$4000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v14

    if-nez v14, :cond_18

    .line 1629
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Unable to connect to usbnet service!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1633
    :cond_18
    :try_start_1
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[USBNET] mUsbnetService.setUsbDriveStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbnetService:Lcom/htc/net/usbnet/IUsbnetController;
    invoke-static {v14}, Lcom/android/server/usb/UsbDeviceManager;->access$4000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/htc/net/usbnet/IUsbnetController;

    move-result-object v14

    invoke-interface {v14, v1}, Lcom/htc/net/usbnet/IUsbnetController;->setUsbDriveStatus(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1635
    :catch_1
    move-exception v10

    .line 1636
    .restart local v10    # "sEx":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v14

    const-string v15, "[USBNET] Unable to connect to usbnet service!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1447
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_d
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 791
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 792
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 794
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Z

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 798
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 800
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void

    .line 800
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMessage(IZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .prologue
    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 784
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 786
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 787
    return-void

    .line 785
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 813
    if-nez p1, :cond_0

    .line 814
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[USBNET][updateState] state = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_0
    return-void

    .line 818
    :cond_0
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_connected:I

    .line 819
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_configured:I

    .line 821
    const-string v1, "DISCONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    .line 823
    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    .line 835
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 836
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 838
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 840
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_connected:I

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->last_configured:I

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    if-ne v1, v2, :cond_4

    .line 841
    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    .line 845
    :goto_2
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    if-ne v1, v4, :cond_5

    .line 846
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 824
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const-string v1, "CONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 825
    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    .line 826
    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    goto :goto_1

    .line 827
    :cond_2
    const-string v1, "CONFIGURED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    .line 829
    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->configured:I

    goto :goto_1

    .line 831
    :cond_3
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 843
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_4
    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->intentDelay:I

    goto :goto_2

    .line 848
    :cond_5
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->connected:I

    if-nez v1, :cond_6

    const-wide/16 v2, 0x3e8

    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_3
.end method
