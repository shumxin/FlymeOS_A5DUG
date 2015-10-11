.class public Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
.super Landroid/app/Service;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetHelper"
.end annotation


# static fields
.field private static final EVENT_END_INTENT:I = 0x3

.field private static final EVENT_INIT:I = 0x1

.field private static final EVENT_NEW_INTENT:I = 0x2

.field private static final SHARED_PREFERENCE_FILE:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mainHandler:Landroid/os/Handler;

.field private receivedIntents:I

.field private seqNoIntents:I

.field private stopReceiveIntents:Z

.field private thread:Landroid/os/HandlerThread;

.field private threadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2430
    const-class v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2225
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 2225
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 2225
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->threadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2225
    sget-object v0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 2225
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2225
    iget v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    return v0
.end method

.method static synthetic access$2210(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    .prologue
    .line 2225
    iget v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 2225
    iput-boolean p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z

    return p1
.end method

.method private static activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetHelperClass"    # Ljava/lang/Class;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2646
    const/4 v2, 0x0

    .line 2647
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 2648
    .local v0, "compService":Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 2649
    const-class v3, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2650
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2654
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2658
    :goto_0
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 2659
    new-instance v2, Ljava/lang/ClassNotFoundException;

    .end local v2    # "exception":Ljava/lang/Throwable;
    const-string v3, "No service existed"

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 2661
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v2

    .line 2655
    :catch_0
    move-exception v1

    .line 2656
    .local v1, "exStart":Ljava/lang/Throwable;
    move-object v2, v1

    goto :goto_0
.end method

.method private appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "givenPostfix"    # Ljava/lang/String;

    .prologue
    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2438
    .local v0, "sbTag":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2439
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit16 v1, v1, 0xfff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2441
    if-eqz p2, :cond_0

    .line 2442
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2444
    :cond_0
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    if-eqz p1, :cond_1

    .line 2446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "cls"    # Ljava/lang/Class;
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 2604
    const/4 v3, 0x0

    .line 2606
    .local v3, "shpref":Landroid/content/SharedPreferences;
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2617
    :cond_0
    :goto_0
    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->loadCachedStatus(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;
    invoke-static {v3, p1, p3, p4}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2400(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 2618
    .local v0, "cacheLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    # invokes: Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->findCachedStatus(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/MobileNetwork$CachedSetting;->access$2500(Ljava/util/LinkedList;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 2607
    .end local v0    # "cacheLine":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/internal/telephony/MobileNetwork$CachedSetting;>;"
    :catch_0
    move-exception v1

    .line 2608
    .local v1, "exLoadSp":Ljava/lang/Throwable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2610
    .local v2, "sbErr":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_1

    .line 2611
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2613
    :cond_1
    const-string v4, "Fail to load previous status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    const-string v4, "LibMobileNetwork"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final forceCallbackUpdate(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2349
    const-string v0, "D."

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createQueryIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1100(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final forceToggleDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2291
    const-string v5, "B."

    .line 2292
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "roamingSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2295
    move-object v6, p2

    .line 2296
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-nez v6, :cond_0

    .line 2297
    const-string v0, "roamingSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$1000(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v6

    .line 2300
    const-string v0, "roamingSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2302
    :cond_0
    return-object v6
.end method

.method public static final forceToggleDataRoamingSound(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2321
    const-string v5, "C."

    .line 2322
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "roamSoundSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2325
    move-object v6, p2

    .line 2326
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v6, :cond_0

    .line 2327
    const-string v0, "roamSoundSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v6

    .line 2330
    const-string v0, "roamSoundSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2332
    :cond_0
    return-object v6
.end method

.method public static final forceToggleMobileData(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Setting;Ljava/lang/Class;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p2, "prefer"    # Lcom/android/internal/telephony/MobileNetwork$Setting;
    .param p3, "widgetHelperClass"    # Ljava/lang/Class;

    .prologue
    .line 2261
    const-string v5, "A."

    .line 2262
    .local v5, "logTag":Ljava/lang/String;
    const-string v2, "dataSetting"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->createSetupIntentForBackgroundHandler(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/MobileNetwork;->access$900(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/String;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    .line 2265
    move-object v6, p2

    .line 2266
    .local v6, "preview":Lcom/android/internal/telephony/MobileNetwork$Setting;
    if-nez v6, :cond_0

    .line 2267
    const-string v0, "dataSetting"

    const-class v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-static {p0, v0, p1, v1, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->findCachedStatus(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v6

    .line 2270
    const-string v0, "dataSetting"

    invoke-static {v0, v6}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2272
    :cond_0
    return-object v6
.end method

.method private handleCacheWriteback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 11
    .param p1, "tagPostfix"    # Ljava/lang/String;
    .param p2, "writeback"    # Ljava/lang/Object;

    .prologue
    .line 2545
    if-eqz p2, :cond_4

    instance-of v8, p2, Landroid/os/Bundle;

    if-eqz v8, :cond_4

    move-object v7, p2

    .line 2546
    check-cast v7, Landroid/os/Bundle;

    .line 2547
    .local v7, "update":Landroid/os/Bundle;
    const-string v8, "dataSetting"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 2548
    .local v2, "checkMobileData":Z
    const-string v8, "roamingSetting"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 2549
    .local v0, "checkDataRoaming":Z
    const-string v8, "roamSoundSetting"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 2550
    .local v1, "checkDataRoamingSound":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 2554
    :cond_0
    const/4 v5, 0x0

    .line 2556
    .local v5, "pref":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->SHARED_PREFERENCE_FILE:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2557
    if-eqz v5, :cond_4

    .line 2558
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2559
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v3, :cond_4

    .line 2560
    if-eqz v2, :cond_1

    .line 2561
    const-string v8, "dataSetting"

    const-string v9, "dataSetting"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2564
    :cond_1
    if-eqz v0, :cond_2

    .line 2565
    const-string v8, "roamingSetting"

    const-string v9, "roamingSetting"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2568
    :cond_2
    if-eqz v1, :cond_3

    .line 2569
    const-string v8, "roamSoundSetting"

    const-string v9, "roamSoundSetting"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2572
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2601
    .end local v0    # "checkDataRoaming":Z
    .end local v1    # "checkDataRoamingSound":Z
    .end local v2    # "checkMobileData":Z
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "pref":Landroid/content/SharedPreferences;
    .end local v7    # "update":Landroid/os/Bundle;
    :cond_4
    :goto_0
    return-void

    .line 2593
    .restart local v0    # "checkDataRoaming":Z
    .restart local v1    # "checkDataRoamingSound":Z
    .restart local v2    # "checkMobileData":Z
    .restart local v5    # "pref":Landroid/content/SharedPreferences;
    .restart local v7    # "update":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 2594
    .local v4, "exUpdateSp":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2595
    .local v6, "sbErr":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2596
    const-string v8, "Fail to update status"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    const-string v8, "LibMobileNetwork"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 2452
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    .line 2453
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper$1;-><init>(Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    .line 2538
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 2539
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2540
    aput-object p1, v0, v3

    .line 2541
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2542
    return-void
.end method

.method private static logTogglePreview(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 4
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "preview"    # Landroid/os/Parcelable;

    .prologue
    .line 2622
    if-eqz p1, :cond_1

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->runtimeDebugOn()Z
    invoke-static {}, Lcom/android/internal/telephony/MobileNetwork;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2624
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "preview "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2627
    .local v1, "writer":Ljava/io/CharArrayWriter;
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v2, :cond_2

    .line 2628
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 2630
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    :cond_0
    :goto_0
    const-string v2, "LibMobileNetwork"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "writer":Ljava/io/CharArrayWriter;
    :cond_1
    return-void

    .line 2632
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "writer":Ljava/io/CharArrayWriter;
    .restart local p1    # "preview":Landroid/os/Parcelable;
    :cond_2
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v2, :cond_3

    .line 2633
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->access$2600(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 2635
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2637
    .restart local p1    # "preview":Landroid/os/Parcelable;
    :cond_3
    instance-of v2, p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v2, :cond_0

    .line 2638
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p1    # "preview":Landroid/os/Parcelable;
    # invokes: Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->access$2700(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCallbackClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 2242
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2357
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 2365
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2366
    invoke-virtual {p0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->init(Landroid/content/Context;)V

    .line 2367
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->destroyThread(Landroid/os/HandlerThread;)Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/internal/telephony/MobileNetwork;->access$1200(Landroid/os/HandlerThread;)Ljava/lang/Throwable;

    .line 2417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->thread:Landroid/os/HandlerThread;

    .line 2418
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2419
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 2374
    iget-boolean v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopReceiveIntents:Z

    if-nez v5, :cond_0

    .line 2375
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->receivedIntents:I

    .line 2376
    iget v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    .line 2377
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->mainHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->seqNoIntents:I

    invoke-virtual {v6, v8, p3, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2408
    :goto_0
    return v8

    .line 2380
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2381
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_5

    const-string v5, "logTag"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->appendLogTag(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 2382
    const-string v5, "resend "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2384
    if-eqz p1, :cond_1

    .line 2385
    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2386
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    :cond_1
    const/4 v1, 0x0

    .line 2390
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2392
    .local v4, "stopResult":Z
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->stopSelfResult(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2396
    :goto_2
    if-eqz v1, :cond_2

    .line 2397
    const-string v5, " stop-fail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2399
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->context:Landroid/content/Context;

    invoke-static {v5, v6, p1}, Lcom/android/internal/telephony/MobileNetwork$WidgetHelper;->activeService(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v2

    .line 2400
    .local v2, "exceptionService":Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 2401
    const-string v5, " resend-fail"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2403
    :cond_3
    if-nez v1, :cond_4

    .line 2404
    move-object v1, v2

    .line 2406
    :cond_4
    const-string v5, "LibMobileNetwork"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "exception":Ljava/lang/Throwable;
    .end local v2    # "exceptionService":Ljava/lang/Throwable;
    .end local v4    # "stopResult":Z
    :cond_5
    move-object v5, v6

    .line 2381
    goto :goto_1

    .line 2393
    .restart local v1    # "exception":Ljava/lang/Throwable;
    .restart local v4    # "stopResult":Z
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "exStopSelf":Ljava/lang/Throwable;
    move-object v1, v0

    goto :goto_2
.end method
