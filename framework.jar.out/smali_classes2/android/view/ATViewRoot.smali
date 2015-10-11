.class Landroid/view/ATViewRoot;
.super Ljava/lang/Object;
.source "ATViewRoot.java"


# static fields
.field private static final AT_APK:Ljava/lang/String; = "/data/at/app/ATServer.apk"

.field private static final AT_CLASS:Ljava/lang/String; = "com.htc.autotest.server.ViewRootExt"

.field private static final AT_CLASSPATH_COUNT:Ljava/lang/String; = "sr.runner.classpath.count"

.field private static final AT_CLASS_PATH_WORKER_FORMAT:Ljava/lang/String; = "sr.runner.classpath.%02d"

.field private static final AT_COMMAND:Ljava/lang/String; = "AT"

.field private static final AT_GSR_APK:Ljava/lang/String; = "/data/local/tmp/at/app/ATServer.apk"

.field private static final AT_GSR_LIB:Ljava/lang/String; = "/data/local/tmp/at/app/AutoTestHelper.jar"

.field private static final AT_GSR_PLUGIN_INFO_FILE:Ljava/lang/String; = "/data/local/tmp/at/pluginInfo.txt"

.field private static final AT_GSR_PREFIX_COMMAND:Ljava/lang/String; = "_GSR"

.field private static final AT_GSR_REG:Ljava/lang/String; = "^_GSR\\s"

.field private static final AT_LIB:Ljava/lang/String; = "/data/at/app/AutoTestHelper.jar"

.field private static final AT_METHOD:Ljava/lang/String; = "dispatchCommand"

.field private static final LOG_TAG:Ljava/lang/String; = "ATScriptRunner"

.field public static final SRVER:Ljava/lang/String; = "12132065"

.field private static smInstance:Landroid/view/ATViewRoot;


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mInited:Z

