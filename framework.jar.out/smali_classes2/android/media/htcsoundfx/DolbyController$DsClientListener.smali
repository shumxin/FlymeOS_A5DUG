.class final Landroid/media/htcsoundfx/DolbyController$DsClientListener;
.super Ljava/lang/Object;
.source "DolbyController.java"

# interfaces
.implements Landroid/media/htcsoundfx/dolby/IDsClientEvents;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/htcsoundfx/DolbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DsClientListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyController.DsClientListener"


# instance fields
.field private mOwner:Landroid/media/htcsoundfx/DolbyController;

.field final synthetic this$0:Landroid/media/htcsoundfx/DolbyController;


# direct methods
.method public constructor <init>(Landroid/media/htcsoundfx/DolbyController;Landroid/media/htcsoundfx/DolbyController;)V
    .locals 0
    .param p2, "owner"    # Landroid/media/htcsoundfx/DolbyController;

    .prologue
    .line 240
    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->this$0:Landroid/media/htcsoundfx/DolbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    .line 242
    return-void
.end method


# virtual methods
.method public getProxeyInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 285
    :try_start_0
    const-string v3, "android.dolby.IDsClientEvents"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 287
    .local v1, "clazzs":[Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 291
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "clazzs":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "m"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "result":Ljava/lang/Object;
    const-string v3, "DolbyController.DsClientListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 278
    :goto_1
    const-string v2, "DolbyController.DsClientListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v1

    .line 250
    :sswitch_0
    :try_start_1
    const-string v4, "onClientConnected"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v2, "onClientDisconnected"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "onDsOn"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "onEqSettingsChanged"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "onProfileNameChanged"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "onProfileSelected"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "onProfileSettingsChanged"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    .line 252
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onClientConnected()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected invocation exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const-string v3, "DolbyController.DsClientListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 255
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onClientDisconnected()V

    goto/16 :goto_1

    .line 258
    :pswitch_2
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onDsOn(Z)V

    goto/16 :goto_1

    .line 261
    :pswitch_3
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x1

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onEqSettingsChanged(II)V

    goto/16 :goto_1

    .line 264
    :pswitch_4
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x1

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 267
    :pswitch_5
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onProfileSelected(I)V

    goto/16 :goto_1

    .line 270
    :pswitch_6
    const/4 v2, 0x0

    aget-object v2, p3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->onProfileSettingsChanged(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 250
    :sswitch_data_0
    .sparse-switch
        -0x742f1f19 -> :sswitch_6
        -0x6e617c61 -> :sswitch_0
        -0x56a20781 -> :sswitch_4
        -0x5473155a -> :sswitch_3
        -0x3c6756b3 -> :sswitch_2
        -0xa15887b -> :sswitch_5
        0x18bf4de5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClientConnected()V
    .locals 6

    .prologue
    .line 296
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$100(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/DsClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getDsVersion()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "version":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    const/4 v4, 0x1

    # setter for: Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z
    invoke-static {v2, v4}, Landroid/media/htcsoundfx/DolbyController;->access$202(Landroid/media/htcsoundfx/DolbyController;Z)Z

    .line 302
    const-string v2, "DolbyController.DsClientListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onClientConnected] Ds connected, version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v1    # "version":Ljava/lang/String;
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onClientConnected()V

    .line 311
    :cond_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const-string v2, "DolbyController.DsClientListener"

    const-string v4, "[onClientConnected] Ds connected failed, release DsClient"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # invokes: Landroid/media/htcsoundfx/DolbyController;->release()V
    invoke-static {v2}, Landroid/media/htcsoundfx/DolbyController;->access$300(Landroid/media/htcsoundfx/DolbyController;)V

    goto :goto_0

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onClientDisconnected()V
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 316
    :try_start_0
    const-string v1, "DolbyController.DsClientListener"

    const-string v3, "onClientDisconnected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    const/4 v3, 0x0

    # setter for: Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z
    invoke-static {v1, v3}, Landroid/media/htcsoundfx/DolbyController;->access$202(Landroid/media/htcsoundfx/DolbyController;Z)Z

    .line 318
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$500(Landroid/media/htcsoundfx/DolbyController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "DolbyController.DsClientListener"

    const-string v3, "DsClient disconnected unexpectly, DsClient should auto reconnect later"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :try_start_1
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onClientDisconnected()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 321
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 333
    const-string v1, "DolbyController.DsClientListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onDsOn]+ on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEqSettingsChanged(II)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onEqSettingsChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProfileSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onProfileSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onProfileSettingsChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->mOwner:Landroid/media/htcsoundfx/DolbyController;

    # getter for: Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    invoke-static {v1}, Landroid/media/htcsoundfx/DolbyController;->access$400(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/htcsoundfx/dolby/IDsClientEvents;->onProfileSettingsChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
