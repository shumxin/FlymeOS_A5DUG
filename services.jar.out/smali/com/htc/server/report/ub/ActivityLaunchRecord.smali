.class public final Lcom/htc/server/report/ub/ActivityLaunchRecord;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;,
        Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoEntry;,
        Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    }
.end annotation


# static fields
.field private static final MAX_ELEMENT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcDeviceInfoManager"

.field private static final VERBOSE:Z


# instance fields
.field private final mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

.field private final mHDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;)V
    .locals 1
    .param p1, "aHDIMWrapper"    # Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-direct {v0}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    .line 156
    iput-object p1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mHDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    .line 157
    return-void
.end method

.method private addULog(Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v2, p1, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;->activityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p1, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;->resumeTime:J

    sub-long v4, v0, v4

    iget-boolean v6, p1, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;->cnt_tag:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->addULog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 196
    :cond_0
    return-void
.end method

.method private addULog(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "cnt_tag"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x15752a00

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 200
    :cond_0
    const-string v0, "HtcDeviceInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not reasonable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mHDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mHDIMWrapper:Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;

    const-string v1, "system_server"

    const-string v2, "activity_launch_history"

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "package"

    aput-object v5, v4, v6

    const-string v5, "activity"

    aput-object v5, v4, v7

    const-string v5, "duration"

    aput-object v5, v4, v8

    new-array v5, v9, [Ljava/lang/String;

    aput-object p2, v5, v6

    aput-object p1, v5, v7

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/server/report/ub/HtcDeviceInfoManagerWrapper;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public noteAppDied(I)V
    .locals 5
    .param p1, "pid"    # I

    .prologue
    .line 181
    iget-object v4, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    monitor-enter v4

    .line 182
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-virtual {v3}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;->size()I

    move-result v2

    .line 183
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 184
    iget-object v3, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-virtual {v3, v0}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;->getByIndex(I)Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    move-result-object v1

    .line 185
    .local v1, "info":Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 186
    invoke-direct {p0, v1}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->addULog(Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;)V

    .line 187
    iget-object v3, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    invoke-virtual {v3, v0}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;->removeByIndex(I)Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    .line 183
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    .end local v1    # "info":Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    :cond_1
    monitor-exit v4

    .line 191
    return-void

    .line 190
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    iget v3, p1, Lcom/android/server/am/HtcWrapActivityRecord;->hashCode:I

    invoke-virtual {v1, v3}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;->removeByKey(I)Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    move-result-object v0

    .line 175
    .local v0, "info":Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    invoke-direct {p0, v0}, Lcom/htc/server/report/ub/ActivityLaunchRecord;->addULog(Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;)V

    .line 176
    monitor-exit v2

    .line 178
    .end local v0    # "info":Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    :cond_0
    return-void

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 8
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v7, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    monitor-enter v7

    .line 162
    :try_start_0
    new-instance v0, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    iget v1, p1, Lcom/android/server/am/HtcWrapActivityRecord;->pid:I

    iget-object v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->activityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/HtcWrapActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 163
    .local v0, "info":Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    iget-object v1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    iget v2, p1, Lcom/android/server/am/HtcWrapActivityRecord;->hashCode:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;->put(ILcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;)Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;

    .line 164
    iget-object v1, p0, Lcom/htc/server/report/ub/ActivityLaunchRecord;->mActiveTimeInfos:Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfoArrayList;->trim(I)Z

    .line 165
    monitor-exit v7

    .line 169
    .end local v0    # "info":Lcom/htc/server/report/ub/ActivityLaunchRecord$ActiveTimeInfo;
    :goto_0
    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 168
    :cond_0
    const-string v1, "HtcDeviceInfoManager"

    const-string v2, "no activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
