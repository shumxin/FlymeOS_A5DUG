.class public Lcom/android/internal/telephony/UIDRecordLoader;
.super Landroid/os/Handler;
.source "UIDRecordLoader.java"


# static fields
.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x2

.field static final EVENT_UID_LOAD_ALL_DONE:I = 0x1

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "UIDRecord"


# instance fields
.field ef:I

.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field public pendingCommand:I

.field public phone:Lcom/android/internal/telephony/PhoneBase;

.field public recordNumber:I

.field public result:Ljava/lang/Object;

.field public uidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;"
        }
    .end annotation
.end field

.field public userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 67
    iput-object p2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 68
    return-void
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecordLoader;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UIDRecordLoader;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    const/4 v14, 0x0

    .line 146
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UIDRecordLoader;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 239
    iput-object v14, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    .line 241
    :cond_1
    :goto_1
    return-void

    .line 151
    :pswitch_0
    :try_start_1
    const-string v2, "UIDRecord"

    const-string v3, "EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 153
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/UIDRecord;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/UIDRecord;

    move-object v13, v0

    .line 155
    .local v13, "uid":Lcom/android/internal/telephony/UIDRecord;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 156
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get EF record size failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "uid":Lcom/android/internal/telephony/UIDRecord;
    :catch_0
    move-exception v9

    .line 226
    .local v9, "exc":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v9, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 228
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 231
    iput-object v14, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 160
    .end local v9    # "exc":Ljava/lang/RuntimeException;
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    .restart local v13    # "uid":Lcom/android/internal/telephony/UIDRecord;
    :cond_2
    :try_start_2
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v11, v0

    .line 166
    .local v11, "recordSize":[I
    array-length v2, v11

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->recordNumber:I

    const/4 v3, 0x2

    aget v3, v11, v3

    if-le v2, v3, :cond_4

    .line 167
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "get wrong EF record size format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 171
    :cond_4
    const/4 v2, 0x0

    aget v2, v11, v2

    invoke-virtual {v13, v2}, Lcom/android/internal/telephony/UIDRecord;->buildUIDString(I)[B

    move-result-object v4

    .line 173
    .local v4, "data":[B
    if-nez v4, :cond_5

    .line 174
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "worong UID format"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 178
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/UIDRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 179
    .local v1, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v1, :cond_6

    .line 180
    iget v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->ef:I

    iget v3, p0, Lcom/android/internal/telephony/UIDRecordLoader;->recordNumber:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/UIDRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 187
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    goto/16 :goto_0

    .line 183
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v1    # "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v4    # "data":[B
    .end local v7    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "recordSize":[I
    .end local v13    # "uid":Lcom/android/internal/telephony/UIDRecord;
    :pswitch_1
    const-string v2, "UIDRecord"

    const-string v3, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 193
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 194
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "update EF UID record failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 197
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    .line 198
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 205
    .end local v7    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "UIDRecord"

    const-string v3, "EVENT_UID_LOAD_ALL_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    move-object v7, v0

    .line 208
    .restart local v7    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 210
    .local v8, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 211
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "load failed"

    iget-object v5, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 214
    :cond_8
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->pendingCommand:I

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->uidList:Ljava/util/ArrayList;

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->uidList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->result:Ljava/lang/Object;

    .line 218
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "s":I
    :goto_2
    if-ge v10, v12, :cond_0

    .line 219
    new-instance v13, Lcom/android/internal/telephony/UIDRecord;

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v13, v3, v2}, Lcom/android/internal/telephony/UIDRecord;-><init>(I[B)V

    .line 220
    .restart local v13    # "uid":Lcom/android/internal/telephony/UIDRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->uidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadAllFromEF(ILandroid/os/Message;)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 78
    iput p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->ef:I

    .line 79
    iput-object p2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/UIDRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 82
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UIDRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v1, "UIDRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 91
    iput-object v4, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method

.method public updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "recordNumber"    # I
    .param p3, "uidRecord"    # Lcom/android/internal/telephony/UIDRecord;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 115
    iput p1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->ef:I

    .line 116
    iput p2, p0, Lcom/android/internal/telephony/UIDRecordLoader;->recordNumber:I

    .line 117
    iput-object p4, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/UIDRecordLoader;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 120
    .local v0, "iccFileHander":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/UIDRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v1, "UIDRecord"

    const-string v2, "getIccFileHandler() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getIccFileHandler() is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    iput-object v4, p0, Lcom/android/internal/telephony/UIDRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_0
.end method
