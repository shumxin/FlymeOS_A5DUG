.class Landroid/os/PowerManager$HtcCpuCtrl$3;
.super Ljava/lang/Object;
.source "PowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager$HtcCpuCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/PowerManager$HtcCpuCtrl;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$HtcCpuCtrl;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Landroid/os/PowerManager$HtcCpuCtrl$3;->this$1:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Landroid/os/PowerManager$HtcCpuCtrl$3;->this$1:Landroid/os/PowerManager$HtcCpuCtrl;

    # invokes: Landroid/os/PowerManager$HtcCpuCtrl;->releaserPost()V
    invoke-static {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->access$300(Landroid/os/PowerManager$HtcCpuCtrl;)V

    .line 1352
    return-void
.end method