.field private mLoader:Ldalvik/system/PathClassLoader;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ATViewRoot;->mInited:Z

    .line 50
    iput-object v1, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 51
    iput-object v1, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 52
    iput-object v1, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private ensureGSRInit()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 223
    iget-boolean v5, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-eqz v5, :cond_0

    .line 265
    :goto_0
    return v3

    .line 230
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v1, "cp_loader":Ljava/lang/StringBuilder;
    const-string v5, "/data/local/tmp/at/app/ATServer.apk"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p0}, Landroid/view/ATViewRoot;->getGSRClassPath()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "classPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 236
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/data/local/tmp/at/app/AutoTestHelper.jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    const-string v5, "ATScriptRunner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATViewRoot.ensureInit(), GSR cp_loader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 241
    const-string v5, "com.htc.autotest.server.ViewRootExt"

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 242
    iget-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    const-string v6, "dispatchCommand"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Ljava/io/OutputStream;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 243
    iget-object v5, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    :goto_1
    iput-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v3, :cond_3

    .line 253
    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 254
    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 255
    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 257
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "cp_loader":Ljava/lang/StringBuilder;
    :goto_2
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    goto/16 :goto_0

    .restart local v0    # "classPath":Ljava/lang/String;
    .restart local v1    # "cp_loader":Ljava/lang/StringBuilder;
    :cond_2
    move v3, v4

    .line 243
    goto :goto_1

    .line 261
    :cond_3
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 245
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "cp_loader":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v3, :cond_4

    .line 253
    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 254
    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 255
    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 257
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 261
    :cond_4
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 251
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v4, :cond_5

    .line 253
    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 254
    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 255
    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 257
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_3
    throw v3

    :cond_5
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private ensureInit()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 76
    iget-boolean v5, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-eqz v5, :cond_0

    .line 118
    :goto_0
    return v3

    .line 83
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "cp_loader":Ljava/lang/StringBuilder;
    const-string v5, "/data/at/app/ATServer.apk"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p0}, Landroid/view/ATViewRoot;->getClassPath()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "classPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 89
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/data/at/app/AutoTestHelper.jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    const-string v5, "ATScriptRunner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATViewRoot.ensureInit(),SR cp_loader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v5, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 94
    const-string v5, "com.htc.autotest.server.ViewRootExt"

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 95
    iget-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    const-string v6, "dispatchCommand"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Ljava/io/OutputStream;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 96
    iget-object v5, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    :goto_1
    iput-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v3, :cond_3

    .line 106
    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 107
    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 108
    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 110
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "cp_loader":Ljava/lang/StringBuilder;
    :goto_2
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    goto/16 :goto_0

    .restart local v0    # "classPath":Ljava/lang/String;
    .restart local v1    # "cp_loader":Ljava/lang/StringBuilder;
    :cond_2
    move v3, v4

    .line 96
    goto :goto_1

    .line 114
    :cond_3
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 98
    .end local v0    # "classPath":Ljava/lang/String;
    .end local v1    # "cp_loader":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    iget-boolean v3, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v3, :cond_4

    .line 106
    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 107
    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 108
    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 110
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    :cond_4
    const-string v3, "ATScriptRunner"

    const-string v4, "ATViewRoot.ensureInit() = true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Landroid/view/ATViewRoot;->mInited:Z

    if-nez v4, :cond_5

    .line 106
    iput-object v10, p0, Landroid/view/ATViewRoot;->mLoader:Ldalvik/system/PathClassLoader;

    .line 107
    iput-object v10, p0, Landroid/view/ATViewRoot;->mClazz:Ljava/lang/Class;

    .line 108
    iput-object v10, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    .line 110
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_3
    throw v3

    :cond_5
    const-string v4, "ATScriptRunner"

    const-string v5, "ATViewRoot.ensureInit() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getClassPath()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "classPath":Ljava/lang/StringBuilder;
    const-string v5, "sr.runner.classpath.count"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_2

    .line 60
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "sr.runner.classpath.%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "strFormat":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "cp":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 66
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "cp":Ljava/lang/String;
    .end local v4    # "strFormat":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getGSRClassPath()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 123
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/local/tmp/at/pluginInfo.txt"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "pluginInfo":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 125
    const-string v10, "ATScriptRunner"

    const-string v11, "pluginInfo.txt file not exists."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-object v9

    .line 127
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 128
    const-string v10, "ATScriptRunner"

    const-string v11, "pluginInfo.txt is not a file."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0, v5}, Landroid/view/ATViewRoot;->readPluginInfo(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v6

    .line 136
    .local v6, "pluginInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 137
    .local v1, "count":I
    const-string v10, "sr.runner.classpath.count"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 139
    .local v7, "strCount":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "classPath":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-gt v4, v1, :cond_4

    .line 148
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "sr.runner.classpath.%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "strFormat":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "cp":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 154
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "classPath":Ljava/lang/StringBuilder;
    .end local v2    # "cp":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "strFormat":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v10, "ATScriptRunner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' to integer."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "classPath":Ljava/lang/StringBuilder;
    .restart local v4    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public static getInstance()Landroid/view/ATViewRoot;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/view/ATViewRoot;

    invoke-direct {v0}, Landroid/view/ATViewRoot;-><init>()V

    sput-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    .line 28
    :cond_0
    sget-object v0, Landroid/view/ATViewRoot;->smInstance:Landroid/view/ATViewRoot;

    return-object v0
.end method

.method private parseProperty(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 202
    :cond_0
    const-string v1, "ATScriptRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal arguments. str:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "property":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 214
    const-string v1, "ATScriptRunner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal format \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readPluginInfo(Ljava/io/File;)Ljava/util/HashMap;
    .locals 10
    .param p1, "property"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 166
    .local v5, "pluginPropMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 167
    .local v6, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 168
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 170
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 173
    invoke-direct {p0, v6, v5}, Landroid/view/ATViewRoot;->parseProperty(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 176
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_1
    :try_start_3
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v0, :cond_0

    .line 182
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 188
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 190
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    :cond_1
    :goto_3
    return-object v5

    .line 180
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_2
    if-eqz v1, :cond_3

    .line 182
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 188
    :cond_3
    :goto_4
    if-eqz v4, :cond_7

    .line 190
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 193
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 183
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 184
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 193
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 183
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 184
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    if-eqz v0, :cond_4

    .line 182
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 188
    :cond_4
    :goto_6
    if-eqz v3, :cond_1

    .line 190
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 191
    :catch_6
    move-exception v2

    .line 192
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 183
    :catch_7
    move-exception v2

    .line 184
    const-string v7, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v0, :cond_5

    .line 182
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 188
    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 190
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 193
    :cond_6
    :goto_9
    throw v7

    .line 183
    :catch_8
    move-exception v2

    .line 184
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "ATScriptRunner"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 180
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 177
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 175
    :catch_c
    move-exception v2

    goto/16 :goto_1

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :cond_7
    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_3
.end method


# virtual methods
.method public dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/lang/String;
    .param p4, "clientStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    const-string v4, "AT"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    move-object v1, p3

    .line 283
    .local v1, "subcommand":Ljava/lang/String;
    const-string v4, "_GSR"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    const-string v4, "^_GSR\\s"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-direct {p0}, Landroid/view/ATViewRoot;->ensureGSRInit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/view/ATViewRoot;->mMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    .line 299
    goto :goto_0

    .line 287
    :cond_3
    invoke-direct {p0}, Landroid/view/ATViewRoot;->ensureInit()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ATScriptRunner"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
