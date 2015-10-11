.class Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;
.super Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtcMobileDataCallback"
.end annotation


# instance fields
.field private basePhone:Lcom/android/internal/telephony/PhoneBase;

.field private criticalSection:Ljava/lang/Object;

.field private dataRoaming:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/os/Handler;)V
    .locals 1
    .param p1, "basePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 7779
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$ThreadCallback;-><init>()V

    .line 7780
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->criticalSection:Ljava/lang/Object;

    .line 7781
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->basePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 7782
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->h:Landroid/os/Handler;

    .line 7783
    return-void
.end method


# virtual methods
.method public getDataRoaming()Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 2

    .prologue
    .line 7786
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->criticalSection:Ljava/lang/Object;

    monitor-enter v1

    .line 7787
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->dataRoaming:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    monitor-exit v1

    return-object v0

    .line 7788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public needDataRoamingUpdate()Z
    .locals 1

    .prologue
    .line 7793
    const/4 v0, 0x1

    return v0
.end method

.method public updateDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotNphone"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p3, "status"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 7798
    const-string v3, "DCT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->basePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]updateDataRoaming from pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7800
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    .line 7801
    .local v0, "Slot":Lcom/android/internal/telephony/MobileNetwork$Selection;
    const/4 v2, 0x0

    .line 7803
    .local v2, "setting":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getDualSimDataRoamingPreferredSlot()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->basePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7805
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 7811
    :goto_0
    :try_start_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/MobileNetwork;->getDataRoaming(Landroid/content/Context;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 7816
    :goto_1
    if-nez v2, :cond_2

    .line 7833
    :cond_0
    :goto_2
    return-void

    .line 7807
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    goto :goto_0

    .line 7813
    :catch_0
    move-exception v1

    .line 7814
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "DCT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->basePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]updateDataRoaming eror."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 7820
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->criticalSection:Ljava/lang/Object;

    monitor-enter v4

    .line 7821
    :try_start_1
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->dataRoaming:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 7822
    const-string v3, "DCT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->basePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]updateDataRoaming Slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7823
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7825
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getAllowNationalRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7826
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->h:Landroid/os/Handler;

    const v5, 0x42085

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7829
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7830
    const-string v3, "DCT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->basePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]updateDataRoaming SPCS CDMA setting change."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7831
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$HtcMobileDataCallback;->h:Landroid/os/Handler;

    const v5, 0x42084

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 7823
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
