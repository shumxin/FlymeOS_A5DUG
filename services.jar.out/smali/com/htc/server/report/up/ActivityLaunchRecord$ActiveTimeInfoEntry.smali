.class final Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfoEntry;
.super Ljava/lang/Object;
.source "ActivityLaunchRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/report/up/ActivityLaunchRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActiveTimeInfoEntry"
.end annotation


# instance fields
.field final activeTimeInfo:Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;

.field final key:I


# direct methods
.method public constructor <init>(ILcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;)V
    .locals 0
    .param p1, "aKey"    # I
    .param p2, "aActiveTimeInfo"    # Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfoEntry;->key:I

    .line 41
    iput-object p2, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Key) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfoEntry;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / (ActivityTimeInfo) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfoEntry;->activeTimeInfo:Lcom/htc/server/report/up/ActivityLaunchRecord$ActiveTimeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
