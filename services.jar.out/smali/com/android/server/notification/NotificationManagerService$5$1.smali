.class Lcom/android/server/notification/NotificationManagerService$5$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$5;)V
    .locals 0

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->this$1:Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1657
    const-string v0, "NotificationService"

    const-string v1, "countdown timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5$1;->this$1:Lcom/android/server/notification/NotificationManagerService$5;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/notification/NotificationManagerService$5;->setCameraCountdownMode(ZI)V

    .line 1659
    return-void
.end method
