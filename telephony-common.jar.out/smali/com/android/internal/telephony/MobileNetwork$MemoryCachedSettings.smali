.class Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCachedSettings"
.end annotation


# instance fields
.field private prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

.field private prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

.field private prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5101
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5102
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5103
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5105
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5132
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5133
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5134
    iput-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5135
    return-void
.end method

.method public getCachedDataPathSetting()Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 1

    .prologue
    .line 5120
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    return-object v0
.end method

.method public getCachedMobileDataSetting()Lcom/android/internal/telephony/MobileNetwork$Setting;
    .locals 1

    .prologue
    .line 5128
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    return-object v0
.end method

.method public getCachedRoamingSetting()Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    return-object v0
.end method

.method public updateCachedDataPathSetting(Lcom/android/internal/telephony/MobileNetwork$Selection;)V
    .locals 0
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 5116
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevDataPathSetting:Lcom/android/internal/telephony/MobileNetwork$Selection;

    .line 5117
    return-void
.end method

.method public updateCachedMobileDataSetting(Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    .locals 0
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$Setting;

    .prologue
    .line 5124
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevMobileDataSetting:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 5125
    return-void
.end method

.method public updateCachedRoamingSetting(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 0
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 5108
    iput-object p1, p0, Lcom/android/internal/telephony/MobileNetwork$MemoryCachedSettings;->prevRoamingSetting:Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 5109
    return-void
.end method
