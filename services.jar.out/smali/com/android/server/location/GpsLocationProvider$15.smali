.class Lcom/android/server/location/GpsLocationProvider$15;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->write_WLD(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field final synthetic val$onoff:Z

.field final synthetic val$packagename:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;ZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 3531
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$15;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iput-boolean p2, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$onoff:Z

    iput-object p3, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$packagename:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3534
    const-string v3, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " write_WLD "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$onoff:Z

    if-eqz v2, :cond_0

    const-string v2, "GPS ON "

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$packagename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    # getter for: Lcom/android/server/location/GpsLocationProvider;->Htc_notifyWLDLocationRequest:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$5700()Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3536
    const-string v2, "GpsLocationProvider"

    const-string v3, "Htc_notifyWLDLocationRequest is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :goto_1
    return-void

    .line 3534
    :cond_0
    const-string v2, " GPS OFF "

    goto :goto_0

    .line 3539
    :cond_1
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/Object;

    .line 3540
    .local v0, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$onoff:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3541
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3542
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$15;->val$packagename:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 3543
    const/4 v2, 0x3

    const-string v3, "gps"

    aput-object v3, v0, v2

    .line 3546
    :try_start_0
    # getter for: Lcom/android/server/location/GpsLocationProvider;->Htc_notifyWLDLocationRequest:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$5700()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 3547
    :catch_0
    move-exception v1

    .line 3548
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 3549
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 3550
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 3551
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 3552
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
