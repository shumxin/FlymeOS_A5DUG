.class Lcom/htc/server/ApplicationState;
.super Ljava/lang/Object;
.source "HtcTmoAppUsageListener.java"


# instance fields
.field private mProcessIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStopReason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ApplicationState;->mStopReason:I

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/server/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    .line 244
    return-void
.end method


# virtual methods
.method public addProcess(I)V
    .locals 2
    .param p1, "processId"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/server/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public getTermReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/htc/server/HtcTmoAppUsageListener;->APP_TERM_REASONS:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/server/ApplicationState;->mStopReason:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeProcess(II)Z
    .locals 2
    .param p1, "processId"    # I
    .param p2, "stopReason"    # I

    .prologue
    .line 255
    iget v0, p0, Lcom/htc/server/ApplicationState;->mStopReason:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/server/ApplicationState;->mStopReason:I

    .line 256
    iget-object v0, p0, Lcom/htc/server/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/htc/server/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
