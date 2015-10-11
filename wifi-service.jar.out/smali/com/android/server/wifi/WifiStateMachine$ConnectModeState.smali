.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9181
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 96
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v92

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move-object/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9193
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v91, v0

    sparse-switch v91, :sswitch_data_0

    .line 10162
    const/16 v91, 0x0

    .line 10164
    :goto_0
    return v91

    .line 9195
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$18202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9196
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 9197
    .local v25, "bssid":Ljava/lang/String;
    if-eqz v25, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v91

    if-eqz v91, :cond_1

    .line 9199
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$12600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v25

    .line 9201
    :cond_1
    if-eqz v25, :cond_2

    .line 9203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v92, v0

    monitor-enter v92

    .line 9204
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v93

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v94, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v94 .. v94}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v94

    const/16 v95, 0x0

    move-object/from16 v0, v93

    move/from16 v1, v94

    move-object/from16 v2, v25

    move/from16 v3, v95

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v93

    move-object/from16 v0, v91

    move/from16 v1, v93

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9206
    monitor-exit v92
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9208
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v91

    const v92, 0x2402b

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 10164
    .end local v25    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v91, 0x1

    goto :goto_0

    .line 9206
    .restart local v25    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v91

    :try_start_1
    monitor-exit v92
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v91

    .line 9213
    .end local v25    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleAssociateRejectEvent(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9216
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleAssociatedWithEvent(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9221
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v91

    const v92, 0x24007

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 9234
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    const/16 v93, 0x0

    const-string v94, "IDPW_FAILED"

    const/16 v95, 0x0

    invoke-virtual/range {v91 .. v95}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 9235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v91

    const v92, 0x2406d

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 9240
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Ljava/lang/String;

    .line 9241
    .local v73, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v91, v0

    const v92, 0x2400d

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_4

    const-string v32, "temp-disabled"

    .line 9243
    .local v32, "en":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "ConnectModeState SSID state="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " nid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v93, v0

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " ["

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, "]"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v92, v0

    monitor-enter v92

    .line 9246
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v93

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v94, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v91, v0

    const v95, 0x2400e

    move/from16 v0, v91

    move/from16 v1, v95

    if-ne v0, v1, :cond_5

    const/16 v91, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v95, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v95 .. v95}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v95

    invoke-virtual/range {v95 .. v95}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v95

    move-object/from16 v0, v93

    move/from16 v1, v94

    move/from16 v2, v91

    move-object/from16 v3, v73

    move-object/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 9248
    monitor-exit v92

    goto/16 :goto_1

    :catchall_1
    move-exception v91

    monitor-exit v92
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v91

    .line 9241
    .end local v32    # "en":Ljava/lang/String;
    :cond_4
    const-string v32, "re-enabled"

    goto/16 :goto_2

    .line 9246
    .restart local v32    # "en":Ljava/lang/String;
    :cond_5
    const/16 v91, 0x0

    goto :goto_3

    .line 9251
    .end local v32    # "en":Ljava/lang/String;
    .end local v73    # "substr":Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$13400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v70

    .line 9254
    .local v70, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v70 .. v70}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v91

    if-nez v91, :cond_7

    .line 9255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v91

    sget-object v92, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v91

    move-object/from16 v1, v92

    if-eq v0, v1, :cond_6

    .line 9259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Call handleNetworkDisconnect(message) in ConnectModeState, WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9264
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Detected an interface down, restart driver"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$13600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x2000d

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 9275
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v91

    if-nez v91, :cond_3

    sget-object v91, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v70

    move-object/from16 v1, v91

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$10600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v91

    sget-object v92, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v91

    move-object/from16 v1, v92

    if-eq v0, v1, :cond_3

    .line 9277
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9281
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9288
    .end local v70    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v91, v0

    const/16 v92, 0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_9

    .line 9289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 9292
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 9293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 9297
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/net/wifi/WifiConfiguration;

    .line 9298
    .local v28, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v92, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v28

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v56

    .line 9299
    .local v56, "res":I
    if-gez v56, :cond_b

    .line 9300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9321
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x20034

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v56

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9302
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v29

    .line 9303
    .local v29, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v29, :cond_a

    if-eqz v28, :cond_a

    .line 9304
    move-object/from16 v0, v29

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v91, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v92, v0

    move/from16 v0, v91

    move/from16 v1, v92

    if-ge v0, v1, :cond_a

    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v91, v0

    const/16 v92, 0x2

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_a

    .line 9309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v91

    move-object/from16 v0, v91

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v92, v0

    add-int/lit8 v92, v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, v91

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, -0x3

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    invoke-virtual/range {v91 .. v95}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_4

    .line 9324
    .end local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v29    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v56    # "res":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v50

    .line 9325
    .local v50, "ok":Z
    if-nez v50, :cond_c

    .line 9326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9328
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v93, v0

    if-eqz v50, :cond_d

    const/16 v91, 0x1

    :goto_5
    move-object/from16 v0, v92

    move-object/from16 v1, p1

    move/from16 v2, v93

    move/from16 v3, v91

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_d
    const/16 v91, -0x1

    goto :goto_5

    .line 9331
    .end local v50    # "ok":Z
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v91, v0

    const/16 v92, 0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_10

    const/16 v51, 0x1

    .line 9334
    .local v51, "others":Z
    :goto_6
    if-eqz v51, :cond_e

    .line 9335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    const/16 v93, 0x1

    const/16 v94, 0x0

    invoke-virtual/range {v91 .. v94}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v91

    move-object/from16 v0, v91

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v92, v0

    add-int/lit8 v92, v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, v91

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9347
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    const-string v93, "any"

    invoke-virtual/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v92

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v93, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v91, v0

    const/16 v94, 0x1

    move/from16 v0, v91

    move/from16 v1, v94

    if-ne v0, v1, :cond_11

    const/16 v91, 0x1

    :goto_7
    move-object/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v50

    .line 9350
    .restart local v50    # "ok":Z
    if-nez v50, :cond_12

    .line 9351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9361
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v93, v0

    if-eqz v50, :cond_13

    const/16 v91, 0x1

    :goto_9
    move-object/from16 v0, v92

    move-object/from16 v1, p1

    move/from16 v2, v93

    move/from16 v3, v91

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9331
    .end local v50    # "ok":Z
    .end local v51    # "others":Z
    :cond_10
    const/16 v51, 0x0

    goto/16 :goto_6

    .line 9349
    .restart local v51    # "others":Z
    :cond_11
    const/16 v91, 0x0

    goto :goto_7

    .line 9356
    .restart local v50    # "ok":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 9357
    .local v33, "enableconfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v33, :cond_f

    .line 9358
    const/16 v91, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_8

    .line 9361
    .end local v33    # "enableconfig":Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const/16 v91, -0x1

    goto :goto_9

    .line 9364
    .end local v50    # "ok":Z
    .end local v51    # "others":Z
    :sswitch_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v80

    .line 9365
    .local v80, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v92

    sub-long v92, v80, v92

    const-wide/32 v94, 0x927c0

    cmp-long v91, v92, v94

    if-lez v91, :cond_3

    .line 9366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 9367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-wide/from16 v1, v80

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 9371
    .end local v80    # "time":J
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    const/16 v93, 0x5

    invoke-virtual/range {v91 .. v93}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v91

    const/16 v92, 0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_14

    .line 9373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25013

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 9375
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25012

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9381
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 9384
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 9387
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v50

    .line 9389
    .restart local v50    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "wifistatemachine did save config "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9390
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    const v93, 0x2003a

    if-eqz v50, :cond_16

    const/16 v91, 0x1

    :goto_a
    move-object/from16 v0, v92

    move-object/from16 v1, p1

    move/from16 v2, v93

    move/from16 v3, v91

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9393
    const-string v91, "backup"

    invoke-static/range {v91 .. v91}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v91

    invoke-static/range {v91 .. v91}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v35

    .line 9395
    .local v35, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v35, :cond_3

    .line 9397
    :try_start_3
    const-string v91, "com.android.providers.settings"

    move-object/from16 v0, v35

    move-object/from16 v1, v91

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 9398
    :catch_0
    move-exception v91

    goto/16 :goto_1

    .line 9390
    .end local v35    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_16
    const/16 v91, -0x1

    goto :goto_a

    .line 9404
    .end local v50    # "ok":Z
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v92, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v93

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move-object/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 9409
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Ljava/lang/String;

    .line 9411
    .local v69, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v91

    if-eqz v91, :cond_17

    if-eqz v69, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v91

    move-object/from16 v0, v91

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v91, v0

    if-eqz v91, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v91

    move-object/from16 v0, v91

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "\""

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, "\""

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-eqz v91, :cond_17

    .line 9414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v92

    move-object/from16 v0, v92

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v92, v0

    const/16 v93, 0x0

    const-string v94, "AUTH_FAILED no identity"

    const/16 v95, 0x0

    invoke-virtual/range {v91 .. v95}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 9418
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, -0x1

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 9423
    .end local v69    # "ssid":Ljava/lang/String;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Received SUP_REQUEST_SIM_AUTH"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9424
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 9425
    .local v55, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v55, :cond_19

    .line 9426
    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v91, v0

    const/16 v92, 0x4

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_18

    .line 9427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 9428
    :cond_18
    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v91, v0

    const/16 v92, 0x5

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_3

    .line 9429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 9432
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Invalid sim auth request"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9436
    .end local v55    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v92, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v93

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move-object/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 9441
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, -0x1

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 9446
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 9450
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 9454
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v91

    if-eqz v91, :cond_3

    .line 9455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Reconnecting to give a chance to un-connected TLS networks"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 9462
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$5300()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9463
    const/16 v91, 0x1

    goto/16 :goto_0

    .line 9473
    :sswitch_19
    const/16 v30, 0x0

    .line 9474
    .local v30, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    move-object/from16 v0, v91

    move-object/from16 v1, v92

    if-eq v0, v1, :cond_1a

    .line 9478
    const/16 v30, 0x1

    .line 9479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9483
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/net/wifi/WifiConfiguration;

    .line 9484
    .restart local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    .line 9485
    .local v48, "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v59, v0

    .line 9486
    .local v59, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " my state "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v93

    invoke-interface/range {v93 .. v93}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " nid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " roam="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9491
    if-nez v28, :cond_1b

    .line 9492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9497
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v91

    move/from16 v1, v48

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " nid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, -0x1

    move-object/from16 v0, v91

    move-object/from16 v1, v28

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v57

    .line 9503
    .local v57, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v48

    .line 9504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v48

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v91

    if-eqz v91, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v91

    if-eqz v91, :cond_1f

    .line 9512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19102(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, -0x1

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move/from16 v1, v59

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v91

    if-nez v91, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v91

    if-eqz v91, :cond_1d

    .line 9523
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9524
    :cond_1d
    if-eqz v30, :cond_1e

    .line 9525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9527
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9530
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "Failed to connect config: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " netId: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25002

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9543
    .end local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "didDisconnect":Z
    .end local v48    # "netId":I
    .end local v57    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v59    # "roam":I
    :sswitch_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    .line 9544
    .restart local v48    # "netId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/net/wifi/WifiConfiguration;

    .line 9545
    .restart local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v91

    move-object/from16 v0, v91

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v92, v0

    add-int/lit8 v92, v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, v91

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUserConnection:Z
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9552
    if-eqz v28, :cond_20

    .line 9553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v92, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v28

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v57

    .line 9554
    .restart local v57    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v48

    .line 9556
    .end local v57    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v28

    .line 9558
    if-nez v28, :cond_24

    .line 9559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "CONNECT_NETWORK id="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " my state "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$20300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v93

    invoke-interface/range {v93 .. v93}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9573
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "any"

    move-object/from16 v0, v91

    move/from16 v1, v48

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9575
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v91, v0

    const/16 v92, 0x3f2

    move/from16 v0, v91

    move/from16 v1, v92

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v91, v0

    const/16 v92, 0x3e8

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_22

    .line 9583
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "CONNECT_NETWORK"

    move-object/from16 v0, v91

    move-object/from16 v1, v28

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 9586
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v91

    const/16 v92, 0x1

    const/16 v93, 0x1

    move-object/from16 v0, v91

    move/from16 v1, v48

    move/from16 v2, v92

    move/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9593
    const/16 v30, 0x0

    .line 9594
    .restart local v30    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v91

    const/16 v92, -0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v91

    move/from16 v0, v91

    move/from16 v1, v48

    if-eq v0, v1, :cond_23

    .line 9599
    const/16 v30, 0x1

    .line 9600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9604
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, 0x0

    move-object/from16 v0, v91

    move/from16 v1, v48

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v91

    if-eqz v91, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v91

    if-eqz v91, :cond_27

    .line 9608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v91 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$18802(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19102(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v91

    const v92, 0x25001

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 9613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25003

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9614
    if-eqz v30, :cond_26

    .line 9616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$19900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9563
    .end local v30    # "didDisconnect":Z
    :cond_24
    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v91, v0

    if-eqz v91, :cond_25

    const-string v88, " skipped"

    .line 9564
    .local v88, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "CONNECT_NETWORK id="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " config="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " cnid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " supstate="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " my state "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v93

    invoke-interface/range {v93 .. v93}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " uid = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 9563
    .end local v88    # "wasSkipped":Ljava/lang/String;
    :cond_25
    const-string v88, ""

    goto/16 :goto_c

    .line 9622
    .restart local v30    # "didDisconnect":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9625
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "Failed to connect config: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " netId: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25002

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9632
    .end local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v30    # "didDisconnect":Z
    .end local v48    # "netId":I
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v91

    move-object/from16 v0, v91

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v92, v0

    add-int/lit8 v92, v92, 0x1

    move/from16 v0, v92

    move-object/from16 v1, v91

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9635
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9636
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/net/wifi/WifiConfiguration;

    .line 9637
    .restart local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v28, :cond_28

    .line 9638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " my state "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$20800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v93

    invoke-interface/range {v93 .. v93}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25008

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9646
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v92

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$20702(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9647
    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v49, v0

    .line 9648
    .local v49, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "SAVE_NETWORK id="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " config="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " nid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " supstate="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " my state "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v93

    invoke-interface/range {v93 .. v93}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, -0x1

    move-object/from16 v0, v91

    move-object/from16 v1, v28

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v57

    .line 9655
    .restart local v57    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v91

    const/16 v92, -0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-eq v0, v1, :cond_2d

    .line 9656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v91

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v92

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_2a

    .line 9657
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v91

    if-eqz v91, :cond_29

    .line 9661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Reconfiguring IP on connection"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9666
    :cond_29
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v91

    if-eqz v91, :cond_2a

    .line 9667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Reconfiguring proxy on connection"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9671
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25009

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9672
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$700()Z

    move-result v91

    if-eqz v91, :cond_2b

    .line 9673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "Success save network nid="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v93

    invoke-static/range {v93 .. v93}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9677
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v92, v0

    monitor-enter v92

    .line 9683
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v91, v0

    const v93, 0x25007

    move/from16 v0, v91

    move/from16 v1, v93

    if-ne v0, v1, :cond_2c

    const/16 v87, 0x1

    .line 9684
    .local v87, "user":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v91

    invoke-virtual/range {v57 .. v57}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v93

    const/16 v94, 0x1

    move-object/from16 v0, v91

    move/from16 v1, v93

    move/from16 v2, v87

    move/from16 v3, v94

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()V

    .line 9687
    monitor-exit v92

    goto/16 :goto_1

    .end local v87    # "user":Z
    :catchall_2
    move-exception v91

    monitor-exit v92
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v91

    .line 9683
    :cond_2c
    const/16 v87, 0x0

    goto :goto_d

    .line 9689
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Failed to save network"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v92

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25008

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9697
    .end local v28    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v49    # "nid":I
    .end local v57    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v83

    .line 9699
    .local v83, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v83, :cond_2f

    .line 9700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9707
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRcsOnline:Z

    move/from16 v91, v0

    const/16 v92, 0x1

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_2e

    .line 9708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->CmccRmsSender()V

    .line 9713
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v91

    if-eqz v91, :cond_30

    .line 9714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25006

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 9702
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v92

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21202(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_e

    .line 9716
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Failed to forget network"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x25005

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9722
    .end local v83    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v89, v0

    check-cast v89, Landroid/net/wifi/WpsInfo;

    .line 9724
    .local v89, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v89

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v91, v0

    packed-switch v91, :pswitch_data_0

    .line 9735
    new-instance v90, Landroid/net/wifi/WpsResult;

    sget-object v91, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v90 .. v91}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9736
    .local v90, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Invalid setup for WPS"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9739
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    const/16 v92, -0x1

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9741
    move-object/from16 v0, v90

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v91, v0

    sget-object v92, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v91

    move-object/from16 v1, v92

    if-ne v0, v1, :cond_31

    .line 9742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x2500b

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move-object/from16 v3, v90

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9726
    .end local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v90

    .line 9727
    .restart local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 9729
    .end local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v90

    .line 9730
    .restart local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 9732
    .end local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v90

    .line 9733
    .restart local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 9745
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "Failed to start WPS with config "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v89 .. v89}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const v92, 0x2500c

    const/16 v93, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    move/from16 v2, v92

    move/from16 v3, v93

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9750
    .end local v89    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v90    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_1f
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "Network connection established"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9751
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$9402(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 9755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v92

    invoke-virtual/range {v91 .. v92}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 9757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v92

    invoke-virtual/range {v91 .. v92}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 9760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    sget-object v92, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$14500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 9761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v91, v0

    if-eqz v91, :cond_33

    .line 9767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v91, v0

    const/16 v92, 0x1

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->addNewDBRecord_NetworkSelection(Z)V

    .line 9771
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9776
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9790
    :sswitch_21
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9799
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v91, v0

    if-eqz v91, :cond_35

    .line 9800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v91, v0

    const/16 v92, 0x1

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->handleDisconnectReason(I)V

    .line 9803
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$15300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9807
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "PERF_LOCK_EVENT received"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->acquire(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9811
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "PERF_UNLOCK_EVENT received"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->release()V

    goto/16 :goto_1

    .line 9818
    :sswitch_24
    monitor-enter p0

    .line 9819
    const/4 v12, 0x0

    .line 9821
    .local v12, "MsgDetail":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    invoke-virtual/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->getHotspotRemindType()I

    move-result v91

    const/16 v92, 0x3

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_37

    .line 9822
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v42

    .line 9823
    .local v42, "mHtcTelephonyManager":Lcom/htc/service/HtcTelephonyManager;
    if-eqz v42, :cond_36

    .line 9825
    const-string v91, "getAllIMSI"

    const/16 v92, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v91

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v86

    .line 9826
    .local v86, "uiccResult":Landroid/os/Bundle;
    if-eqz v86, :cond_36

    invoke-virtual/range {v86 .. v86}, Landroid/os/Bundle;->size()I

    move-result v91

    if-lez v91, :cond_36

    .line 9827
    const-string v91, "slot1_gsm_imsi"

    const/16 v92, 0x0

    move-object/from16 v0, v86

    move-object/from16 v1, v91

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 9828
    .local v85, "uiccImsi":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "CTRL-RSP-"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9857
    .end local v42    # "mHtcTelephonyManager":Lcom/htc/service/HtcTelephonyManager;
    .end local v85    # "uiccImsi":Ljava/lang/String;
    .end local v86    # "uiccResult":Landroid/os/Bundle;
    :cond_36
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 9858
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v91

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v91

    .line 9833
    :cond_37
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v78

    .line 9834
    .local v78, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v78, :cond_38

    invoke-virtual/range {v78 .. v78}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v91

    if-eqz v91, :cond_38

    .line 9847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v91

    invoke-static/range {v91 .. v91}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v71

    .line 9848
    .local v71, "subId":[J
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "CTRL-RSP-"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const/16 v92, 0x0

    aget-wide v92, v71, v92

    move-object/from16 v0, v78

    move-wide/from16 v1, v92

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9852
    goto :goto_10

    .line 9853
    .end local v71    # "subId":[J
    :cond_38
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "CTRL-RSP-"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v78 .. v78}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v12

    goto/16 :goto_10

    .line 9861
    .end local v12    # "MsgDetail":Ljava/lang/String;
    .end local v78    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :sswitch_25
    monitor-enter p0

    .line 9862
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v91

    const-string v92, "phone"

    invoke-virtual/range {v91 .. v92}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/telephony/TelephonyManager;

    .line 9863
    .local v43, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v43 .. v43}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v60

    .line 9864
    .local v60, "simOperator":Ljava/lang/String;
    const-string v91, "WifiStateMachine"

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "SIM/AKA getSimOperator(): "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9865
    if-nez v60, :cond_39

    .line 9866
    monitor-exit p0

    goto/16 :goto_1

    .line 9883
    .end local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v60    # "simOperator":Ljava/lang/String;
    :catchall_4
    move-exception v91

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v91

    .line 9869
    .restart local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v60    # "simOperator":Ljava/lang/String;
    :cond_39
    :try_start_8
    const-string v44, "630"

    .line 9870
    .local v44, "mcc":Ljava/lang/String;
    const-string v45, "302"

    .line 9871
    .local v45, "mnc":Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v91

    const/16 v92, 0x5

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_3b

    .line 9872
    const/16 v91, 0x0

    const/16 v92, 0x3

    move-object/from16 v0, v60

    move/from16 v1, v91

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    .line 9873
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "0"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const/16 v92, 0x3

    const/16 v93, 0x5

    move-object/from16 v0, v60

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 9878
    :cond_3a
    :goto_11
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "@wlan.mnc"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ".mcc"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ".3gppnetwork.org"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 9879
    .local v54, "realm":Ljava/lang/String;
    const-string v91, "WifiStateMachine"

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "SIM/AKA realm: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9881
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "CTRL-DAT-"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    move-object/from16 v0, v92

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9882
    .restart local v12    # "MsgDetail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 9883
    monitor-exit p0

    goto/16 :goto_1

    .line 9874
    .end local v12    # "MsgDetail":Ljava/lang/String;
    .end local v54    # "realm":Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v91

    const/16 v92, 0x6

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_3a

    .line 9875
    const/16 v91, 0x0

    const/16 v92, 0x3

    move-object/from16 v0, v60

    move/from16 v1, v91

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    .line 9876
    const/16 v91, 0x3

    const/16 v92, 0x6

    move-object/from16 v0, v60

    move/from16 v1, v91

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v45

    goto/16 :goto_11

    .line 9886
    .end local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v44    # "mcc":Ljava/lang/String;
    .end local v45    # "mnc":Ljava/lang/String;
    .end local v60    # "simOperator":Ljava/lang/String;
    :sswitch_26
    const-string v13, "CTRL-DAT-"

    .local v13, "MsgDetail0":Ljava/lang/String;
    const-string v12, "FAIL"

    .line 9888
    .restart local v12    # "MsgDetail":Ljava/lang/String;
    const/16 v74, 0x0

    .line 9889
    .local v74, "szAutn":Ljava/lang/String;
    const/16 v91, 0x3

    :try_start_9
    move/from16 v0, v91

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v75, v0

    .line 9892
    .local v75, "szRand":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v91

    const-string v92, "phone"

    invoke-virtual/range {v91 .. v92}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/telephony/TelephonyManager;

    .line 9894
    .restart local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v91, "phone"

    invoke-static/range {v91 .. v91}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v91

    invoke-static/range {v91 .. v91}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v52

    .line 9895
    .local v52, "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    const/16 v18, 0x0

    .line 9896
    .local v18, "aszRspResult":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Ljava/lang/String;

    .local v77, "szTmpMsg0":Ljava/lang/String;
    move-object/from16 v76, v77

    .line 9897
    .local v76, "szTmpMsg":Ljava/lang/String;
    const/16 v91, 0x3a

    move-object/from16 v0, v76

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 9898
    .local v14, "MsgEnd":I
    const/16 v91, -0x1

    move/from16 v0, v91

    if-ne v14, v0, :cond_3c

    .line 9899
    invoke-virtual/range {v76 .. v76}, Ljava/lang/String;->length()I

    move-result v14

    .line 9900
    :cond_3c
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v91

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const/16 v92, 0x0

    move-object/from16 v0, v76

    move/from16 v1, v92

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 9901
    add-int/lit8 v91, v14, 0x1

    move-object/from16 v0, v76

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v76

    .line 9902
    const/16 v91, 0x3a

    move-object/from16 v0, v76

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 9903
    const/16 v91, -0x1

    move/from16 v0, v91

    if-eq v14, v0, :cond_3d

    .line 9904
    const/16 v91, 0x0

    const/16 v92, 0x0

    move-object/from16 v0, v76

    move/from16 v1, v92

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v92

    aput-object v92, v75, v91

    .line 9905
    add-int/lit8 v91, v14, 0x1

    move-object/from16 v0, v76

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v76

    .line 9908
    :cond_3d
    const-string v91, "gsm.sim.types"

    const-string v92, ""

    invoke-static/range {v91 .. v92}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 9911
    .local v61, "simType":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, ""

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    sget-object v92, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 9912
    .local v63, "simType3G":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, ""

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    sget-object v92, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 9913
    .local v62, "simType2G":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, ""

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    sget-object v92, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 9914
    .local v64, "simTypeDBDM":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, ""

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    sget-object v92, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    .line 9915
    .local v66, "simTypeWIBRO_ONLY":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, ""

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    sget-object v92, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    .line 9917
    .local v65, "simTypeDUAL":Ljava/lang/String;
    const-string v91, "AUTH_AKA-"

    move-object/from16 v0, v77

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v91

    if-eqz v91, :cond_45

    .line 9918
    move-object/from16 v0, v61

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-nez v91, :cond_3e

    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-nez v91, :cond_3e

    move-object/from16 v0, v61

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-nez v91, :cond_3e

    move-object/from16 v0, v61

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-eqz v91, :cond_44

    .line 9920
    :cond_3e
    move-object/from16 v74, v76

    .line 9921
    const/16 v26, 0x0

    .line 9922
    .local v26, "bundle":Landroid/os/Bundle;
    const/16 v34, 0x0

    .line 9924
    .local v34, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "AKA: szRand[0] ="

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x0

    aget-object v93, v75, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "AKA: szAutn = "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v91

    const-string v92, "phone"

    invoke-virtual/range {v91 .. v92}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/telephony/TelephonyManager;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 9933
    .local v79, "tm":Landroid/telephony/TelephonyManager;
    const/16 v53, 0x0

    .line 9934
    .local v53, "rand":[B
    const/16 v20, 0x0

    .line 9936
    .local v20, "autn":[B
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const/16 v92, 0x0

    aget-object v92, v75, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v53

    .line 9937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v74

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v20

    .line 9941
    :goto_12
    :try_start_b
    move-object/from16 v0, v53

    array-length v0, v0

    move/from16 v91, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v92, v0

    add-int v91, v91, v92

    move/from16 v0, v91

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 9942
    .local v19, "authdata":[B
    const/16 v91, 0x0

    const/16 v92, 0x0

    move-object/from16 v0, v53

    array-length v0, v0

    move/from16 v93, v0

    move-object/from16 v0, v53

    move/from16 v1, v91

    move-object/from16 v2, v19

    move/from16 v3, v92

    move/from16 v4, v93

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 9943
    const/16 v91, 0x0

    move-object/from16 v0, v53

    array-length v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v93, v0

    move-object/from16 v0, v20

    move/from16 v1, v91

    move-object/from16 v2, v19

    move/from16 v3, v92

    move/from16 v4, v93

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 9945
    const/16 v91, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v23

    .line 9951
    .local v23, "base64Challenge":Ljava/lang/String;
    const/16 v17, 0x2

    .line 9953
    .local v17, "appType":I
    const/16 v82, 0x0

    .line 9954
    .local v82, "tmResponse":Ljava/lang/String;
    if-eqz v79, :cond_40

    invoke-virtual/range {v79 .. v79}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v91

    if-eqz v91, :cond_40

    .line 9955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v91

    invoke-static/range {v91 .. v91}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v71

    .line 9956
    .restart local v71    # "subId":[J
    const/16 v91, 0x0

    aget-wide v92, v71, v91

    move-object/from16 v0, v79

    move-wide/from16 v1, v92

    move/from16 v3, v17

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 9962
    .end local v71    # "subId":[J
    :goto_13
    if-eqz v82, :cond_43

    .line 9963
    const/16 v91, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v58

    .line 9965
    .local v58, "result2":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "AKA: result2[0]: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    const/16 v93, 0x0

    aget-byte v93, v58, v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9966
    const/16 v91, 0x0

    aget-byte v91, v58, v91

    const/16 v92, -0x25

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_41

    .line 9968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "AKA: Enter AKA successful case"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9969
    const/16 v91, 0x1

    aget-byte v16, v58, v91

    .line 9970
    .local v16, "akares_len":I
    const/16 v91, 0x2

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v16

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v15

    .line 9972
    .local v15, "akares":Ljava/lang/String;
    add-int/lit8 v8, v16, 0x2

    .line 9973
    .local v8, "Ck_offset":I
    aget-byte v7, v58, v8

    .line 9974
    .local v7, "Ck_len":I
    add-int/lit8 v91, v8, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v91

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v6

    .line 9976
    .local v6, "Ck":Ljava/lang/String;
    add-int/lit8 v91, v8, 0x1

    add-int v11, v91, v7

    .line 9977
    .local v11, "Ik_offset":I
    aget-byte v10, v58, v11

    .line 9978
    .local v10, "Ik_len":I
    add-int/lit8 v91, v11, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v91

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v9

    .line 9980
    .local v9, "Ik":Ljava/lang/String;
    add-int/lit8 v91, v11, 0x1

    add-int v40, v91, v10

    .line 9981
    .local v40, "kc_offset":I
    aget-byte v39, v58, v40

    .line 9982
    .local v39, "kc_len":I
    add-int/lit8 v91, v40, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v38

    .line 9984
    .local v38, "kc":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "OK:"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "AKA: MsgDetail= "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 10105
    .end local v6    # "Ck":Ljava/lang/String;
    .end local v7    # "Ck_len":I
    .end local v8    # "Ck_offset":I
    .end local v9    # "Ik":Ljava/lang/String;
    .end local v10    # "Ik_len":I
    .end local v11    # "Ik_offset":I
    .end local v14    # "MsgEnd":I
    .end local v15    # "akares":Ljava/lang/String;
    .end local v16    # "akares_len":I
    .end local v17    # "appType":I
    .end local v18    # "aszRspResult":[Ljava/lang/String;
    .end local v19    # "authdata":[B
    .end local v20    # "autn":[B
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v26    # "bundle":Landroid/os/Bundle;
    .end local v34    # "i":I
    .end local v38    # "kc":Ljava/lang/String;
    .end local v39    # "kc_len":I
    .end local v40    # "kc_offset":I
    .end local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v52    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .end local v53    # "rand":[B
    .end local v58    # "result2":[B
    .end local v61    # "simType":Ljava/lang/String;
    .end local v62    # "simType2G":Ljava/lang/String;
    .end local v63    # "simType3G":Ljava/lang/String;
    .end local v64    # "simTypeDBDM":Ljava/lang/String;
    .end local v65    # "simTypeDUAL":Ljava/lang/String;
    .end local v66    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .end local v75    # "szRand":[Ljava/lang/String;
    .end local v76    # "szTmpMsg":Ljava/lang/String;
    .end local v77    # "szTmpMsg0":Ljava/lang/String;
    .end local v79    # "tm":Landroid/telephony/TelephonyManager;
    .end local v82    # "tmResponse":Ljava/lang/String;
    :cond_3f
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v92

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 9958
    .restart local v14    # "MsgEnd":I
    .restart local v17    # "appType":I
    .restart local v18    # "aszRspResult":[Ljava/lang/String;
    .restart local v19    # "authdata":[B
    .restart local v20    # "autn":[B
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v34    # "i":I
    .restart local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v52    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .restart local v53    # "rand":[B
    .restart local v61    # "simType":Ljava/lang/String;
    .restart local v62    # "simType2G":Ljava/lang/String;
    .restart local v63    # "simType3G":Ljava/lang/String;
    .restart local v64    # "simTypeDBDM":Ljava/lang/String;
    .restart local v65    # "simTypeDUAL":Ljava/lang/String;
    .restart local v66    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .restart local v75    # "szRand":[Ljava/lang/String;
    .restart local v76    # "szTmpMsg":Ljava/lang/String;
    .restart local v77    # "szTmpMsg0":Ljava/lang/String;
    .restart local v79    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v82    # "tmResponse":Ljava/lang/String;
    :cond_40
    :try_start_c
    move-object/from16 v0, v79

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v82

    goto/16 :goto_13

    .line 9989
    .restart local v58    # "result2":[B
    :cond_41
    const/16 v91, 0x0

    aget-byte v91, v58, v91

    const/16 v92, -0x24

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_42

    .line 9990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "AKA: Enter synchronization error case"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9991
    const/16 v91, 0x1

    aget-byte v22, v58, v91

    .line 9992
    .local v22, "auts_len":I
    const/16 v91, 0x2

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v22

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v21

    .line 9993
    .local v21, "auts":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "FAIL:dc0e"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "AKA AUTH_AKA- FAIL, MsgDetail= "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_14

    .line 10102
    .end local v14    # "MsgEnd":I
    .end local v17    # "appType":I
    .end local v18    # "aszRspResult":[Ljava/lang/String;
    .end local v19    # "authdata":[B
    .end local v20    # "autn":[B
    .end local v21    # "auts":Ljava/lang/String;
    .end local v22    # "auts_len":I
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v26    # "bundle":Landroid/os/Bundle;
    .end local v34    # "i":I
    .end local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v52    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .end local v53    # "rand":[B
    .end local v58    # "result2":[B
    .end local v61    # "simType":Ljava/lang/String;
    .end local v62    # "simType2G":Ljava/lang/String;
    .end local v63    # "simType3G":Ljava/lang/String;
    .end local v64    # "simTypeDBDM":Ljava/lang/String;
    .end local v65    # "simTypeDUAL":Ljava/lang/String;
    .end local v66    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .end local v75    # "szRand":[Ljava/lang/String;
    .end local v76    # "szTmpMsg":Ljava/lang/String;
    .end local v77    # "szTmpMsg0":Ljava/lang/String;
    .end local v79    # "tm":Landroid/telephony/TelephonyManager;
    .end local v82    # "tmResponse":Ljava/lang/String;
    :catch_1
    move-exception v31

    .line 10103
    .local v31, "e":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 9996
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v14    # "MsgEnd":I
    .restart local v17    # "appType":I
    .restart local v18    # "aszRspResult":[Ljava/lang/String;
    .restart local v19    # "authdata":[B
    .restart local v20    # "autn":[B
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v34    # "i":I
    .restart local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v52    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .restart local v53    # "rand":[B
    .restart local v58    # "result2":[B
    .restart local v61    # "simType":Ljava/lang/String;
    .restart local v62    # "simType2G":Ljava/lang/String;
    .restart local v63    # "simType3G":Ljava/lang/String;
    .restart local v64    # "simTypeDBDM":Ljava/lang/String;
    .restart local v65    # "simTypeDUAL":Ljava/lang/String;
    .restart local v66    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .restart local v75    # "szRand":[Ljava/lang/String;
    .restart local v76    # "szTmpMsg":Ljava/lang/String;
    .restart local v77    # "szTmpMsg0":Ljava/lang/String;
    .restart local v79    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v82    # "tmResponse":Ljava/lang/String;
    :cond_42
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "AKA: still fail case"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "bad response - "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9998
    const-string v12, "FAIL"

    goto/16 :goto_14

    .line 10001
    .end local v58    # "result2":[B
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "bad response - "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10002
    const-string v12, "FAIL"

    goto/16 :goto_1

    .line 10008
    .end local v17    # "appType":I
    .end local v19    # "authdata":[B
    .end local v20    # "autn":[B
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v26    # "bundle":Landroid/os/Bundle;
    .end local v34    # "i":I
    .end local v53    # "rand":[B
    .end local v79    # "tm":Landroid/telephony/TelephonyManager;
    .end local v82    # "tmResponse":Ljava/lang/String;
    :cond_44
    const-string v12, "null"

    goto/16 :goto_14

    .line 10010
    :cond_45
    const-string v91, "AUTH_SIM-"

    move-object/from16 v0, v77

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v91

    if-eqz v91, :cond_3f

    .line 10011
    const/16 v91, 0x3a

    move-object/from16 v0, v76

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 10012
    const/16 v91, -0x1

    move/from16 v0, v91

    if-eq v14, v0, :cond_46

    .line 10013
    const/16 v91, 0x1

    const/16 v92, 0x0

    move-object/from16 v0, v76

    move/from16 v1, v92

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v92

    aput-object v92, v75, v91

    .line 10014
    const/16 v91, 0x2

    add-int/lit8 v92, v14, 0x1

    move-object/from16 v0, v76

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v92

    aput-object v92, v75, v91

    .line 10019
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v91

    const-string v92, "phone"

    invoke-virtual/range {v91 .. v92}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/telephony/TelephonyManager;

    .line 10025
    .restart local v79    # "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v41

    .line 10026
    .local v41, "mHtcTM":Lcom/htc/service/HtcTelephonyManager;
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 10027
    .local v27, "bundleArg1":Landroid/os/Bundle;
    const/16 v84, 0x0

    .line 10028
    .local v84, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v91

    invoke-static/range {v91 .. v91}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v72

    .line 10030
    .local v72, "subId1":[J
    if-eqz v72, :cond_48

    move-object/from16 v0, v72

    array-length v0, v0

    move/from16 v91, v0

    if-eqz v91, :cond_48

    .line 10031
    const-string v91, "subscription"

    const/16 v92, 0x0

    aget-wide v92, v72, v92

    move-object/from16 v0, v27

    move-object/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10032
    const-string v91, "getUiccAppType"

    move-object/from16 v0, v41

    move-object/from16 v1, v91

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v26

    .line 10033
    .restart local v26    # "bundle":Landroid/os/Bundle;
    const-string v91, "getUiccAppType"

    const/16 v92, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v91

    move-object/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 10038
    .end local v26    # "bundle":Landroid/os/Bundle;
    :goto_15
    const-string v12, "OK"

    .line 10039
    const/16 v36, 0x0

    .local v36, "ii":I
    :goto_16
    const/16 v91, 0x3

    move/from16 v0, v36

    move/from16 v1, v91

    if-ge v0, v1, :cond_3f

    .line 10040
    aget-object v91, v75, v36

    invoke-virtual/range {v91 .. v91}, Ljava/lang/String;->length()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v91

    const/16 v92, 0x20

    move/from16 v0, v91

    move/from16 v1, v92

    if-ne v0, v1, :cond_4c

    .line 10043
    const/16 v53, 0x0

    .line 10045
    .restart local v53    # "rand":[B
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    aget-object v92, v75, v36

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v53

    .line 10050
    const/16 v91, 0x2

    :try_start_f
    move-object/from16 v0, v53

    move/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v23

    .line 10056
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    const/16 v17, 0x1

    .line 10058
    .restart local v17    # "appType":I
    const/16 v82, 0x0

    .line 10059
    .restart local v82    # "tmResponse":Ljava/lang/String;
    if-eqz v79, :cond_49

    invoke-virtual/range {v79 .. v79}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v91

    if-eqz v91, :cond_49

    .line 10060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v91

    invoke-static/range {v91 .. v91}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v71

    .line 10061
    .restart local v71    # "subId":[J
    const/16 v91, 0x0

    aget-wide v92, v71, v91

    move-object/from16 v0, v79

    move-wide/from16 v1, v92

    move/from16 v3, v17

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 10067
    .end local v71    # "subId":[J
    :goto_17
    if-eqz v82, :cond_4b

    invoke-virtual/range {v82 .. v82}, Ljava/lang/String;->length()I

    move-result v91

    const/16 v92, 0x4

    move/from16 v0, v91

    move/from16 v1, v92

    if-le v0, v1, :cond_4b

    .line 10068
    const/16 v91, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v91

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v58

    .line 10072
    .restart local v58    # "result2":[B
    if-eqz v84, :cond_4a

    const-string v91, "APPTYPE_SIM"

    move-object/from16 v0, v84

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-nez v91, :cond_47

    const-string v91, "APPTYPE_RUIM"

    move-object/from16 v0, v84

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v91

    if-eqz v91, :cond_4a

    .line 10073
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "SIM: makeHex: sim type : 2G"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10074
    const/16 v91, 0x0

    const/16 v92, 0x4

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v67

    .line 10075
    .local v67, "sres":Ljava/lang/String;
    const/16 v91, 0x4

    const/16 v92, 0x8

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v38

    .line 10076
    .restart local v38    # "kc":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v91

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 10039
    .end local v17    # "appType":I
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v38    # "kc":Ljava/lang/String;
    .end local v58    # "result2":[B
    .end local v67    # "sres":Ljava/lang/String;
    .end local v82    # "tmResponse":Ljava/lang/String;
    :goto_18
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_16

    .line 10035
    .end local v36    # "ii":I
    .end local v53    # "rand":[B
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "getSubId null or empty, mEapSimAkaSlot: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v93, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v93 .. v93}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " ,will go for default."

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 10046
    .restart local v36    # "ii":I
    .restart local v53    # "rand":[B
    :catch_2
    move-exception v31

    .line 10047
    .local v31, "e":Ljava/lang/NumberFormatException;
    goto :goto_18

    .line 10063
    .end local v31    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "appType":I
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    .restart local v82    # "tmResponse":Ljava/lang/String;
    :cond_49
    move-object/from16 v0, v79

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v82

    goto/16 :goto_17

    .line 10078
    .restart local v58    # "result2":[B
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "SIM: makeHex: sim type : 3G or 4G"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10079
    const/16 v91, 0x0

    aget-byte v68, v58, v91

    .line 10080
    .local v68, "sres_len":I
    const/16 v91, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v68

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v67

    .line 10081
    .restart local v67    # "sres":Ljava/lang/String;
    add-int/lit8 v40, v68, 0x1

    .line 10082
    .restart local v40    # "kc_offset":I
    aget-byte v39, v58, v40

    .line 10083
    .restart local v39    # "kc_len":I
    add-int/lit8 v91, v40, 0x1

    move-object/from16 v0, v58

    move/from16 v1, v91

    move/from16 v2, v39

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22300([BII)Ljava/lang/String;

    move-result-object v38

    .line 10084
    .restart local v38    # "kc":Ljava/lang/String;
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v91

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    const-string v92, ":"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_18

    .line 10088
    .end local v38    # "kc":Ljava/lang/String;
    .end local v39    # "kc_len":I
    .end local v40    # "kc_offset":I
    .end local v58    # "result2":[B
    .end local v67    # "sres":Ljava/lang/String;
    .end local v68    # "sres_len":I
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "bad response - "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$22700(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10089
    const-string v12, "FAIL"

    .line 10090
    goto/16 :goto_14

    .line 10095
    .end local v17    # "appType":I
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v53    # "rand":[B
    .end local v82    # "tmResponse":Ljava/lang/String;
    :cond_4c
    const-string v12, "FAIL"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 10096
    goto/16 :goto_14

    .line 10108
    .end local v12    # "MsgDetail":Ljava/lang/String;
    .end local v13    # "MsgDetail0":Ljava/lang/String;
    .end local v14    # "MsgEnd":I
    .end local v18    # "aszRspResult":[Ljava/lang/String;
    .end local v27    # "bundleArg1":Landroid/os/Bundle;
    .end local v36    # "ii":I
    .end local v41    # "mHtcTM":Lcom/htc/service/HtcTelephonyManager;
    .end local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v52    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .end local v61    # "simType":Ljava/lang/String;
    .end local v62    # "simType2G":Ljava/lang/String;
    .end local v63    # "simType3G":Ljava/lang/String;
    .end local v64    # "simTypeDBDM":Ljava/lang/String;
    .end local v65    # "simTypeDUAL":Ljava/lang/String;
    .end local v66    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .end local v72    # "subId1":[J
    .end local v74    # "szAutn":Ljava/lang/String;
    .end local v75    # "szRand":[Ljava/lang/String;
    .end local v76    # "szTmpMsg":Ljava/lang/String;
    .end local v77    # "szTmpMsg0":Ljava/lang/String;
    .end local v79    # "tm":Landroid/telephony/TelephonyManager;
    .end local v84    # "type":Ljava/lang/String;
    :sswitch_27
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v91

    if-eqz v91, :cond_4d

    .line 10109
    new-instance v37, Landroid/content/Intent;

    const-string v91, "com.htc.wifi.AKA_INVALID_SIM"

    move-object/from16 v0, v37

    move-object/from16 v1, v91

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10110
    .local v37, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v91

    move-object/from16 v0, v91

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10111
    const-string v91, "WifiStateMachine"

    const-string v92, "SIM/AKA: set intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10114
    .end local v37    # "intent":Landroid/content/Intent;
    :cond_4d
    const-string v91, "WifiStateMachine"

    const-string v92, "SIM/AKA: System is not ready, ignore sending intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v91 .. v92}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10118
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$14000(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v91

    if-eqz v91, :cond_3

    .line 10119
    new-instance v91, Ljava/lang/StringBuilder;

    invoke-direct/range {v91 .. v91}, Ljava/lang/StringBuilder;-><init>()V

    const-string v92, "CTRL-DAT-AIR_MODE-0:"

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v92, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v92 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v92

    const-string v93, "airplane_mode_on"

    const/16 v94, 0x0

    invoke-static/range {v92 .. v94}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v92

    invoke-virtual/range {v91 .. v92}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 10121
    .local v47, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 10130
    .end local v47    # "msg":Ljava/lang/String;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v91, v0

    if-eqz v91, :cond_3

    .line 10132
    :try_start_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    .line 10133
    .local v46, "mode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 10134
    .local v24, "black_bssid":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "[ScoreAP] Got BLACKLIST_EVENT:"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v92

    const-string v93, " , SSID:"

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10136
    :cond_4e
    packed-switch v46, :pswitch_data_1

    .line 10153
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    const-string v92, "[ScoreAP] BLACKLIST_EVENT, NOT_HANDLED"

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 10155
    .end local v24    # "black_bssid":Ljava/lang/String;
    .end local v46    # "mode":I
    :catch_3
    move-exception v31

    .line 10156
    .local v31, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "[ScoreAP] BLACKLIST_EVENT, Got exception: "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10138
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v24    # "black_bssid":Ljava/lang/String;
    .restart local v46    # "mode":I
    :pswitch_3
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v91, v0

    invoke-virtual/range {v91 .. v91}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 10141
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v91

    if-nez v91, :cond_3

    .line 10142
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "[ScoreAP] BLACKLIST_EVENT, Add "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10143
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 10147
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v91

    if-eqz v91, :cond_3

    .line 10148
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1200()Z

    move-result v91

    if-eqz v91, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    new-instance v92, Ljava/lang/StringBuilder;

    invoke-direct/range {v92 .. v92}, Ljava/lang/StringBuilder;-><init>()V

    const-string v93, "[ScoreAP] BLACKLIST_EVENT, Remove "

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    move-object/from16 v0, v92

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    invoke-virtual/range {v91 .. v92}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10149
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v91, v0

    move-object/from16 v0, v91

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_1

    .line 9938
    .end local v24    # "black_bssid":Ljava/lang/String;
    .end local v46    # "mode":I
    .restart local v12    # "MsgDetail":Ljava/lang/String;
    .restart local v13    # "MsgDetail0":Ljava/lang/String;
    .restart local v14    # "MsgEnd":I
    .restart local v18    # "aszRspResult":[Ljava/lang/String;
    .restart local v20    # "autn":[B
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v34    # "i":I
    .restart local v43    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v52    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .restart local v53    # "rand":[B
    .restart local v61    # "simType":Ljava/lang/String;
    .restart local v62    # "simType2G":Ljava/lang/String;
    .restart local v63    # "simType3G":Ljava/lang/String;
    .restart local v64    # "simTypeDBDM":Ljava/lang/String;
    .restart local v65    # "simTypeDUAL":Ljava/lang/String;
    .restart local v66    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .restart local v74    # "szAutn":Ljava/lang/String;
    .restart local v75    # "szRand":[Ljava/lang/String;
    .restart local v76    # "szTmpMsg":Ljava/lang/String;
    .restart local v77    # "szTmpMsg0":Ljava/lang/String;
    .restart local v79    # "tm":Landroid/telephony/TelephonyManager;
    :catch_4
    move-exception v91

    goto/16 :goto_12

    .line 9193
    nop

    :sswitch_data_0
    .sparse-switch
        0x20020 -> :sswitch_28
        0x20034 -> :sswitch_8
        0x20035 -> :sswitch_9
        0x20036 -> :sswitch_a
        0x20037 -> :sswitch_b
        0x20038 -> :sswitch_d
        0x20039 -> :sswitch_e
        0x2003a -> :sswitch_f
        0x2003b -> :sswitch_10
        0x2003e -> :sswitch_13
        0x20049 -> :sswitch_14
        0x2004a -> :sswitch_15
        0x2004b -> :sswitch_16
        0x2008e -> :sswitch_17
        0x2008f -> :sswitch_19
        0x20091 -> :sswitch_18
        0x20092 -> :sswitch_1c
        0x2300c -> :sswitch_7
        0x24003 -> :sswitch_1f
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_6
        0x24007 -> :sswitch_3
        0x2400d -> :sswitch_5
        0x2400e -> :sswitch_5
        0x2400f -> :sswitch_11
        0x24010 -> :sswitch_12
        0x2402b -> :sswitch_0
        0x2402c -> :sswitch_2
        0x2402d -> :sswitch_1
        0x2402e -> :sswitch_20
        0x24066 -> :sswitch_22
        0x24067 -> :sswitch_23
        0x24068 -> :sswitch_24
        0x24069 -> :sswitch_25
        0x2406a -> :sswitch_26
        0x2406b -> :sswitch_27
        0x2406d -> :sswitch_4
        0x2406f -> :sswitch_29
        0x25001 -> :sswitch_1a
        0x25004 -> :sswitch_1d
        0x25007 -> :sswitch_1b
        0x2500a -> :sswitch_1e
        0x25011 -> :sswitch_c
    .end sparse-switch

    .line 9724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 10136
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
