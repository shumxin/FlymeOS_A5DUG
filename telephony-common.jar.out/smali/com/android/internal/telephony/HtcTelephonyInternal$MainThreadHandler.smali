.class final Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephonyInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p2, "x1"    # Lcom/android/internal/telephony/HtcTelephonyInternal$1;

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 134
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 634
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v63, v0

    .line 636
    .local v63, "commands":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2911
    :cond_0
    :goto_0
    return-void

    .line 638
    :sswitch_0
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 642
    .local v111, "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto :goto_0

    .line 644
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 646
    .local v39, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 647
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 648
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 649
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 654
    :goto_1
    monitor-enter v111

    .line 655
    :try_start_0
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 656
    monitor-exit v111

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v111
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 651
    :cond_1
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 652
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 659
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request cave"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 661
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v110, v0

    check-cast v110, Ljava/lang/String;

    .line 665
    .local v110, "randu":Ljava/lang/String;
    goto/16 :goto_0

    .line 667
    .end local v110    # "randu":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request cave result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 669
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 670
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 671
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 672
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v121, v3

    check-cast v121, [Ljava/lang/String;

    .line 673
    .local v121, "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v3, 0x0

    aget-object v3, v121, v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 685
    .end local v121    # "strArr":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 686
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 689
    :cond_3
    monitor-enter v111

    .line 690
    :try_start_1
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v111
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 695
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 699
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 701
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 703
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 704
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 705
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    .line 706
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 711
    :goto_2
    monitor-enter v111

    .line 712
    :try_start_2
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 713
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v111
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 708
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 709
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 716
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request MD5"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 718
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v62, v3, v4

    .line 719
    .local v62, "chapid":Ljava/lang/String;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v61, v3, v4

    .line 720
    .local v61, "chapchallengelength":Ljava/lang/String;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v60, v3, v4

    .line 721
    .local v60, "chapchallenge":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chapid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallengelength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; chapchallenge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    .end local v60    # "chapchallenge":Ljava/lang/String;
    .end local v61    # "chapchallengelength":Ljava/lang/String;
    .end local v62    # "chapid":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request MD5 result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 728
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 729
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 730
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_6

    .line 731
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v121, v3

    check-cast v121, [Ljava/lang/String;

    .line 732
    .restart local v121    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v3, 0x0

    aget-object v3, v121, v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 745
    .end local v121    # "strArr":[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 746
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 749
    :cond_5
    monitor-enter v111

    .line 750
    :try_start_3
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 751
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v111
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 743
    :cond_6
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 755
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 759
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 761
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_9
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 763
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 764
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 765
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_7

    .line 766
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 772
    :goto_4
    monitor-enter v111

    .line 773
    :try_start_4
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 774
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v111
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 768
    :cond_7
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 769
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 777
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request VPM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 781
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 783
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request VPM result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 785
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 786
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 787
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8

    .line 788
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v121, v3

    check-cast v121, [Ljava/lang/String;

    .line 789
    .restart local v121    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v3, 0x0

    aget-object v3, v121, v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 801
    .end local v121    # "strArr":[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_9

    .line 802
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 805
    :cond_9
    monitor-enter v111

    .line 806
    :try_start_5
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 807
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v111
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 811
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 813
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v109, v0

    check-cast v109, Ljava/lang/String;

    .line 816
    .local v109, "randssd":Ljava/lang/String;
    goto/16 :goto_0

    .line 818
    .end local v109    # "randssd":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 820
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 821
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 822
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a

    .line 823
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v121, v3

    check-cast v121, [Ljava/lang/String;

    .line 824
    .restart local v121    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v3, 0x0

    aget-object v3, v121, v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 835
    .end local v121    # "strArr":[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_b

    .line 836
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 839
    :cond_b
    monitor-enter v111

    .line 840
    :try_start_6
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 841
    monitor-exit v111

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    monitor-exit v111
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    .line 844
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 848
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 850
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw query SSD UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 852
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 853
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 854
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_c

    .line 855
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 861
    :goto_5
    monitor-enter v111

    .line 862
    :try_start_7
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 863
    monitor-exit v111

    goto/16 :goto_0

    :catchall_7
    move-exception v3

    monitor-exit v111
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v3

    .line 857
    :cond_c
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 858
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 866
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_10
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 868
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .line 871
    .local v50, "authbs":Ljava/lang/String;
    goto/16 :goto_0

    .line 878
    .end local v50    # "authbs":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 879
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 880
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 881
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    .line 882
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 889
    :goto_6
    monitor-enter v111

    .line 890
    :try_start_8
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 891
    monitor-exit v111

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v111
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v3

    .line 885
    :cond_d
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    .line 895
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_12
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 900
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    goto/16 :goto_0

    .line 902
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_13
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 904
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 905
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 906
    const/16 v51, 0x0

    .line 908
    .local v51, "authenSupported":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_12

    .line 909
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v131, v3

    check-cast v131, [Ljava/lang/String;

    .line 910
    .local v131, "uimauth":[Ljava/lang/String;
    const-string v132, ""

    .line 911
    .local v132, "uimauthList":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len of uimauth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v131

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/16 v79, 0x0

    .local v79, "i":I
    :goto_7
    move-object/from16 v0, v131

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_11

    .line 913
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v132

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v131, v79

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v132

    .line 914
    aget-object v3, v131, v79

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 915
    add-int/lit8 v51, v51, 0x1

    .line 912
    :cond_e
    :goto_8
    add-int/lit8 v79, v79, 0x1

    goto :goto_7

    .line 916
    :cond_f
    aget-object v3, v131, v79

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 917
    add-int/lit8 v51, v51, 0x2

    goto :goto_8

    .line 918
    :cond_10
    aget-object v3, v131, v79

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "akacave"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 919
    add-int/lit8 v51, v51, 0x4

    goto :goto_8

    .line 922
    :cond_11
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uimauthList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v132

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v79    # "i":I
    .end local v131    # "uimauth":[Ljava/lang/String;
    .end local v132    # "uimauthList":Ljava/lang/String;
    :goto_9
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 928
    monitor-enter v111

    .line 929
    :try_start_9
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit v111

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    monitor-exit v111
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v3

    .line 924
    :cond_12
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 935
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v51    # "authenSupported":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 936
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 938
    .local v42, "argument":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 945
    .local v11, "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v42

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->channel:I

    move-object/from16 v0, v42

    iget v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move-object/from16 v0, v42

    iget v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move-object/from16 v0, v42

    iget v9, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move-object/from16 v0, v42

    iget-object v10, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 952
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v42    # "argument":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 953
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 954
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_13

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_13

    .line 955
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 959
    :goto_a
    monitor-enter v111

    .line 960
    :try_start_a
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 961
    monitor-exit v111

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v111
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v3

    .line 957
    :cond_13
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v111

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 964
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 965
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 966
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 971
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 972
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 973
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannelExtend(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 978
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 979
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 981
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v59, v3

    check-cast v59, [I

    .line 982
    .local v59, "channelInfo":[I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_14

    if-eqz v59, :cond_14

    move-object/from16 v0, v59

    array-length v3, v0

    if-lez v3, :cond_14

    .line 983
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    aget v4, v59, v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 985
    move-object/from16 v0, v59

    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_15

    .line 986
    const/4 v3, 0x1

    aget v65, v59, v3

    .line 987
    .local v65, "datalen":I
    move-object/from16 v0, v59

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, v65

    if-gt v0, v3, :cond_15

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move/from16 v0, v65

    new-array v4, v0, [B

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;[B)[B

    .line 989
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_b
    move/from16 v0, v79

    move/from16 v1, v65

    if-ge v0, v1, :cond_15

    .line 990
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[B

    move-result-object v3

    add-int/lit8 v4, v79, 0x2

    aget v4, v59, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v79

    .line 989
    add-int/lit8 v79, v79, 0x1

    goto :goto_b

    .line 996
    .end local v65    # "datalen":I
    .end local v79    # "i":I
    :cond_14
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 997
    if-eqz v59, :cond_16

    move-object/from16 v0, v59

    array-length v3, v0

    if-lez v3, :cond_16

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    aget v4, v59, v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 1003
    :cond_15
    :goto_c
    monitor-enter v111

    .line 1004
    :try_start_b
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1005
    monitor-exit v111

    goto/16 :goto_0

    :catchall_b
    move-exception v3

    monitor-exit v111
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v3

    .line 1000
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    goto :goto_c

    .line 1008
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v59    # "channelInfo":[I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1009
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1015
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1021
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1022
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1023
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_17

    .line 1024
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1028
    :goto_d
    monitor-enter v111

    .line 1029
    :try_start_c
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1030
    monitor-exit v111

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v111
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v3

    .line 1026
    :cond_17
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_d

    .line 1033
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1034
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v106, v0

    check-cast v106, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    .line 1035
    .local v106, "parameters":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    const/16 v3, 0x97

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1042
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    move-object/from16 v0, v106

    iget v13, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->command:I

    move-object/from16 v0, v106

    iget v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->cla:I

    move-object/from16 v0, v106

    iget-object v15, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->data:Ljava/lang/String;

    move-object/from16 v0, v106

    iget v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p1:I

    move/from16 v16, v0

    move-object/from16 v0, v106

    iget v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p2:I

    move/from16 v17, v0

    move-object/from16 v0, v106

    iget v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;->p3:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v11

    invoke-interface/range {v12 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1051
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v106    # "parameters":Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1052
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1053
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_19

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_19

    .line 1054
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 1065
    :cond_18
    :goto_e
    monitor-enter v111

    :try_start_d
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v111

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v111
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v3

    .line 1057
    :cond_19
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-direct {v4, v5, v6, v3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v111

    iput-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    .line 1059
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_18

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_18

    goto :goto_e

    .line 1072
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1074
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 1075
    .local v7, "uiccAuthParam":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v5, "7FFF"

    const-string v6, "11"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x86

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1084
    .end local v7    # "uiccAuthParam":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1086
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1087
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v80, v0

    check-cast v80, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1088
    .local v80, "iccIoResult":Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1089
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1b

    .line 1090
    new-instance v113, Landroid/os/Bundle;

    invoke-direct/range {v113 .. v113}, Landroid/os/Bundle;-><init>()V

    .line 1091
    .local v113, "result":Landroid/os/Bundle;
    const-string v3, "sw1"

    move-object/from16 v0, v80

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    move-object/from16 v0, v113

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1092
    const-string v3, "sw2"

    move-object/from16 v0, v80

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    move-object/from16 v0, v113

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1093
    const-string v3, "payload"

    move-object/from16 v0, v80

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    move-object/from16 v0, v113

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1094
    move-object/from16 v0, v113

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1099
    .end local v113    # "result":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_1a

    .line 1100
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1104
    :cond_1a
    monitor-enter v111

    .line 1105
    :try_start_e
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1106
    monitor-exit v111

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v111
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v3

    .line 1096
    :cond_1b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1110
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v80    # "iccIoResult":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_1f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1112
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x84

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1116
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_20
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1118
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1119
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1120
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1d

    .line 1121
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1126
    :goto_10
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_1c

    .line 1127
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1131
    :cond_1c
    monitor-enter v111

    .line 1132
    :try_start_f
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1133
    monitor-exit v111

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    monitor-exit v111
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v3

    .line 1123
    :cond_1d
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1138
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_21
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1140
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Landroid/os/Bundle;

    .line 1141
    .local v77, "gsmArgument":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "rand"

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0xb4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1148
    .end local v77    # "gsmArgument":Landroid/os/Bundle;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_22
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SIM_GSM_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1150
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1151
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1152
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1f

    .line 1153
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1158
    :goto_11
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_1e

    .line 1159
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1163
    :cond_1e
    monitor-enter v111

    .line 1164
    :try_start_10
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1165
    monitor-exit v111

    goto/16 :goto_0

    :catchall_10
    move-exception v3

    monitor-exit v111
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v3

    .line 1155
    :cond_1f
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1171
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_23
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1173
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/Bundle;

    .line 1174
    .local v37, "akaArgument":Landroid/os/Bundle;
    const/16 v48, 0x1

    .line 1175
    .local v48, "auth_type":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "rand"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "autn"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0xb0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move/from16 v0, v48

    invoke-interface {v3, v0, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1180
    .end local v37    # "akaArgument":Landroid/os/Bundle;
    .end local v48    # "auth_type":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_24
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_USIM_AKA_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1182
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1183
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1184
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_21

    .line 1185
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1190
    :goto_12
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_20

    .line 1191
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1195
    :cond_20
    monitor-enter v111

    .line 1196
    :try_start_11
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1197
    monitor-exit v111

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    monitor-exit v111
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v3

    .line 1187
    :cond_21
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1203
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_25
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_BTID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1205
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v91, 0x0

    .line 1206
    .local v91, "mBtid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v91

    .line 1207
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getBTID"

    move-object/from16 v0, v91

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    monitor-enter v111

    .line 1210
    :try_start_12
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1211
    monitor-exit v111

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    monitor-exit v111
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v3

    .line 1215
    .end local v91    # "mBtid":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_26
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_RAND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1217
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v97, 0x0

    .line 1218
    .local v97, "mRand":[B
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v97

    .line 1219
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1220
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getRand"

    move-object/from16 v0, v97

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1221
    monitor-enter v111

    .line 1222
    :try_start_13
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1223
    monitor-exit v111

    goto/16 :goto_0

    :catchall_13
    move-exception v3

    monitor-exit v111
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v3

    .line 1227
    .end local v97    # "mRand":[B
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_27
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_KEYLIFETIME"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1229
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v95, 0x0

    .line 1230
    .local v95, "mKeylifetime":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v95

    .line 1231
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1232
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getKeyLifeTime"

    move-object/from16 v0, v95

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    monitor-enter v111

    .line 1234
    :try_start_14
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1235
    monitor-exit v111

    goto/16 :goto_0

    :catchall_14
    move-exception v3

    monitor-exit v111
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v3

    .line 1239
    .end local v95    # "mKeylifetime":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_28
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_HASISIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1241
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v92, 0x0

    .line 1242
    .local v92, "mHasISIM":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v92

    .line 1243
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1244
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "hasISIM"

    move/from16 v0, v92

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1245
    monitor-enter v111

    .line 1246
    :try_start_15
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1247
    monitor-exit v111

    goto/16 :goto_0

    :catchall_15
    move-exception v3

    monitor-exit v111
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v3

    .line 1251
    .end local v92    # "mHasISIM":Z
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_29
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_IS_GBA_SUPPORTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1253
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v93, 0x0

    .line 1254
    .local v93, "mIsGBASupported":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v93

    .line 1255
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1256
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "isGBASupported"

    move/from16 v0, v93

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1257
    monitor-enter v111

    .line 1258
    :try_start_16
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1259
    monitor-exit v111

    goto/16 :goto_0

    :catchall_16
    move-exception v3

    monitor-exit v111
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v3

    .line 1272
    .end local v93    # "mIsGBASupported":Z
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CARD_AUTH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1274
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/os/Bundle;

    .line 1276
    .local v49, "authargument":Landroid/os/Bundle;
    const/16 v84, 0x1

    .line 1277
    .local v84, "invalid":Z
    if-eqz v49, :cond_2b

    .line 1278
    const-string v3, "type"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 1279
    .local v47, "authType":I
    if-ltz v47, :cond_2b

    const/4 v3, 0x4

    move/from16 v0, v47

    if-gt v0, v3, :cond_2b

    .line 1280
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_CARD_AUTH mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_27
    const/4 v3, 0x4

    move/from16 v0, v47

    if-ne v0, v3, :cond_2c

    const-string v3, "nafid"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    .line 1283
    .local v43, "argument1":[B
    :goto_13
    if-eqz v47, :cond_28

    const/4 v3, 0x4

    move/from16 v0, v47

    if-ne v0, v3, :cond_2d

    :cond_28
    const/16 v44, 0x0

    .line 1287
    .local v44, "argument2":[B
    :goto_14
    if-eqz v43, :cond_2e

    if-nez v44, :cond_29

    if-eqz v47, :cond_2a

    const/4 v3, 0x4

    move/from16 v0, v47

    if-eq v0, v3, :cond_2a

    :cond_29
    if-eqz v44, :cond_2e

    if-eqz v47, :cond_2e

    const/4 v3, 0x4

    move/from16 v0, v47

    if-eq v0, v3, :cond_2e

    .line 1290
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ef

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move/from16 v0, v47

    invoke-virtual {v4, v5, v0, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v47

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccAuthenticate(I[B[BLandroid/os/Message;)V

    .line 1293
    const/16 v84, 0x0

    .line 1299
    .end local v43    # "argument1":[B
    .end local v44    # "argument2":[B
    .end local v47    # "authType":I
    :cond_2b
    :goto_15
    if-eqz v84, :cond_0

    .line 1300
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1301
    monitor-enter v111

    .line 1302
    :try_start_17
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1303
    monitor-exit v111

    goto/16 :goto_0

    :catchall_17
    move-exception v3

    monitor-exit v111
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v3

    .line 1282
    .restart local v47    # "authType":I
    :cond_2c
    const-string v3, "rand"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v43

    goto :goto_13

    .line 1283
    .restart local v43    # "argument1":[B
    :cond_2d
    const-string v3, "autn"

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v44

    goto :goto_14

    .line 1295
    .restart local v44    # "argument2":[B
    :cond_2e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "authentication argument is invalid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1308
    .end local v43    # "argument1":[B
    .end local v44    # "argument2":[B
    .end local v47    # "authType":I
    .end local v49    # "authargument":Landroid/os/Bundle;
    .end local v84    # "invalid":Z
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CARD_AUTH_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1310
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1312
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_32

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_32

    .line 1313
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    .line 1314
    .restart local v47    # "authType":I
    new-instance v46, Landroid/os/Bundle;

    invoke-direct/range {v46 .. v46}, Landroid/os/Bundle;-><init>()V

    .line 1315
    .local v46, "authResult":Landroid/os/Bundle;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v126, v0

    check-cast v126, Landroid/os/Bundle;

    .line 1316
    .local v126, "temp":Landroid/os/Bundle;
    const/4 v3, 0x2

    move/from16 v0, v47

    if-ne v0, v3, :cond_2f

    .line 1317
    const-string v3, "res"

    const-string v4, "res"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1318
    const-string v3, "Ck"

    const-string v4, "Ck"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1319
    const-string v3, "Ik"

    const-string v4, "Ik"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1320
    const-string v3, "kc"

    const-string v4, "kc"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1321
    const-string v3, "auts"

    const-string v4, "auts"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1322
    move-object/from16 v0, v46

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1337
    .end local v46    # "authResult":Landroid/os/Bundle;
    .end local v47    # "authType":I
    .end local v126    # "temp":Landroid/os/Bundle;
    :goto_16
    monitor-enter v111

    .line 1338
    :try_start_18
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1339
    monitor-exit v111

    goto/16 :goto_0

    :catchall_18
    move-exception v3

    monitor-exit v111
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v3

    .line 1323
    .restart local v46    # "authResult":Landroid/os/Bundle;
    .restart local v47    # "authType":I
    .restart local v126    # "temp":Landroid/os/Bundle;
    :cond_2f
    const/4 v3, 0x3

    move/from16 v0, v47

    if-ne v0, v3, :cond_30

    .line 1324
    const-string v3, "res"

    const-string v4, "res"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1325
    const-string v3, "auts"

    const-string v4, "auts"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1326
    move-object/from16 v0, v46

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_16

    .line 1327
    :cond_30
    const/4 v3, 0x4

    move/from16 v0, v47

    if-ne v0, v3, :cond_31

    .line 1328
    const-string v3, "ks_naf"

    const-string v4, "res"

    move-object/from16 v0, v126

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1329
    move-object/from16 v0, v46

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_16

    .line 1331
    :cond_31
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_16

    .line 1334
    .end local v46    # "authResult":Landroid/os/Bundle;
    .end local v47    # "authType":I
    .end local v126    # "temp":Landroid/os/Bundle;
    :cond_32
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto/16 :goto_16

    .line 1342
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1345
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_33

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1346
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Bundle;

    .line 1348
    .local v55, "bundle":Landroid/os/Bundle;
    const-string v3, "rand"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v108

    .line 1349
    .local v108, "rand":[B
    const-string v3, "btid"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1350
    .local v54, "btid":Ljava/lang/String;
    const-string v3, "keylifetime"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 1352
    .local v86, "keylifetime":Ljava/lang/String;
    new-instance v105, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v105 .. v105}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1354
    .local v105, "os":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v105

    move-object/from16 v1, v108

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v105

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-virtual/range {v86 .. v86}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v105

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V

    .line 1357
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    const/16 v4, 0x6fd5

    invoke-virtual/range {v105 .. v105}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x6f1

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1361
    .end local v54    # "btid":Ljava/lang/String;
    .end local v55    # "bundle":Landroid/os/Bundle;
    .end local v86    # "keylifetime":Ljava/lang/String;
    .end local v105    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v108    # "rand":[B
    :cond_33
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "request.argument is null or IsimFileHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1364
    monitor-enter v111

    .line 1365
    :try_start_19
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1366
    monitor-exit v111

    goto/16 :goto_0

    :catchall_19
    move-exception v3

    monitor-exit v111
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    throw v3

    .line 1370
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1371
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1372
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    .line 1373
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1374
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :goto_17
    monitor-enter v111

    .line 1385
    :try_start_1a
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1386
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1a
    move-exception v3

    monitor-exit v111
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    throw v3

    .line 1376
    :cond_34
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Bundle;

    .line 1377
    .restart local v55    # "bundle":Landroid/os/Bundle;
    const-string v3, "rand"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 1378
    const-string v3, "btid"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 1379
    const-string v3, "keylifetime"

    const/4 v4, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 1380
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_17

    .line 1392
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v55    # "bundle":Landroid/os/Bundle;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_2e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "C8260A0000"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x89

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1396
    :sswitch_2f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1398
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1399
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$502(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 1401
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_36

    .line 1402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$502(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOldNV_10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ge v3, v4, :cond_37

    .line 1410
    :cond_35
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can not get NV#10"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1411
    monitor-enter v111

    .line 1412
    :try_start_1b
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1413
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1b
    move-exception v3

    monitor-exit v111
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    throw v3

    .line 1405
    :cond_36
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1416
    :cond_37
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x8a

    move-object/from16 v0, v111

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1421
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_30
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1423
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1424
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1425
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_38

    .line 1426
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C8270A0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const/16 v8, 0xe

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x8b

    move-object/from16 v0, v111

    invoke-virtual {v6, v8, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1430
    :cond_38
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1432
    monitor-enter v111

    .line 1433
    :try_start_1c
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1434
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1c
    move-exception v3

    monitor-exit v111
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    throw v3

    .line 1438
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_31
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1440
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1441
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_39

    .line 1442
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_39
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_19
    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1445
    monitor-enter v111

    .line 1446
    :try_start_1d
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1447
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1d
    move-exception v3

    monitor-exit v111
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    throw v3

    .line 1444
    :cond_3a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_19

    .line 1452
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_32
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1454
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v89, v0

    check-cast v89, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 1455
    .local v89, "mAuth1":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v89

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v89

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8d

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1459
    .end local v89    # "mAuth1":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_33
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1461
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v90, v0

    check-cast v90, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    .line 1462
    .local v90, "mAuth2":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, v90

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->rand:[B

    move-object/from16 v0, v90

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x8f

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1466
    .end local v90    # "mAuth2":Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_34
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1468
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v100, v3

    check-cast v100, [B

    .line 1469
    .local v100, "nafid":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x91

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v100

    invoke-interface {v3, v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1473
    .end local v100    # "nafid":[B
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_35
    const-string v3, "HtcTelephonyInternal"

    const-string v4, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1475
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v96, v0

    check-cast v96, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    .line 1478
    .local v96, "mParam":Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 1479
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "FileHandler is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1482
    monitor-enter v111

    .line 1483
    :try_start_1e
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1484
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1e
    move-exception v3

    monitor-exit v111
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    throw v3

    .line 1486
    :cond_3b
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->getIsimFh()Lcom/android/internal/telephony/uicc/IsimFileHandler;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v96

    iget v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v96

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v8, v8, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v9, 0x93

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v3, v4, v5, v6, v8}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1498
    .end local v96    # "mParam":Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1499
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1500
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1501
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3d

    .line 1502
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :goto_1a
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_3c

    .line 1508
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "result is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1512
    :cond_3c
    monitor-enter v111

    .line 1513
    :try_start_1f
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1514
    monitor-exit v111

    goto/16 :goto_0

    :catchall_1f
    move-exception v3

    monitor-exit v111
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    throw v3

    .line 1504
    :cond_3d
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1a

    .line 1520
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1521
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v128, v0

    check-cast v128, Ljava/lang/Integer;

    .line 1522
    .local v128, "type":Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v128

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual/range {v128 .. v128}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x95

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1527
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v128    # "type":Ljava/lang/Integer;
    :sswitch_38
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1529
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1530
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1531
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3e

    .line 1532
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1537
    :goto_1b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v111

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    monitor-enter v111

    .line 1540
    :try_start_20
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1541
    monitor-exit v111

    goto/16 :goto_0

    :catchall_20
    move-exception v3

    monitor-exit v111
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    throw v3

    .line 1534
    :cond_3e
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1b

    .line 1548
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1549
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xac

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1554
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1555
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    const/16 v111, 0x0

    .line 1556
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    if-eqz v39, :cond_3f

    .line 1558
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1559
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v119, 0x0

    .line 1560
    .local v119, "states":[Ljava/lang/String;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v119, v3

    check-cast v119, [Ljava/lang/String;

    .line 1561
    if-eqz v119, :cond_40

    move-object/from16 v0, v119

    array-length v3, v0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_40

    const/16 v3, 0xd

    aget-object v3, v119, v3

    if-eqz v3, :cond_40

    .line 1564
    :try_start_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1565
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getLTELastErrorCode"

    const/16 v5, 0xd

    aget-object v5, v119, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_0

    .line 1578
    .end local v119    # "states":[Ljava/lang/String;
    :cond_3f
    :goto_1c
    monitor-enter v111

    .line 1579
    :try_start_22
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1580
    monitor-exit v111

    goto/16 :goto_0

    :catchall_21
    move-exception v3

    monitor-exit v111
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_21

    throw v3

    .line 1567
    .restart local v119    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v74

    .line 1568
    .local v74, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: error parsing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1572
    .end local v74    # "ex":Ljava/lang/NumberFormatException;
    :cond_40
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT: expected 14 or more strings and got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v119

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1584
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v119    # "states":[Ljava/lang/String;
    :sswitch_3b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1585
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Landroid/os/Bundle;

    .line 1587
    .local v56, "bundle_smart":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v6, 0x6af

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->SetCdmaSmartNetwork(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1591
    .end local v56    # "bundle_smart":Landroid/os/Bundle;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1592
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1593
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_41

    .line 1594
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1596
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setCdmaSmartNetwork"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1619
    :goto_1d
    monitor-enter v111

    .line 1620
    :try_start_23
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1621
    monitor-exit v111

    goto/16 :goto_0

    :catchall_22
    move-exception v3

    monitor-exit v111
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_22

    throw v3

    .line 1600
    :cond_41
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v113, v3

    check-cast v113, [I

    .line 1602
    .local v113, "result":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1603
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "setCdmaSmartNetwork"

    const/4 v4, 0x0

    aget v4, v113, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_42

    const/4 v4, 0x1

    :goto_1e
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1d

    :cond_42
    const/4 v4, 0x0

    goto :goto_1e

    .line 1625
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v113    # "result":[I
    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->GetSmartNetworkStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1629
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1630
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1631
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_43

    .line 1632
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1634
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSmartNetworkStatus"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1643
    :goto_1f
    monitor-enter v111

    .line 1644
    :try_start_24
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit v111

    goto/16 :goto_0

    :catchall_23
    move-exception v3

    monitor-exit v111
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_23

    throw v3

    .line 1638
    :cond_43
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v113, v3

    check-cast v113, [I

    .line 1640
    .restart local v113    # "result":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1641
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getCdmaSmartNetworkStatus"

    const/4 v4, 0x0

    aget v4, v113, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_44

    const/4 v4, 0x1

    :goto_20
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1f

    :cond_44
    const/4 v4, 0x0

    goto :goto_20

    .line 1650
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v113    # "result":[I
    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordSize(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1658
    :sswitch_40
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1659
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1660
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_45

    .line 1661
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1663
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1679
    :goto_21
    monitor-enter v111

    .line 1680
    :try_start_25
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1681
    monitor-exit v111

    goto/16 :goto_0

    :catchall_24
    move-exception v3

    monitor-exit v111
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_24

    throw v3

    .line 1667
    :cond_45
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v113, v3

    check-cast v113, [I

    .line 1668
    .restart local v113    # "result":[I
    if-eqz v113, :cond_46

    move-object/from16 v0, v113

    array-length v3, v0

    if-eqz v3, :cond_46

    .line 1676
    :cond_46
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1677
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordSize"

    const/4 v5, 0x0

    aget v5, v113, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_21

    .line 1684
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v113    # "result":[I
    :sswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1685
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/os/Bundle;

    .line 1687
    .local v57, "bundle_sys_record":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const-string v4, "arg1"

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "arg2"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v6, v6, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v8, 0x6b5

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSysRecordContent(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1693
    .end local v57    # "bundle_sys_record":Landroid/os/Bundle;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1694
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1695
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_47

    .line 1696
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1698
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1732
    :goto_22
    monitor-enter v111

    .line 1733
    :try_start_26
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1734
    monitor-exit v111

    goto/16 :goto_0

    :catchall_25
    move-exception v3

    monitor-exit v111
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_25

    throw v3

    .line 1702
    :cond_47
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1705
    :try_start_27
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object/from16 v112, v0

    .line 1707
    .local v112, "response":[Ljava/lang/Object;
    move-object/from16 v0, v112

    array-length v3, v0

    move-object/from16 v0, v112

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v64

    .line 1708
    .local v64, "copy":[Ljava/lang/Object;
    move-object/from16 v0, v112

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v117, v0

    .line 1709
    .local v117, "sid_array":[I
    move-object/from16 v0, v112

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v102, v0

    .line 1710
    .local v102, "nid_array":[I
    move-object/from16 v0, v112

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v53, v0

    .line 1711
    .local v53, "bsid_array":[I
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_23
    move-object/from16 v0, v64

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_48

    .line 1713
    aget-object v3, v64, v79

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 1714
    .local v75, "field":Ljava/lang/reflect/Field;
    aget-object v3, v64, v79

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v117, v79

    .line 1715
    aget-object v3, v64, v79

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "nid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 1716
    aget-object v3, v64, v79

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v102, v79

    .line 1717
    aget-object v3, v64, v79

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "bsid"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v75

    .line 1718
    aget-object v3, v64, v79

    move-object/from16 v0, v75

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    aput v3, v53, v79

    .line 1711
    add-int/lit8 v79, v79, 0x1

    goto :goto_23

    .line 1721
    .end local v75    # "field":Ljava/lang/reflect/Field;
    :cond_48
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    move-object/from16 v0, v112

    array-length v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1722
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_sid"

    move-object/from16 v0, v117

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1723
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_nid"

    move-object/from16 v0, v102

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1724
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_bsid"

    move-object/from16 v0, v53

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1

    goto/16 :goto_22

    .line 1726
    .end local v53    # "bsid_array":[I
    .end local v64    # "copy":[Ljava/lang/Object;
    .end local v79    # "i":I
    .end local v102    # "nid_array":[I
    .end local v112    # "response":[Ljava/lang/Object;
    .end local v117    # "sid_array":[I
    :catch_1
    move-exception v70

    .line 1728
    .local v70, "e":Ljava/lang/Exception;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCdmaSysRecordContent_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1729
    invoke-virtual/range {v70 .. v70}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_22

    .line 1738
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v70    # "e":Ljava/lang/Exception;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6b7

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->clearCdmaSysRecordContent(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1744
    :sswitch_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1745
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1746
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1747
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_49

    .line 1748
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1753
    :goto_24
    monitor-enter v111

    .line 1754
    :try_start_28
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1755
    monitor-exit v111

    goto/16 :goto_0

    :catchall_26
    move-exception v3

    monitor-exit v111
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_26

    throw v3

    .line 1752
    :cond_49
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "clearCdmaSysRecordContent"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_24

    .line 1762
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_45
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1764
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x99

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestClearLocProcessDB(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1768
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_46
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1770
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1771
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4a

    .line 1772
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_4a
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4b

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_25
    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1775
    monitor-enter v111

    .line 1776
    :try_start_29
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1777
    monitor-exit v111

    goto/16 :goto_0

    :catchall_27
    move-exception v3

    monitor-exit v111
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_27

    throw v3

    .line 1774
    :cond_4b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_25

    .line 1780
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_47
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1782
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Bundle;

    .line 1783
    .restart local v55    # "bundle":Landroid/os/Bundle;
    const-string v3, "index"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1784
    .local v13, "index":I
    const-string v3, "rat"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1785
    .local v14, "rat":I
    const-string v3, "sid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1786
    .local v15, "sid":I
    const-string v3, "nid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1787
    .local v16, "nid":I
    const-string v3, "base_id"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1788
    .local v17, "base_id":I
    const-string v3, "pilot_pn"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1789
    .local v18, "pilot_pn":I
    const-string v3, "neighbor_pilot_list"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    .line 1791
    .local v19, "neighbor_pilot_list":[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " base_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pilot_pn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v12 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLocProcessDB(IIIIII[ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1798
    .end local v13    # "index":I
    .end local v14    # "rat":I
    .end local v15    # "sid":I
    .end local v16    # "nid":I
    .end local v17    # "base_id":I
    .end local v18    # "pilot_pn":I
    .end local v19    # "neighbor_pilot_list":[I
    .end local v55    # "bundle":Landroid/os/Bundle;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_48
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1800
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1801
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4c

    .line 1802
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_4c
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_26
    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1805
    monitor-enter v111

    .line 1806
    :try_start_2a
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1807
    monitor-exit v111

    goto/16 :goto_0

    :catchall_28
    move-exception v3

    monitor-exit v111
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_28

    throw v3

    .line 1804
    :cond_4d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_26

    .line 1810
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_49
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1812
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x9d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetCurrentLoc(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1815
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1817
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1818
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1819
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4f

    .line 1820
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1825
    :goto_27
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_4e

    .line 1826
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1829
    :cond_4e
    monitor-enter v111

    .line 1830
    :try_start_2b
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1831
    monitor-exit v111

    goto/16 :goto_0

    :catchall_29
    move-exception v3

    monitor-exit v111
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_29

    throw v3

    .line 1822
    :cond_4f
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1834
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1836
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v87, Landroid/os/Bundle;

    invoke-direct/range {v87 .. v87}, Landroid/os/Bundle;-><init>()V

    .line 1837
    .local v87, "localbundle":Landroid/os/Bundle;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Integer;

    move-object/from16 v40, v3

    check-cast v40, [Ljava/lang/Integer;

    .line 1838
    .local v40, "arg":[Ljava/lang/Integer;
    const/4 v3, 0x0

    aget-object v71, v40, v3

    .line 1839
    .local v71, "enable":Ljava/lang/Integer;
    const/4 v3, 0x1

    aget-object v103, v40, v3

    .line 1840
    .local v103, "num_neighbor_pilot":Ljava/lang/Integer;
    const/4 v3, 0x2

    aget-object v104, v40, v3

    .line 1841
    .local v104, "num_record":Ljava/lang/Integer;
    const/4 v3, 0x3

    aget-object v127, v40, v3

    .line 1843
    .local v127, "time":Ljava/lang/Integer;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_neighbor_pilot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v103

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num_record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v104

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v127

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v20

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v103 .. v103}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v104 .. v104}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v4, 0x9f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v20 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->requestConfigLocProcessDB(IIIILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1850
    .end local v40    # "arg":[Ljava/lang/Integer;
    .end local v71    # "enable":Ljava/lang/Integer;
    .end local v87    # "localbundle":Landroid/os/Bundle;
    .end local v103    # "num_neighbor_pilot":Ljava/lang/Integer;
    .end local v104    # "num_record":Ljava/lang/Integer;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v127    # "time":Ljava/lang/Integer;
    :sswitch_4c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1852
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1853
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_50

    .line 1854
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    :cond_50
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_51

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_28
    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1857
    monitor-enter v111

    .line 1858
    :try_start_2c
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1859
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2a
    move-exception v3

    monitor-exit v111
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2a

    throw v3

    .line 1856
    :cond_51
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_28

    .line 1864
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIMAX_NAI"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xa1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetWimaxNai(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1869
    :sswitch_4e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1871
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1872
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/4 v3, 0x0

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1873
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_54

    .line 1874
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v121, v3

    check-cast v121, [Ljava/lang/String;

    .line 1875
    .restart local v121    # "strArr":[Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v121

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_29
    move-object/from16 v0, v121

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_52

    .line 1877
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v121, v79

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    add-int/lit8 v79, v79, 0x1

    goto :goto_29

    .line 1879
    :cond_52
    move-object/from16 v0, v121

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1883
    .end local v79    # "i":I
    .end local v121    # "strArr":[Ljava/lang/String;
    :goto_2a
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v3, :cond_53

    .line 1884
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1887
    :cond_53
    monitor-enter v111

    .line 1888
    :try_start_2d
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1889
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2b
    move-exception v3

    monitor-exit v111
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2b

    throw v3

    .line 1881
    :cond_54
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1895
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_4f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1896
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_WIFI_DRX_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xae

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDrxInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1901
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_50
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_WIFI_DRX_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1903
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1904
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1906
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_56

    .line 1907
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v83, v3

    check-cast v83, [I

    .line 1908
    .local v83, "intArr":[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_2b
    move-object/from16 v0, v83

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_55

    .line 1910
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v83, v79

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    add-int/lit8 v79, v79, 0x1

    goto :goto_2b

    .line 1912
    :cond_55
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getDrxInfo"

    move-object/from16 v0, v83

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1918
    .end local v79    # "i":I
    .end local v83    # "intArr":[I
    :goto_2c
    monitor-enter v111

    .line 1919
    :try_start_2e
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1920
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2c
    move-exception v3

    monitor-exit v111
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2c

    throw v3

    .line 1914
    :cond_56
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1925
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_51
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1926
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "send CMD_HTC_REQUEST_GET_POWER_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0xb2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetPowerInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1931
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_52
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "get CMD_HTC_REQUEST_GET_POWER_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 1933
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1934
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1935
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_58

    .line 1936
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v83, v3

    check-cast v83, [I

    .line 1937
    .restart local v83    # "intArr":[I
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/16 v79, 0x0

    .restart local v79    # "i":I
    :goto_2d
    move-object/from16 v0, v83

    array-length v3, v0

    move/from16 v0, v79

    if-ge v0, v3, :cond_57

    .line 1939
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intArr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v83, v79

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    add-int/lit8 v79, v79, 0x1

    goto :goto_2d

    .line 1941
    :cond_57
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPowerInfo"

    move-object/from16 v0, v83

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1946
    .end local v79    # "i":I
    .end local v83    # "intArr":[I
    :goto_2e
    monitor-enter v111

    .line 1947
    :try_start_2f
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1948
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2d
    move-exception v3

    monitor-exit v111
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2d

    throw v3

    .line 1943
    :cond_58
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1951
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1952
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_59

    .line 1953
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 1955
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v29

    .line 1959
    .local v29, "IMEI":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMEI xxxxxxxxxxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1962
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEI"

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    monitor-enter v111

    .line 1964
    :try_start_30
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1965
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2e
    move-exception v3

    monitor-exit v111
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2e

    throw v3

    .line 1971
    .end local v29    # "IMEI":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_54
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 1972
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v30, 0x0

    .line 1973
    .local v30, "IMEISV":Ljava/lang/String;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_5b

    .line 1974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v123

    .line 1975
    .local v123, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-nez v123, :cond_5a

    .line 1976
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v123

    .line 1978
    :cond_5a
    move-object/from16 v0, v123

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_5b

    .line 1979
    check-cast v123, Lcom/android/internal/telephony/PhoneProxy;

    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v123 .. v123}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v123, v3

    check-cast v123, Lcom/android/internal/telephony/PhoneBase;

    .line 1980
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    check-cast v123, Lcom/android/internal/telephony/PhoneBase;

    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v123 .. v123}, Lcom/android/internal/telephony/PhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v30

    .line 1988
    :cond_5b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMEISV xxxxxxxxxxxxxxxx"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 1991
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMEISV"

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    monitor-enter v111

    .line 1993
    :try_start_31
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 1994
    monitor-exit v111

    goto/16 :goto_0

    :catchall_2f
    move-exception v3

    monitor-exit v111
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_2f

    throw v3

    .line 1997
    .end local v30    # "IMEISV":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_55
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2000
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_5c

    .line 2001
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2003
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v31

    .line 2005
    .local v31, "MEID":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_MEID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2007
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getMEID"

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    monitor-enter v111

    .line 2009
    :try_start_32
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2010
    monitor-exit v111

    goto/16 :goto_0

    :catchall_30
    move-exception v3

    monitor-exit v111
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_30

    throw v3

    .line 2013
    .end local v31    # "MEID":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2014
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 2015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2017
    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPRIVersion()Ljava/lang/String;

    move-result-object v33

    .line 2018
    .local v33, "PRI":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2020
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRI"

    move-object/from16 v0, v33

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    monitor-enter v111

    .line 2022
    :try_start_33
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2023
    monitor-exit v111

    goto/16 :goto_0

    :catchall_31
    move-exception v3

    monitor-exit v111
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_31

    throw v3

    .line 2026
    .end local v33    # "PRI":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_57
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2027
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v34

    .line 2028
    .local v34, "PRL":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_PRL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2030
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getPRL"

    move-object/from16 v0, v34

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    monitor-enter v111

    .line 2032
    :try_start_34
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2033
    monitor-exit v111

    goto/16 :goto_0

    :catchall_32
    move-exception v3

    monitor-exit v111
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_32

    throw v3

    .line 2036
    .end local v34    # "PRL":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2037
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v32

    .line 2038
    .local v32, "MIN":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_CDMAMIN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2040
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getCDMAMIN"

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    monitor-enter v111

    .line 2042
    :try_start_35
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2043
    monitor-exit v111

    goto/16 :goto_0

    :catchall_33
    move-exception v3

    monitor-exit v111
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_33

    throw v3

    .line 2046
    .end local v32    # "MIN":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2047
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v28

    .line 2048
    .local v28, "ICCSN":Ljava/lang/String;
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_ICCSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2050
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getICCSN"

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    monitor-enter v111

    .line 2052
    :try_start_36
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2053
    monitor-exit v111

    goto/16 :goto_0

    :catchall_34
    move-exception v3

    monitor-exit v111
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_34

    throw v3

    .line 2059
    .end local v28    # "ICCSN":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5a
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5e

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ba

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getAtrInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2064
    :sswitch_5b
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5f

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_5f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2066
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2067
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2068
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_60

    .line 2069
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    :goto_2f
    monitor-enter v111

    .line 2077
    :try_start_37
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2078
    monitor-exit v111

    goto/16 :goto_0

    :catchall_35
    move-exception v3

    monitor-exit v111
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_35

    throw v3

    .line 2072
    :cond_60
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/lang/String;

    .line 2073
    .local v45, "atrInfo":Ljava/lang/String;
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_ATR_INFO_DONE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_61
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getAtrInfo"

    move-object/from16 v0, v45

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 2084
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "atrInfo":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2085
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v67, 0x0

    .line 2086
    .local v67, "desiredPowerState":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_62

    .line 2087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v118

    .line 2089
    .local v118, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v118, :cond_62

    .line 2090
    invoke-virtual/range {v118 .. v118}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v67

    .line 2093
    .end local v118    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_62
    const/16 v122, 0x0

    .line 2094
    .local v122, "strDesiredPowerState":Ljava/lang/String;
    if-eqz v67, :cond_63

    .line 2095
    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v122

    .line 2097
    :cond_63
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v122

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2099
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "DesiredPowerState"

    move-object/from16 v0, v122

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    monitor-enter v111

    .line 2101
    :try_start_38
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2102
    monitor-exit v111

    goto/16 :goto_0

    :catchall_36
    move-exception v3

    monitor-exit v111
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_36

    throw v3

    .line 2105
    .end local v67    # "desiredPowerState":Ljava/lang/Boolean;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v122    # "strDesiredPowerState":Ljava/lang/String;
    :sswitch_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2106
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_64

    .line 2107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2109
    :cond_64
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getAccountInfos()[Landroid/os/Parcelable;

    move-result-object v35

    .line 2118
    .local v35, "accInfos":[Landroid/os/Parcelable;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "AccountInfos"

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2119
    monitor-enter v111

    .line 2120
    :try_start_39
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2121
    monitor-exit v111

    goto/16 :goto_0

    :catchall_37
    move-exception v3

    monitor-exit v111
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_37

    throw v3

    .line 2126
    .end local v35    # "accInfos":[Landroid/os/Parcelable;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6bf

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetGPSOneMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2129
    :sswitch_5f
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_65

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :cond_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2131
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2132
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2133
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_66

    .line 2134
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    :goto_30
    monitor-enter v111

    .line 2142
    :try_start_3a
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2143
    monitor-exit v111

    goto/16 :goto_0

    :catchall_38
    move-exception v3

    monitor-exit v111
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_38

    throw v3

    .line 2137
    :cond_66
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v26, v3, v4

    .line 2138
    .local v26, "Enable":I
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "GetGpsOneMode"

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_30

    .line 2146
    .end local v26    # "Enable":I
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_60
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2147
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 2148
    .local v27, "Gpsarg":Landroid/os/Bundle;
    const-string v3, "gps"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v76

    .line 2149
    .local v76, "gpsOneMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6c1

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v76

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetGPSOneMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2152
    .end local v27    # "Gpsarg":Landroid/os/Bundle;
    .end local v76    # "gpsOneMode":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_61
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_67

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_67
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2154
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2155
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2156
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_68

    .line 2157
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_68
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "SetGpsOneMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    monitor-enter v111

    .line 2161
    :try_start_3b
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2162
    monitor-exit v111

    goto/16 :goto_0

    :catchall_39
    move-exception v3

    monitor-exit v111
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_39

    throw v3

    .line 2167
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_62
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2168
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2169
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaVoiceCampedOperator"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaVoiceCampedOperator()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$900(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2170
    monitor-enter v111

    .line 2171
    :try_start_3c
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2172
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3a
    move-exception v3

    monitor-exit v111
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3a

    throw v3

    .line 2177
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_63
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2178
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2179
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaSfEuimid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaSfEuimid()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    monitor-enter v111

    .line 2181
    :try_start_3d
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2182
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3b
    move-exception v3

    monitor-exit v111
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3b

    throw v3

    .line 2187
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_64
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2188
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2189
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "CdmaCallFlashCode"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaCallFlashCode()[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2190
    monitor-enter v111

    .line 2191
    :try_start_3e
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2192
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3c
    move-exception v3

    monitor-exit v111
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3c

    throw v3

    .line 2197
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_65
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2198
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Landroid/os/Bundle;

    .line 2199
    .local v41, "arg_set_internal_data_enable_for_mip_screen":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2200
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setInternalDataEnabledForHtcCdmaMIPScreen"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    const-string v6, "setInternalDataEnabledForHtcCdmaMIPScreen"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->setInternalDataEnabledForHtcCdmaMIPScreen(Z)Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1200(Lcom/android/internal/telephony/HtcTelephonyInternal;Z)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2202
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_69

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_INTERNAL_DATA_ENABLE_FOR_MIP_SCREEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_69
    monitor-enter v111

    .line 2204
    :try_start_3f
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2205
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3d
    move-exception v3

    monitor-exit v111
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3d

    throw v3

    .line 2210
    .end local v41    # "arg_set_internal_data_enable_for_mip_screen":Landroid/os/Bundle;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_66
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_NAME_OMA_DM_ENABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2213
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "arg1"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v73

    .line 2214
    .local v73, "enable_from_setOmaDmEnabled":Z
    const/16 v66, 0x0

    .line 2216
    .local v66, "dct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_6a

    .line 2217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2220
    :cond_6a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 2221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v36

    .line 2222
    .local v36, "activePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v36, :cond_6b

    .line 2227
    .end local v36    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_6b
    if-eqz v66, :cond_6c

    .line 2233
    :goto_31
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2234
    monitor-enter v111

    .line 2235
    :try_start_40
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2236
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3e
    move-exception v3

    monitor-exit v111
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_3e

    throw v3

    .line 2230
    :cond_6c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "dct is null, please check"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 2243
    .end local v66    # "dct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v73    # "enable_from_setOmaDmEnabled":Z
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_67
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_ITC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2245
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "itc_value"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v85

    .line 2246
    .local v85, "itc":I
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6e

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_REQUEST_SET_ITC itc_value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v85

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ce

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v85

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setITCValue(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2252
    .end local v85    # "itc":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_68
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6f

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_SET_ITC_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_6f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2254
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2255
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2256
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_70

    const/16 v120, 0x0

    .line 2257
    .local v120, "status":Z
    :goto_32
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setITC"

    move/from16 v0, v120

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2259
    monitor-enter v111

    .line 2260
    :try_start_41
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2261
    monitor-exit v111

    goto/16 :goto_0

    :catchall_3f
    move-exception v3

    monitor-exit v111
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_3f

    throw v3

    .line 2256
    .end local v120    # "status":Z
    :cond_70
    const/16 v120, 0x1

    goto :goto_32

    .line 2268
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_69
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_71

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_SERIAL_NUMBER_WITH_CHAR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_71
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2270
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v81, 0x0

    .line 2271
    .local v81, "iccid":Ljava/lang/String;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_73

    .line 2272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v123

    .line 2273
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v123, :cond_72

    .line 2274
    invoke-interface/range {v123 .. v123}, Lcom/android/internal/telephony/Phone;->getIccSerialNumberwithChar()Ljava/lang/String;

    move-result-object v81

    .line 2277
    :cond_72
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_SERIAL_NUMBER_WITH_CHAR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2280
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getSimSerialNumberwithChar"

    move-object/from16 v0, v81

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_73
    monitor-enter v111

    .line 2285
    :try_start_42
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2286
    monitor-exit v111

    goto/16 :goto_0

    :catchall_40
    move-exception v3

    monitor-exit v111
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_40

    throw v3

    .line 2290
    .end local v81    # "iccid":Ljava/lang/String;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_ALL_DEVICE_ID_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2293
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getAllDeviceInfo()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2295
    monitor-enter v111

    .line 2296
    :try_start_43
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2297
    monitor-exit v111

    goto/16 :goto_0

    :catchall_41
    move-exception v3

    monitor-exit v111
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_41

    throw v3

    .line 2303
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2304
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_74

    .line 2305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    # setter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 2308
    :cond_74
    const/16 v94, 0x0

    .line 2309
    .local v94, "mIsIMSregistered":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_76

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 2310
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMS_REGISTERED from ss of ImsPhone"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_75

    const/16 v94, 0x1

    .line 2317
    :goto_33
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_IMS_REGISTERED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v94

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2319
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "getIMSregistered"

    move/from16 v0, v94

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2320
    monitor-enter v111

    .line 2321
    :try_start_44
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2322
    monitor-exit v111

    goto/16 :goto_0

    :catchall_42
    move-exception v3

    monitor-exit v111
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_42

    throw v3

    .line 2311
    :cond_75
    const/16 v94, 0x0

    goto :goto_33

    .line 2313
    :cond_76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->isIMSregistered()Z

    move-result v94

    .line 2314
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_IMS_REGISTERED from isIMSregistered()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2327
    .end local v94    # "mIsIMSregistered":Z
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6c
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_77

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "set ril.oobe to 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_77
    const-string v3, "ril.oobe"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_78

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_RESET_RIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_78
    const/4 v3, 0x0

    const-string v4, "reset_ril"

    aput-object v4, v63, v3

    .line 2331
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v63, v3

    .line 2332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6e2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2335
    :sswitch_6d
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_79

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_RESET_RIL_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_79
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2338
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2339
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2340
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7a

    const/16 v113, 0x0

    .line 2341
    .local v113, "result":Z
    :goto_34
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "resetRil"

    move/from16 v0, v113

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2343
    monitor-enter v111

    .line 2344
    :try_start_45
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2345
    monitor-exit v111

    goto/16 :goto_0

    :catchall_43
    move-exception v3

    monitor-exit v111
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_43

    throw v3

    .line 2340
    .end local v113    # "result":Z
    :cond_7a
    const/16 v113, 0x1

    goto :goto_34

    .line 2350
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_6e
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_UICC_APP_TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_7b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2353
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v130, Landroid/os/Bundle;

    invoke-direct/range {v130 .. v130}, Landroid/os/Bundle;-><init>()V

    .line 2356
    .local v130, "uiccBundle":Landroid/os/Bundle;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_7d

    .line 2357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v123

    .line 2358
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v123, :cond_7d

    .line 2359
    move-object/from16 v0, v123

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_7c

    .line 2360
    check-cast v123, Lcom/android/internal/telephony/PhoneProxy;

    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v123 .. v123}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v123, v3

    check-cast v123, Lcom/android/internal/telephony/PhoneBase;

    .line 2362
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_7c
    check-cast v123, Lcom/android/internal/telephony/PhoneBase;

    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v123 .. v123}, Lcom/android/internal/telephony/PhoneBase;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v38

    .line 2363
    .local v38, "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    const-string v3, "getUiccAppType"

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v130

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uicc app type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    .end local v38    # "appType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_7d
    monitor-enter v111

    .line 2369
    :try_start_46
    move-object/from16 v0, v130

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2370
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2371
    monitor-exit v111

    goto/16 :goto_0

    :catchall_44
    move-exception v3

    monitor-exit v111
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_44

    throw v3

    .line 2377
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v130    # "uiccBundle":Landroid/os/Bundle;
    :sswitch_6f
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7e

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_SERVICE_DOMAIN_PREF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_7e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2380
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_80

    .line 2381
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v98

    .line 2382
    .local v98, "mode":I
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7f

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_SET_SERVICE_DOMAIN_PREF mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v98

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6e6

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v98

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSrvDomainPref(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2386
    .end local v98    # "mode":I
    :cond_80
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2387
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "setServiceDomainPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2388
    monitor-enter v111

    .line 2389
    :try_start_47
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2390
    monitor-exit v111

    goto/16 :goto_0

    :catchall_45
    move-exception v3

    monitor-exit v111
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_45

    throw v3

    .line 2395
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_70
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_SERVICE_DOMAIN_PREF_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    :cond_81
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2397
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2398
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2399
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "setServiceDomainPref"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_82

    const/4 v4, 0x0

    :goto_35
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2401
    monitor-enter v111

    .line 2402
    :try_start_48
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2403
    monitor-exit v111

    goto/16 :goto_0

    :catchall_46
    move-exception v3

    monitor-exit v111
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_46

    throw v3

    .line 2399
    :cond_82
    const/4 v4, 0x1

    goto :goto_35

    .line 2408
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_71
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_83

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_LTE_BAND_PRIORITY_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ea

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTESupportedBandPriorityList(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2413
    :sswitch_72
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_84

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_LTE_BAND_PRIORITY_LIST_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_84
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2415
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    const/16 v112, 0x0

    .line 2416
    .local v112, "response":[I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_85

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, [I

    if-eqz v3, :cond_85

    .line 2418
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v112, v3

    check-cast v112, [I

    .line 2424
    :goto_36
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2425
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2426
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetLTESupportedBandPriorityList"

    move-object/from16 v0, v112

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2427
    monitor-enter v111

    .line 2428
    :try_start_49
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2429
    monitor-exit v111

    goto/16 :goto_0

    :catchall_47
    move-exception v3

    monitor-exit v111
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_47

    throw v3

    .line 2422
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :cond_85
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_LTE_BAND_PRIORITY_LIST_DONE happen exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2432
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v112    # "response":[I
    :sswitch_73
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_86

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_LTE_BAND_PRIORITY_LIST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_86
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2434
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v52, 0x0

    .line 2435
    .local v52, "band":[I
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-nez v3, :cond_87

    .line 2437
    new-instance v116, Landroid/os/Bundle;

    invoke-direct/range {v116 .. v116}, Landroid/os/Bundle;-><init>()V

    .line 2438
    .local v116, "rst":Landroid/os/Bundle;
    const-string v3, "requestSetLTEBandPriority"

    const/4 v4, 0x0

    move-object/from16 v0, v116

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2439
    move-object/from16 v0, v116

    move-object/from16 v1, v111

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2440
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_LTE_BAND_PRIORITY_LIST bundle is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    monitor-enter v111

    .line 2442
    :try_start_4a
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2443
    monitor-exit v111

    goto/16 :goto_0

    :catchall_48
    move-exception v3

    monitor-exit v111
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_48

    throw v3

    .line 2447
    .end local v116    # "rst":Landroid/os/Bundle;
    :cond_87
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetLTEBandPriority"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v52

    .line 2448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6ec

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLTEBandPriority([ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2453
    .end local v52    # "band":[I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_74
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_88

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_LTE_BAND_PRIORITY_LIST_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_88
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2455
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2456
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2457
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "requestSetLTEBandPriority"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_89

    const/4 v4, 0x0

    :goto_37
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2458
    monitor-enter v111

    .line 2459
    :try_start_4b
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2460
    monitor-exit v111

    goto/16 :goto_0

    :catchall_49
    move-exception v3

    monitor-exit v111
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_49

    throw v3

    .line 2457
    :cond_89
    const/4 v4, 0x1

    goto :goto_37

    .line 2465
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_75
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2466
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    if-eqz v3, :cond_8a

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_8a

    .line 2467
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "profile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 2468
    .local v107, "profile":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6f5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v107

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->getPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2470
    .end local v107    # "profile":[Ljava/lang/String;
    :cond_8a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2471
    monitor-enter v111

    .line 2472
    :try_start_4c
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2473
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4a
    move-exception v3

    monitor-exit v111
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_4a

    throw v3

    .line 2477
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_76
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2478
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2479
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2480
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getPdnSettings2"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2481
    monitor-enter v111

    .line 2482
    :try_start_4d
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2483
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4b
    move-exception v3

    monitor-exit v111
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_4b

    throw v3

    .line 2486
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_77
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2487
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    if-eqz v3, :cond_8b

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_8b

    .line 2488
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "profile"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 2489
    .restart local v107    # "profile":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x6f7

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v107

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/HtcLtePdnSetting;->setPdnSettings2([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2491
    .end local v107    # "profile":[Ljava/lang/String;
    :cond_8b
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2492
    monitor-enter v111

    .line 2493
    :try_start_4e
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2494
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4c
    move-exception v3

    monitor-exit v111
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_4c

    throw v3

    .line 2498
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_78
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2499
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2500
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2501
    monitor-enter v111

    .line 2502
    :try_start_4f
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2503
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4d
    move-exception v3

    monitor-exit v111
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_4d

    throw v3

    .line 2506
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_79
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2507
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 2508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcLtePdnSetting;->resetPdnForSettingsChange()V

    .line 2510
    :cond_8c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2511
    monitor-enter v111

    .line 2512
    :try_start_50
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2513
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4e
    move-exception v3

    monitor-exit v111
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_4e

    throw v3

    .line 2520
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7a
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_EHRPD_DISABLE_CAPABILITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2522
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetEhrpdDisableCapability"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v82

    .line 2523
    .local v82, "index_set_ehrpd":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7d8

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v82

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2526
    .end local v82    # "index_set_ehrpd":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7b
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_EHRPD_DISABLE_CAPABILITY_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2528
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2529
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_38
    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2531
    monitor-enter v111

    .line 2532
    :try_start_51
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2533
    monitor-exit v111

    goto/16 :goto_0

    :catchall_4f
    move-exception v3

    monitor-exit v111
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_4f

    throw v3

    .line 2529
    :cond_8d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_38

    .line 2557
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7c
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DISABLE_CAPABILITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7d6

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2561
    :sswitch_7d
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DISABLE_CAPABILITY_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2563
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2564
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v69, 0x0

    .line 2565
    .local v69, "disable":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8e

    .line 2566
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v69, v3, v4

    .line 2568
    :cond_8e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2569
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetEhrpdDisableCapability"

    move/from16 v0, v69

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2572
    monitor-enter v111

    .line 2573
    :try_start_52
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2574
    monitor-exit v111

    goto/16 :goto_0

    :catchall_50
    move-exception v3

    monitor-exit v111
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_50

    throw v3

    .line 2578
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v69    # "disable":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_7e
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DEVICE_CAPABILITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7d4

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2582
    :sswitch_7f
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_EHRPD_DEVICE_CAPABILITY_RESULT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2584
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2585
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v68, 0x0

    .line 2586
    .local v68, "device_cap":I
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_8f

    .line 2587
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v68, v3, v4

    .line 2589
    :cond_8f
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2590
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetEhrpdDisableCapability"

    move/from16 v0, v68

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2593
    monitor-enter v111

    .line 2594
    :try_start_53
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2595
    monitor-exit v111

    goto/16 :goto_0

    :catchall_51
    move-exception v3

    monitor-exit v111
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_51

    throw v3

    .line 2601
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v68    # "device_cap":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_80
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_ENABLEPS_W2G_HANDOVER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_90
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2604
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_91

    .line 2605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "enable"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enablePS_W2G_Handover(I)V

    .line 2608
    :cond_91
    monitor-enter v111

    .line 2609
    :try_start_54
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2610
    monitor-exit v111

    goto/16 :goto_0

    :catchall_52
    move-exception v3

    monitor-exit v111
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_52

    throw v3

    .line 2613
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_81
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_92

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_ENABLE_REGISTRATION_STATE_WIFI_CALL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_92
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2616
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v72, 0x0

    .line 2617
    .local v72, "enableTo":Z
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_96

    .line 2618
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "on"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    .line 2619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v123

    .line 2621
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_93

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableTo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v72

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_93
    if-eqz v123, :cond_94

    .line 2624
    move-object/from16 v0, v123

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_94

    .line 2625
    check-cast v123, Lcom/android/internal/telephony/PhoneProxy;

    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v123 .. v123}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v123, v3

    check-cast v123, Lcom/android/internal/telephony/PhoneBase;

    .line 2629
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_94
    if-eqz v123, :cond_95

    move-object/from16 v3, v123

    .line 2630
    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v72, :cond_97

    const/4 v3, 0x1

    :goto_39
    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2632
    :cond_95
    if-eqz v72, :cond_96

    .line 2633
    check-cast v123, Lcom/android/internal/telephony/PhoneBase;

    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v123 .. v123}, Lcom/android/internal/telephony/PhoneBase;->wifi2GRetry()V

    .line 2637
    :cond_96
    monitor-enter v111

    .line 2638
    :try_start_55
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2639
    monitor-exit v111

    goto/16 :goto_0

    :catchall_53
    move-exception v3

    monitor-exit v111
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_53

    throw v3

    .line 2630
    .restart local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_97
    const/4 v3, 0x0

    goto :goto_39

    .line 2644
    .end local v72    # "enableTo":Z
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    .end local v123    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :sswitch_82
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_ALL_IMSI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2646
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ProxyController;->getAllIMSI()Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2648
    monitor-enter v111

    .line 2649
    :try_start_56
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2650
    monitor-exit v111

    goto/16 :goto_0

    :catchall_54
    move-exception v3

    monitor-exit v111
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_54

    throw v3

    .line 2655
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_83
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTETxRx_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2657
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_98

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_98

    .line 2658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "networktype"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->networkTypeTorilRadioTechnology(I)I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1400(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    move-result v101

    .line 2659
    .local v101, "networktype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7da

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v101

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetTxRxInfo(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2661
    .end local v101    # "networktype":I
    :cond_98
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2663
    monitor-enter v111

    .line 2664
    :try_start_57
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2665
    monitor-exit v111

    goto/16 :goto_0

    :catchall_55
    move-exception v3

    monitor-exit v111
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_55

    throw v3

    .line 2669
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_84
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTETxRx_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2671
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2672
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2673
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_99

    .line 2674
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getTxRxPowerInfo"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2679
    :goto_3a
    monitor-enter v111

    .line 2680
    :try_start_58
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2681
    monitor-exit v111

    goto/16 :goto_0

    :catchall_56
    move-exception v3

    monitor-exit v111
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_56

    throw v3

    .line 2676
    :cond_99
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 2684
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_85
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2686
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_9a

    .line 2687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "networktype"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/internal/telephony/HtcTelephonyInternal;->networkTypeTorilRadioTechnology(I)I
    invoke-static {v4, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$1400(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I

    move-result v101

    .line 2688
    .restart local v101    # "networktype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/16 v5, 0x7dc

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move/from16 v0, v101

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRfBandInfo(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2690
    .end local v101    # "networktype":I
    :cond_9a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2692
    monitor-enter v111

    .line 2693
    :try_start_59
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2694
    monitor-exit v111

    goto/16 :goto_0

    :catchall_57
    move-exception v3

    monitor-exit v111
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_57

    throw v3

    .line 2698
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_86
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2700
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2701
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2702
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_9b

    .line 2703
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "getRFBandInfo"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2709
    :goto_3b
    monitor-enter v111

    .line 2710
    :try_start_5a
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2711
    monitor-exit v111

    goto/16 :goto_0

    :catchall_58
    move-exception v3

    monitor-exit v111
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_58

    throw v3

    .line 2705
    :cond_9b
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2716
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_87
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_9c

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_SEND_AT_PUSHMAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :cond_9c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2718
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9d

    .line 2719
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/Bundle;

    .line 2720
    .local v58, "bundleargu":Landroid/os/Bundle;
    const-string v3, "type"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v129

    .line 2721
    .local v129, "type1":I
    const-string v3, "value"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v133

    .line 2722
    .local v133, "value":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_9d

    .line 2723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v129

    move/from16 v1, v133

    invoke-interface {v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 2727
    .end local v58    # "bundleargu":Landroid/os/Bundle;
    .end local v129    # "type1":I
    .end local v133    # "value":I
    :cond_9d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2729
    monitor-enter v111

    .line 2730
    :try_start_5b
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2731
    monitor-exit v111

    goto/16 :goto_0

    :catchall_59
    move-exception v3

    monitor-exit v111
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_59

    throw v3

    .line 2736
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_88
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_MULTIRAB_TRAFFIC_THROTTLING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2738
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9e

    .line 2739
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/Bundle;

    .line 2740
    .restart local v58    # "bundleargu":Landroid/os/Bundle;
    const-string v3, "module"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v99

    .line 2741
    .local v99, "module":I
    const-string v3, "mode"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v98

    .line 2742
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_9e

    .line 2743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v99

    move/from16 v1, v98

    invoke-interface {v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetMultiRABTrafficThrottling(IILandroid/os/Message;)V

    .line 2746
    .end local v58    # "bundleargu":Landroid/os/Bundle;
    .end local v98    # "mode":I
    .end local v99    # "module":I
    :cond_9e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2747
    monitor-enter v111

    .line 2748
    :try_start_5c
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2749
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5a
    move-exception v3

    monitor-exit v111
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_5a

    throw v3

    .line 2754
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_89
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_SET_FAST_DORMANCY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2756
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    if-eqz v3, :cond_9f

    .line 2757
    move-object/from16 v0, v111

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Landroid/os/Bundle;

    .line 2758
    .restart local v58    # "bundleargu":Landroid/os/Bundle;
    const-string v3, "module"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v99

    .line 2759
    .restart local v99    # "module":I
    const-string v3, "mode"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v98

    .line 2760
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 2761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v99

    move/from16 v1, v98

    invoke-interface {v3, v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2765
    .end local v58    # "bundleargu":Landroid/os/Bundle;
    .end local v98    # "mode":I
    .end local v99    # "module":I
    :cond_9f
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2766
    monitor-enter v111

    .line 2767
    :try_start_5d
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2768
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5b
    move-exception v3

    monitor-exit v111
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_5b

    throw v3

    .line 2773
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8a
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a0

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_REQUEST_GET_CD_PIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_a0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2776
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0x7e7

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2777
    .restart local v11    # "onCompleted":Landroid/os/Message;
    const/4 v3, 0x0

    const-string v4, "UNIAT"

    aput-object v4, v63, v3

    .line 2778
    const/4 v3, 0x1

    const-string v4, "at@carddetect=1\r"

    aput-object v4, v63, v3

    .line 2779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-interface {v3, v0, v11}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2782
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8b
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a1

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_REQUEST_GET_CD_PIN_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_a1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2785
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2786
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2788
    if-eqz v39, :cond_a3

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_a3

    .line 2789
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_REQUEST_GET_CD_PIN_DONE ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetCDPin"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2809
    :cond_a2
    :goto_3c
    monitor-enter v111

    .line 2810
    :try_start_5e
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2811
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5c
    move-exception v3

    monitor-exit v111
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_5c

    throw v3

    .line 2792
    :cond_a3
    if-eqz v39, :cond_a6

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_a6

    .line 2793
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v114, v3

    check-cast v114, [Ljava/lang/String;

    .line 2794
    .local v114, "results":[Ljava/lang/String;
    const/16 v115, 0x0

    .line 2795
    .local v115, "ret":I
    const/4 v3, 0x2

    move-object/from16 v0, v114

    array-length v4, v0

    if-eq v3, v4, :cond_a5

    .line 2796
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid result format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v114 .. v114}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_a4
    :goto_3d
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetCDPin"

    move/from16 v0, v115

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2803
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_REQUEST_GET_CD_PIN_DONE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v115

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2798
    :cond_a5
    const/4 v3, 0x1

    aget-object v3, v114, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a4

    const/4 v3, 0x1

    aget-object v3, v114, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a4

    .line 2799
    const/4 v3, 0x1

    aget-object v3, v114, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v115

    goto :goto_3d

    .line 2805
    .end local v114    # "results":[Ljava/lang/String;
    .end local v115    # "ret":I
    :cond_a6
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetCDPin"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2806
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "no result, CMD_REQUEST_GET_CD_PIN_DONE : 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 2815
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8c
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a7

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_PASS_HOTSPOT_STATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_a7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2817
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2819
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v78

    .line 2820
    .local v78, "hotspot":I
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a8

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_PASS_HOTSPOT_STATE hotspot state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v78

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_a8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 2823
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v124

    .line 2824
    .local v124, "targetPhone1":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v125

    .line 2825
    .local v125, "targetPhone2":Lcom/android/internal/telephony/Phone;
    if-eqz v124, :cond_a9

    .line 2826
    move-object/from16 v0, v124

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_a9

    .line 2827
    check-cast v124, Lcom/android/internal/telephony/PhoneProxy;

    .end local v124    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v124 .. v124}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v124, v3

    check-cast v124, Lcom/android/internal/telephony/PhoneBase;

    .line 2830
    .restart local v124    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    :cond_a9
    if-eqz v124, :cond_aa

    .line 2831
    check-cast v124, Lcom/android/internal/telephony/PhoneBase;

    .end local v124    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v124

    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    move/from16 v0, v78

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestPassHotSpotState(ILandroid/os/Message;)V

    .line 2834
    :cond_aa
    if-eqz v125, :cond_ab

    .line 2835
    move-object/from16 v0, v125

    instance-of v3, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v3, :cond_ab

    .line 2836
    check-cast v125, Lcom/android/internal/telephony/PhoneProxy;

    .end local v125    # "targetPhone2":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v125 .. v125}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v125, v3

    check-cast v125, Lcom/android/internal/telephony/PhoneBase;

    .line 2839
    .restart local v125    # "targetPhone2":Lcom/android/internal/telephony/Phone;
    :cond_ab
    if-eqz v125, :cond_ac

    .line 2840
    check-cast v125, Lcom/android/internal/telephony/PhoneBase;

    .end local v125    # "targetPhone2":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, v125

    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    move/from16 v0, v78

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestPassHotSpotState(ILandroid/os/Message;)V

    .line 2847
    :cond_ac
    :goto_3e
    monitor-enter v111

    .line 2848
    :try_start_5f
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2849
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5d
    move-exception v3

    monitor-exit v111
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_5d

    throw v3

    .line 2843
    :cond_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    if-eqz v3, :cond_ac

    .line 2844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v78

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestPassHotSpotState(ILandroid/os/Message;)V

    goto :goto_3e

    .line 2855
    .end local v78    # "hotspot":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8d
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_ae

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_GET_LTE_BAND_TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_ae
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2857
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    const/16 v3, 0xda

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2858
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-interface {v3, v11}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLteBandType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2861
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8e
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_af

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_GET_LTE_BAND_TYPE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_af
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2863
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2864
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2865
    if-eqz v39, :cond_b1

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b1

    .line 2866
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_LTE_BAND_TYPE_DONE ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetLteBandType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2868
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b0

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "-CMD_GET_LTE_BAND_TYPE_DONE:LTE_BAND_TYPE_INVALID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_b0
    :goto_3f
    monitor-enter v111

    .line 2882
    :try_start_60
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2883
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5e
    move-exception v3

    monitor-exit v111
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_5e

    throw v3

    .line 2870
    :cond_b1
    if-eqz v39, :cond_b2

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_b2

    .line 2872
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "requestGetLteBandType"

    move-object/from16 v0, v39

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2873
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b0

    const-string v4, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-CMD_GET_LTE_BAND_TYPE_DONE:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v6, 0x0

    aget v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 2877
    :cond_b2
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestGetLteBandType"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2878
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b0

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "-CMD_GET_LTE_BAND_TYPE_DONE:LTE_BAND_TYPE_INVALID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 2886
    .end local v39    # "ar":Landroid/os/AsyncResult;
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_8f
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b3

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_SET_LTE_BAND_TYPE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :cond_b3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2888
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "band"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v88

    .line 2889
    .local v88, "lteband":I
    const/16 v3, 0xdc

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2890
    .restart local v11    # "onCompleted":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephonyInternal;

    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move/from16 v0, v88

    invoke-interface {v3, v0, v11}, Lcom/android/internal/telephony/CommandsInterface;->requestSetLteBandType(ILandroid/os/Message;)V

    .line 2891
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-CMD_SET_LTE_BAND_TYPE band="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v88

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2894
    .end local v11    # "onCompleted":Landroid/os/Message;
    .end local v88    # "lteband":I
    .end local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    :sswitch_90
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b4

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "+CMD_SET_LTE_BAND_TYPE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2895
    :cond_b4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/AsyncResult;

    .line 2896
    .restart local v39    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v111, v0

    check-cast v111, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    .line 2897
    .restart local v111    # "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v111

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    .line 2898
    if-eqz v39, :cond_b6

    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_b6

    .line 2899
    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_SET_LTE_BAND_TYPE_DONE ar.exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetLteBandType"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2905
    :cond_b5
    :goto_40
    monitor-enter v111

    .line 2906
    :try_start_61
    invoke-virtual/range {v111 .. v111}, Ljava/lang/Object;->notifyAll()V

    .line 2907
    monitor-exit v111

    goto/16 :goto_0

    :catchall_5f
    move-exception v3

    monitor-exit v111
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_5f

    throw v3

    .line 2902
    :cond_b6
    move-object/from16 v0, v111

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "requestSetLteBandType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2903
    # getter for: Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyInternal;->access$300()Z

    move-result v3

    if-eqz v3, :cond_b5

    const-string v3, "HtcTelephonyInternal"

    const-string v4, "-CMD_SET_LTE_BAND_TYPE_DONE:true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_a
        0x6d -> :sswitch_b
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_11
        0x76 -> :sswitch_12
        0x77 -> :sswitch_13
        0x7d -> :sswitch_14
        0x7e -> :sswitch_15
        0x7f -> :sswitch_16
        0x80 -> :sswitch_18
        0x81 -> :sswitch_19
        0x82 -> :sswitch_1a
        0x83 -> :sswitch_1f
        0x84 -> :sswitch_20
        0x85 -> :sswitch_1d
        0x86 -> :sswitch_1e
        0x88 -> :sswitch_2e
        0x89 -> :sswitch_2f
        0x8a -> :sswitch_30
        0x8b -> :sswitch_31
        0x8c -> :sswitch_32
        0x8d -> :sswitch_36
        0x8e -> :sswitch_33
        0x8f -> :sswitch_36
        0x90 -> :sswitch_34
        0x91 -> :sswitch_36
        0x92 -> :sswitch_35
        0x93 -> :sswitch_36
        0x94 -> :sswitch_37
        0x95 -> :sswitch_38
        0x96 -> :sswitch_1b
        0x97 -> :sswitch_1c
        0x98 -> :sswitch_45
        0x99 -> :sswitch_46
        0x9a -> :sswitch_47
        0x9b -> :sswitch_48
        0x9c -> :sswitch_49
        0x9d -> :sswitch_4a
        0x9e -> :sswitch_4b
        0x9f -> :sswitch_4c
        0xa0 -> :sswitch_4d
        0xa1 -> :sswitch_4e
        0xab -> :sswitch_39
        0xac -> :sswitch_3a
        0xad -> :sswitch_4f
        0xae -> :sswitch_50
        0xaf -> :sswitch_23
        0xb0 -> :sswitch_24
        0xb1 -> :sswitch_51
        0xb2 -> :sswitch_52
        0xb3 -> :sswitch_21
        0xb4 -> :sswitch_22
        0xc8 -> :sswitch_53
        0xc9 -> :sswitch_54
        0xca -> :sswitch_55
        0xcb -> :sswitch_56
        0xcc -> :sswitch_57
        0xcd -> :sswitch_58
        0xce -> :sswitch_59
        0xd6 -> :sswitch_66
        0xd7 -> :sswitch_6b
        0xd9 -> :sswitch_8d
        0xda -> :sswitch_8e
        0xdb -> :sswitch_8f
        0xdc -> :sswitch_90
        0x6ae -> :sswitch_3b
        0x6af -> :sswitch_3c
        0x6b0 -> :sswitch_3d
        0x6b1 -> :sswitch_3e
        0x6b2 -> :sswitch_3f
        0x6b3 -> :sswitch_40
        0x6b4 -> :sswitch_41
        0x6b5 -> :sswitch_42
        0x6b6 -> :sswitch_43
        0x6b7 -> :sswitch_44
        0x6b9 -> :sswitch_5a
        0x6ba -> :sswitch_5b
        0x6bc -> :sswitch_5c
        0x6bd -> :sswitch_5d
        0x6be -> :sswitch_5e
        0x6bf -> :sswitch_5f
        0x6c0 -> :sswitch_60
        0x6c1 -> :sswitch_61
        0x6c2 -> :sswitch_62
        0x6c3 -> :sswitch_63
        0x6c4 -> :sswitch_64
        0x6c9 -> :sswitch_65
        0x6ca -> :sswitch_17
        0x6cd -> :sswitch_67
        0x6ce -> :sswitch_68
        0x6d7 -> :sswitch_69
        0x6e1 -> :sswitch_6c
        0x6e2 -> :sswitch_6d
        0x6e4 -> :sswitch_6e
        0x6e5 -> :sswitch_6f
        0x6e6 -> :sswitch_70
        0x6e7 -> :sswitch_8c
        0x6e9 -> :sswitch_71
        0x6ea -> :sswitch_72
        0x6eb -> :sswitch_73
        0x6ec -> :sswitch_74
        0x6ee -> :sswitch_2a
        0x6ef -> :sswitch_2b
        0x6f0 -> :sswitch_2c
        0x6f1 -> :sswitch_2d
        0x6f4 -> :sswitch_75
        0x6f5 -> :sswitch_76
        0x6f6 -> :sswitch_77
        0x6f7 -> :sswitch_78
        0x6f8 -> :sswitch_79
        0x6f9 -> :sswitch_80
        0x6fa -> :sswitch_81
        0x6fc -> :sswitch_6a
        0x6fe -> :sswitch_82
        0x709 -> :sswitch_25
        0x70a -> :sswitch_26
        0x70b -> :sswitch_27
        0x70c -> :sswitch_28
        0x70d -> :sswitch_29
        0x7d3 -> :sswitch_7e
        0x7d4 -> :sswitch_7f
        0x7d5 -> :sswitch_7c
        0x7d6 -> :sswitch_7d
        0x7d7 -> :sswitch_7a
        0x7d8 -> :sswitch_7b
        0x7d9 -> :sswitch_83
        0x7da -> :sswitch_84
        0x7db -> :sswitch_85
        0x7dc -> :sswitch_86
        0x7dd -> :sswitch_87
        0x7de -> :sswitch_88
        0x7df -> :sswitch_89
        0x7e6 -> :sswitch_8a
        0x7e7 -> :sswitch_8b
    .end sparse-switch
.end method
