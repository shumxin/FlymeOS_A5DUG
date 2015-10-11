.class final Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManagerWrapper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClassDeviceInfoManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mDeviceInfoManagerObj:Ljava/lang/Object;

.field private mMethodConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private mMethodInit:Ljava/lang/reflect/Method;

.field private mMethodStop:Ljava/lang/reflect/Method;

.field private mMethodWrite:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->TAG:Ljava/lang/String;

    .line 55
    :try_start_0
    invoke-direct {p0}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->loadClassMethods()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :cond_0
    :goto_1
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "HtcDeviceInfoManagerWrapper constructor end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[HtcDeviceInfoManager] cannot find class or method"

    invoke-static {v1, v0}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "fail to invoke constructor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getLibPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "aeiPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v2, "sysFrameDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    new-instance v0, Ljava/io/File;

    const-string v3, "ub.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v0, "aeiFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 35
    .end local v0    # "aeiFile":Ljava/io/File;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    const-string v1, "/system/framework/ub.jar"

    .line 37
    :cond_1
    return-object v1
.end method

.method private loadClassMethods()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 71
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->getLibPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 72
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v1, "com.htc.ub.HtcDeviceInfoManager"

    invoke-static {v1, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mClassDeviceInfoManager:Ljava/lang/Class;

    .line 73
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mClassDeviceInfoManager:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mClassDeviceInfoManager:Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodConstructor:Ljava/lang/reflect/Constructor;

    .line 76
    iget-object v3, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mClassDeviceInfoManager:Ljava/lang/Class;

    const-string v4, "init"

    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodInit:Ljava/lang/reflect/Method;

    .line 77
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mClassDeviceInfoManager:Ljava/lang/Class;

    const-string v3, "write"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodWrite:Ljava/lang/reflect/Method;

    .line 78
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mClassDeviceInfoManager:Ljava/lang/Class;

    const-string v3, "stop"

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodStop:Ljava/lang/reflect/Method;

    .line 81
    :cond_0
    return-void
.end method

.method private static throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "detailMessage"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    move-object v0, p0

    .line 42
    .local v0, "_message":Ljava/lang/String;
    move-object v1, p1

    .line 43
    .local v1, "_throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;

    invoke-direct {v3, v0, v1}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "UDove_hdim_wrapper"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodInit:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodInit:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke init method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodStop:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodStop:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke notify shutdown method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "labels"    # [Ljava/lang/String;
    .param p5, "values"    # [Ljava/lang/String;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodWrite:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mMethodWrite:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->mDeviceInfoManagerObj:Ljava/lang/Object;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HtcDeviceInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke write method! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
