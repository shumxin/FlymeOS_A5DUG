.class Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsPickupTalkingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAngleDetector;


# direct methods
.method private constructor <init>(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/HtcAngleDetector;Lcom/android/server/display/HtcAngleDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/HtcAngleDetector;
    .param p2, "x1"    # Lcom/android/server/display/HtcAngleDetector$1;

    .prologue
    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;-><init>(Lcom/android/server/display/HtcAngleDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 1601
    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1602
    const-string v5, "HtcAngleDetector"

    const-string v6, "IsPickupTalking: running."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v5}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1607
    const/high16 v3, 0x42480000    # 50.0f

    .line 1608
    .local v3, "smallestProjXZ":F
    const/4 v4, -0x1

    .line 1609
    .local v4, "smallestPtr":I
    const/4 v0, 0x0

    .line 1610
    .local v0, "biggestProjXZ":F
    const/4 v1, -0x1

    .line 1612
    .local v1, "biggestPtr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_2

    .line 1613
    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v5

    aget v5, v5, v2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v5

    aget v5, v5, v2

    cmpg-float v5, v5, v3

    if-gez v5, :cond_1

    .line 1614
    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v5

    aget v3, v5, v2

    .line 1615
    move v4, v2

    .line 1612
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_4

    .line 1620
    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v5

    aget v5, v5, v2

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v5

    aget v5, v5, v2

    cmpl-float v5, v5, v0

    if-lez v5, :cond_3

    .line 1621
    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v5

    aget v0, v5, v2

    .line 1622
    move v1, v2

    .line 1619
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1626
    :cond_4
    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 1627
    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1628
    const-string v5, "HtcAngleDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsPickupTalking is TRUE, biggest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", smallest = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_5
    sub-float v5, v0, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->TALKING_MOVEMENT_XZ:F
    invoke-static {v6}, Lcom/android/server/display/HtcAngleDetector;->access$7100(Lcom/android/server/display/HtcAngleDetector;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    iget-object v6, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static {v6}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static {v7}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static {v8}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v8

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1631
    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1632
    const-string v5, "HtcAngleDetector"

    const-string v6, "IsPickupTalking: Moving quickly to ear after picked up detected. turning off."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_6
    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static {v5, v6}, Lcom/android/server/display/HtcAngleDetector;->access$2502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1635
    iget-object v5, p0, Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;->this$0:Lcom/android/server/display/HtcAngleDetector;

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static {v5}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 1639
    .end local v0    # "biggestProjXZ":F
    .end local v1    # "biggestPtr":I
    .end local v2    # "i":I
    .end local v3    # "smallestProjXZ":F
    .end local v4    # "smallestPtr":I
    :cond_7
    return-void
.end method
