.class Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TargetQueuingAlarm"
.end annotation


# instance fields
.field private final mIntentName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2805
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mPackageName:Ljava/lang/String;

    .line 2806
    iput-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mIntentName:Ljava/lang/String;

    .line 2807
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intentName"    # Ljava/lang/String;

    .prologue
    .line 2809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2810
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mPackageName:Ljava/lang/String;

    .line 2811
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mIntentName:Ljava/lang/String;

    .line 2812
    return-void
.end method


# virtual methods
.method public getIntentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mIntentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$TargetQueuingAlarm;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
