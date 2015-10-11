.class Lcom/android/server/AppOpsService$HintDialog;
.super Landroid/app/AlertDialog;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintDialog"
.end annotation


# static fields
.field static final BUTTON_ALLOW:I = -0x2

.field static final BUTTON_DENY:I = -0x1


# instance fields
.field private final mData:Lcom/android/server/AppOpsService$HintDialogData;

.field private mDontHintAgain:Z

.field private mResult:Z

.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V
    .locals 8
    .param p2, "data"    # Lcom/android/server/AppOpsService$HintDialogData;

    .prologue
    const/high16 v7, 0x20000

    .line 1488
    iput-object p1, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    .line 1489
    iget-object v4, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v5, 0x30b0001

    invoke-direct {p0, v4, v5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1490
    iput-object p2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    .line 1491
    iget-object v4, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v5, 0x30701d9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService$HintDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x3030005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1493
    .local v1, "content":Landroid/view/View;
    const v4, 0x1020014

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1494
    .local v3, "message":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/server/AppOpsService$HintDialog;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    const v4, 0x1020001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1496
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const v4, 0x30701dc

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 1497
    new-instance v4, Lcom/android/server/AppOpsService$HintDialog$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/AppOpsService$HintDialog$1;-><init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1503
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService$HintDialog;->setView(Landroid/view/View;)V

    .line 1504
    new-instance v2, Lcom/android/server/AppOpsService$HintDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AppOpsService$HintDialog$2;-><init>(Lcom/android/server/AppOpsService$HintDialog;Lcom/android/server/AppOpsService;)V

    .line 1510
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v4, -0x2

    iget-object v5, p1, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const v6, 0x30701da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/AppOpsService$HintDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1511
    const/4 v4, -0x1

    const/16 v5, 0xa

    # invokes: Lcom/android/server/AppOpsService;->getDenyButtonString(I)Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/AppOpsService$HintDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1512
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/AppOpsService$HintDialog;->setCancelable(Z)V

    .line 1513
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 1516
    return-void
.end method

.method static synthetic access$202(Lcom/android/server/AppOpsService$HintDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 1480
    iput-boolean p1, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AppOpsService$HintDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 1480
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$HintDialog;->updateOpsMode(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AppOpsService$HintDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;

    .prologue
    .line 1480
    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/AppOpsService$HintDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppOpsService$HintDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 1480
    iput-boolean p1, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    return p1
.end method

.method private getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1541
    const/4 v2, 0x0

    .line 1542
    .local v2, "stringId":I
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v3, v3, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    sparse-switch v3, :sswitch_data_0

    .line 1586
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v4, v4, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1587
    .local v0, "appName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1588
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v3, v3, Lcom/android/server/AppOpsService$HintDialogData;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1590
    :cond_0
    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do you want to grant %s permission to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v4, v4, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "fmt":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1544
    .end local v0    # "appName":Ljava/lang/CharSequence;
    .end local v1    # "fmt":Ljava/lang/String;
    :sswitch_0
    const v2, 0x30701dd

    .line 1545
    goto :goto_0

    .line 1547
    :sswitch_1
    const v2, 0x30701de

    .line 1548
    goto :goto_0

    .line 1550
    :sswitch_2
    const v2, 0x30701df

    .line 1551
    goto :goto_0

    .line 1553
    :sswitch_3
    const v2, 0x30701e0

    .line 1554
    goto :goto_0

    .line 1556
    :sswitch_4
    const v2, 0x30701e1

    .line 1557
    goto :goto_0

    .line 1559
    :sswitch_5
    const v2, 0x30701ea

    .line 1560
    goto :goto_0

    .line 1562
    :sswitch_6
    const v2, 0x30701e2

    .line 1563
    goto :goto_0

    .line 1565
    :sswitch_7
    const v2, 0x30701e3

    .line 1566
    goto :goto_0

    .line 1568
    :sswitch_8
    const v2, 0x30701e4

    .line 1569
    goto :goto_0

    .line 1571
    :sswitch_9
    const v2, 0x30701e8

    .line 1572
    goto :goto_0

    .line 1574
    :sswitch_a
    const v2, 0x30701e9

    .line 1575
    goto :goto_0

    .line 1577
    :sswitch_b
    const v2, 0x30701e5

    .line 1578
    goto :goto_0

    .line 1580
    :sswitch_c
    const v2, 0x30701e6

    .line 1581
    goto :goto_0

    .line 1583
    :sswitch_d
    const v2, 0x30701e7

    goto :goto_0

    .line 1590
    .restart local v0    # "appName":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    iget-object v3, v3, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1542
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x14 -> :sswitch_6
        0x1a -> :sswitch_9
        0x1b -> :sswitch_a
        0x3e8 -> :sswitch_b
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_d
    .end sparse-switch
.end method

.method private updateOpsMode(Z)V
    .locals 3
    .param p1, "allow"    # Z

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v1, v0, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    monitor-enter v1

    .line 1520
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    .line 1521
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget-object v0, v0, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1522
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    # getter for: Lcom/android/server/AppOpsService;->DEBUG_HINT:Z
    invoke-static {}, Lcom/android/server/AppOpsService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    const-string v1, "AppOps"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click hint allow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v2, v2, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    iget v2, v2, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " noAgain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mDontHintAgain:Z

    if-eqz v0, :cond_1

    .line 1529
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/AppOpsService$HintDialog$3;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$HintDialog$3;-><init>(Lcom/android/server/AppOpsService$HintDialog;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1538
    :cond_1
    return-void

    .line 1522
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1524
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$HintDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1599
    iget-object v0, p0, Lcom/android/server/AppOpsService$HintDialog;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mHintDialogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->access$800(Lcom/android/server/AppOpsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1601
    :cond_0
    return-void
.end method

.method getResult()Z
    .locals 1

    .prologue
    .line 1604
    iget-boolean v0, p0, Lcom/android/server/AppOpsService$HintDialog;->mResult:Z

    return v0
.end method
