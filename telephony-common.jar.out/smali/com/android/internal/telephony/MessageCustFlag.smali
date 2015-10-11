.class public Lcom/android/internal/telephony/MessageCustFlag;
.super Ljava/lang/Object;
.source "MessageCustFlag.java"


# static fields
.field private static final AP_NAME_ANDROID_MESSAGE:Ljava/lang/String; = "Message"

.field private static final AP_NAME_ANDROID_TELEPHONYMESSAGE:Ljava/lang/String; = "Android_TelephonyMessage"

.field private static final AP_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final BELL_MOBILITY_WWE:I = 0x5

.field private static final BOOST_NETWORKCODE:Ljava/lang/String; = "311870"

.field private static final FLAG_HAS_ITS_ON_AP:Ljava/lang/String; = "has_its_on_ap"

.field private static final FLAG_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field private static final FLAG_SKU_ID:Ljava/lang/String; = "sku_id"

.field private static final FLAG_SUPPORT_CHINA_SENSE:Ljava/lang/String; = "support_china_sense_feature"

.field private static final FLAG_SUPPORT_LTE:Ljava/lang/String; = "support_lte"

.field protected static final MCCMNC_APTG:Ljava/lang/String; = "46605"

.field private static final MCCMNC_HUTCHISON_TEL:Ljava/lang/String; = "45404"

.field private static final SKU_ACG_US:I = 0x72

.field private static final SKU_APTG_TW:I = 0x4b

.field private static final SKU_BRIGHTSTAR_TELCEL_SPA:I = 0x10

.field private static final SKU_CELLSOUTH_WWE:I = 0x5e

.field private static final SKU_CINGULAR_USA:I = 0x7

.field private static final SKU_CRICKET_US:I = 0x8

.field private static final SKU_HTCCN_CHS:I = 0x19

.field private static final SKU_HTCCN_CHS_CMCC:I = 0x1a

.field private static final SKU_HTCCN_CHS_CT:I = 0x1b

.field private static final SKU_HTCCN_CHS_CT_LAB:I = 0x1c

.field private static final SKU_HTC_ASIA_AUS:I = 0x20

.field private static final SKU_HTC_ASIA_INDIA:I = 0x21

.field private static final SKU_HTC_ASIA_TW:I = 0x49

.field private static final SKU_HTC_LA_IUSACELL_MX_SPA:I = 0x16

.field private static final SKU_HTC_WWE_MMR:I = 0x4

.field private static final SKU_KDDI_JP:I = 0x1f

.field private static final SKU_KDDI_ODM_JP:I = 0x4f

.field private static final SKU_LA_ESN_TELCEL:I = 0x15

.field private static final SKU_LRA_US:I = 0x71

.field private static final SKU_METROPCS_US:I = 0x51

.field private static final SKU_O2_UK:I = 0x2d

.field private static final SKU_OPENMOBILE_US:I = 0x52

.field private static final SKU_OPTUS_AU:I = 0x24

.field private static final SKU_ORANGE_UK:I = 0x32

.field private static final SKU_SPRINT_WWE:I = 0xa

.field private static final SKU_SPRINT_WWE_BOOST:I = 0x55

.field private static final SKU_SPRINT_WWE_VM:I = 0x62

.field private static final SKU_TELSTRA_WWE:I = 0x25

.field private static final SKU_TMOUS:I = 0xb

.field private static final SKU_TMO_DE:I = 0x38

.field private static final SKU_UTSTARCOM_WWE_GENERIC:I = 0xc

.field private static final SKU_VERIZON_WWE:I = 0xd

.field private static final SKU_VODAFONE_AT:I = 0x3d

.field private static final SKU_VODAFONE_CH_GER:I = 0x3e

.field private static final SKU_VODAFONE_FRA:I = 0x3f

.field private static final SKU_VODAFONE_GER:I = 0x40

.field private static final SKU_VODAFONE_NL:I = 0x41

.field private static final SKU_VODAFONE_PTG:I = 0x42

.field private static final SKU_VODAFONE_SPA:I = 0x43

.field private static final SKU_VODAFONE_UK:I = 0x44

.field private static final SPRINT_NETWORKCODE:Ljava/lang/String; = "310120"

.field public static final STRING_DEFAULT_NA:Ljava/lang/String; = "NA"

.field private static final TAG:Ljava/lang/String; = "MessageCustFlag"

.field private static final VMUS_NETWORKCODE:Ljava/lang/String; = "311490"

.field private static messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

.field private static messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static systemCustReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 73
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 74
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/MessageCustFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageCustFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 96
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_3

    .line 97
    const-string v1, "System"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 98
    const-string v1, "Android_TelephonyMessage"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 99
    const-string v1, "Message"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 104
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 109
    const-string v1, "MessageCustFlag"

    const-string v2, "messageCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_2

    .line 113
    const-string v1, "MessageCustFlag"

    const-string v2, "sMessageApCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    return-void

    .line 101
    :cond_3
    const-string v1, "MessageCustFlag"

    const-string v2, "custManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkAndInit()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/MessageCustFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageCustFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    .line 120
    :cond_1
    return-void
.end method

.method public static getCustomizeDefaultSmsAp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2088
    const-string v0, "telephony_sms_default_sms_ap"

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailGatewayNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1913
    const-string v0, "telephony_sms_email_gateway_number"

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageApBooleanCustFlag(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 196
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 198
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 199
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMessageApCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method private static getMessageBooleanCustFlag(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 133
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 135
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method private static getMessageStringArrayCustFlag(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 177
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 178
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return string array defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local p1    # "defaultValue":[Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":[Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 156
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return string defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getMobilBoxPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2062
    const-string v0, "de.telekom.mds.mbp"

    return-object v0
.end method

.method public static getOperatorDefineSmsShortCode()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1995
    const-string v0, "telephony_sms_operator_define_sms_short_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringArrayCustFlag(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSenseVersion()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 235
    sget-object v3, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v3, :cond_1

    .line 236
    const-string v3, "MessageCustFlag"

    const-string v4, "systemCustReader is null! getSenseVersion return default 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .local v1, "senseVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 240
    .end local v1    # "senseVersion":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1    # "senseVersion":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sense_version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 248
    const-string v3, "a"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 254
    const-string v3, "MessageCustFlag"

    const-string v4, "get wrong Sense version!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSkuId()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 213
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 215
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 216
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .local v0, "skuId":I
    :goto_0
    return v0

    .line 220
    .end local v0    # "skuId":I
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 221
    .restart local v0    # "skuId":I
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sku_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAptgProject()Z
    .locals 6

    .prologue
    .line 523
    const-string v1, "46605"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 524
    .local v0, "isAPTGmccmnc":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAPTGmccmnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    const/4 v1, 0x1

    .line 530
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAttSku()Z
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 387
    .local v0, "skuId":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 388
    const/4 v1, 0x1

    .line 390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isBoostProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 480
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 480
    goto :goto_0

    .line 481
    :cond_2
    const-string v3, "311870"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 484
    goto :goto_0
.end method

.method private static isCmccSku()Z
    .locals 2

    .prologue
    .line 378
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 379
    .local v0, "skuId":I
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 380
    const/4 v1, 0x1

    .line 382
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCricketUsSku()Z
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 395
    .local v0, "skuId":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 396
    const/4 v1, 0x1

    .line 398
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCtSku()Z
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 369
    .local v0, "skuId":I
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 372
    :cond_0
    const/4 v1, 0x1

    .line 374
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowCtEmsFormat()Z
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 589
    .local v0, "skuId":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 594
    :cond_0
    const/4 v1, 0x1

    .line 596
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowCtWapPushSmsFormat()Z
    .locals 2

    .prologue
    .line 550
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 551
    .local v0, "skuId":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    :cond_0
    const/4 v1, 0x1

    .line 556
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowSprintWapPushSmsFormat()Z
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHtcAsiaAusSku()Z
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 354
    .local v0, "skuId":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKddiSku()Z
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 344
    .local v0, "skuId":I
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    .line 347
    :cond_0
    const/4 v1, 0x1

    .line 349
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobilBoxPro(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2066
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2067
    .local v0, "skuId":I
    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 2068
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2069
    const/4 v1, 0x1

    .line 2072
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNotSupportCmasAck()Z
    .locals 1

    .prologue
    .line 1467
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isNotSupportPhoneNumBlockListCheck()Z
    .locals 2

    .prologue
    .line 2012
    const-string v0, "message_sms_is_support_skip_people_blocklist_check"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageApBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotSupportRetryForImsSms()Z
    .locals 1

    .prologue
    .line 1081
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method private static isO2UkSku()Z
    .locals 2

    .prologue
    .line 419
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 420
    .local v0, "skuId":I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 421
    const/4 v1, 0x1

    .line 423
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOptusSku()Z
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 359
    .local v0, "skuId":I
    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOrangeUkSku()Z
    .locals 2

    .prologue
    .line 427
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 428
    .local v0, "skuId":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 429
    const/4 v1, 0x1

    .line 431
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPendingMsgRepoEnabled()Z
    .locals 1

    .prologue
    .line 1702
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSprintProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 453
    goto :goto_0

    .line 454
    :cond_2
    const-string v3, "310120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 457
    goto :goto_0
.end method

.method public static isSupportAcms()Z
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAlwaysAllowWalletApMoPremiumSms()Z
    .locals 1

    .prologue
    .line 1513
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAttCmasMechanism()Z
    .locals 1

    .prologue
    .line 964
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAudioOgg()Z
    .locals 1

    .prologue
    .line 2205
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportAudioQcp()Z
    .locals 1

    .prologue
    .line 2214
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportBmPtt()Z
    .locals 2

    .prologue
    .line 2172
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2173
    .local v0, "skuId":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCdmaSmsDuplicationDetect()Z
    .locals 1

    .prologue
    .line 1635
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    const/4 v0, 0x1

    .line 1639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportChinaSense()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 313
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 314
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .local v0, "supportChinaSense":Z
    :goto_0
    return v0

    .line 318
    .end local v0    # "supportChinaSense":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_china_sense_feature"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 319
    .restart local v0    # "supportChinaSense":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportChinaSense="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportCmasExerciseAlert()Z
    .locals 2

    .prologue
    .line 1983
    const-string v0, "telephony_sms_is_support_cmas_exercise_alert"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportCmasSecondaryLanguage()Z
    .locals 1

    .prologue
    .line 779
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isBoostProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportConvertDTMF0ToASCII0()Z
    .locals 1

    .prologue
    .line 1686
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    return v0
.end method

.method public static isSupportCricketUserData()Z
    .locals 1

    .prologue
    .line 1229
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCricketUsSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportCtMoFormat()Z
    .locals 2

    .prologue
    .line 1883
    const-string v0, "telephony_sms_is_support_c9_mo_format"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportCtPrefixPlusSignToPhoneNumber()Z
    .locals 1

    .prologue
    .line 1540
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportEmsForPhoneType(I)Z
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 908
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 909
    .local v0, "skuId":I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    .line 924
    :cond_0
    const/4 v1, 0x0

    .line 927
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportEmsForSubscriber(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 878
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v0

    return v0
.end method

.method public static isSupportFilterAttVvmSms()Z
    .locals 1

    .prologue
    .line 2056
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportFilterVerizonVvmSms()Z
    .locals 1

    .prologue
    .line 2050
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportForcePlusCodeWith011()Z
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    return v0
.end method

.method public static isSupportForceRemovePlusCode()Z
    .locals 4

    .prologue
    .line 806
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    .line 811
    .local v1, "skuId":I
    const-string v2, "HTC__038"

    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    if-ne v1, v2, :cond_2

    .line 813
    :cond_0
    const/4 v0, 0x1

    .line 819
    .local v0, "isAsiaInd":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 823
    :cond_1
    const/4 v2, 0x1

    .line 826
    :goto_1
    return v2

    .line 815
    .end local v0    # "isAsiaInd":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isAsiaInd":Z
    goto :goto_0

    .line 826
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSupportGepApps()Z
    .locals 2

    .prologue
    .line 1794
    const-string v0, "telephony_sms_is_support_gep_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportGsmSmsDuplicationDetect()Z
    .locals 1

    .prologue
    .line 1661
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTelstraSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isOptusSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isHtcAsiaAusSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    :cond_0
    const/4 v0, 0x1

    .line 1667
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportHtcSmsRetry()Z
    .locals 1

    .prologue
    .line 2187
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportImsSms()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2150
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2152
    :goto_0
    return v0

    :cond_0
    const-string v1, "telephony_sms_is_support_ims_sms"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportItsOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 293
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 294
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .local v0, "itsOnEnabled":Z
    :goto_0
    return v0

    .line 298
    .end local v0    # "itsOnEnabled":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "has_its_on_ap"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 299
    .restart local v0    # "itsOnEnabled":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_its_on_ap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportKSC5601Encoding()Z
    .locals 1

    .prologue
    .line 1455
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKddiAtMailWapPush()Z
    .locals 1

    .prologue
    .line 638
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiBcsms()Z
    .locals 1

    .prologue
    .line 1401
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiCdmaNackWith0x23()Z
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiCdmaSmsFormat()Z
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    const/4 v0, 0x1

    .line 686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiCheckDuplicateSms()Z
    .locals 1

    .prologue
    .line 1297
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiDetectDataActivityCallstateForMoSms()Z
    .locals 1

    .prologue
    .line 1206
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiEmoji()Z
    .locals 1

    .prologue
    .line 1150
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiGsmNackWith0x16()Z
    .locals 1

    .prologue
    .line 1093
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiIgnoreCbConfig()Z
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiLteDuplicateCbMechanism()Z
    .locals 1

    .prologue
    .line 1329
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiLteDuplicateSmsMechanism()Z
    .locals 1

    .prologue
    .line 1310
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMessageId()Z
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiMessageIdMechanism()Z
    .locals 1

    .prologue
    .line 1735
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMtCmail()Z
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKddiOtasp()Z
    .locals 1

    .prologue
    .line 731
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiSetCallBackToTpoa()Z
    .locals 1

    .prologue
    .line 618
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiShiftJisMoSms()Z
    .locals 1

    .prologue
    .line 706
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    const/4 v0, 0x1

    .line 710
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiShiftJisMtSms()Z
    .locals 1

    .prologue
    .line 1190
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiSlamdownSms()Z
    .locals 1

    .prologue
    .line 1131
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiTwoByteLF()Z
    .locals 1

    .prologue
    .line 1717
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiUnicodeWemtByteCount()Z
    .locals 1

    .prologue
    .line 1219
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiWemtEncoding()Z
    .locals 1

    .prologue
    .line 665
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKtDiscardSms()Z
    .locals 1

    .prologue
    .line 1349
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtHideTpoa()Z
    .locals 1

    .prologue
    .line 1369
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtMsisdnUpdate()Z
    .locals 1

    .prologue
    .line 1339
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtSpecialDcs()Z
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtUserData()Z
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportLte()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 269
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 270
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .local v0, "supportLte":Z
    :goto_0
    return v0

    .line 274
    .end local v0    # "supportLte":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_lte"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 275
    .restart local v0    # "supportLte":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_lte="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportMimeBSuplInit()Z
    .locals 1

    .prologue
    .line 1766
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportMms()Z
    .locals 2

    .prologue
    .line 2223
    const-string v0, "framework_mms_is_support_mms"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportNli()Z
    .locals 2

    .prologue
    .line 2162
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2163
    .local v0, "skuId":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportNvidiaCBConfig()Z
    .locals 1

    .prologue
    .line 1779
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportOmaDm()Z
    .locals 2

    .prologue
    .line 1493
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 1494
    .local v0, "skuId":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_1

    .line 1497
    :cond_0
    const/4 v1, 0x1

    .line 1500
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportOrangeEmergencySMS()Z
    .locals 1

    .prologue
    .line 2123
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isOrangeUkSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isO2UkSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportRedirectSmsToMobilBoxPro()Z
    .locals 2

    .prologue
    .line 2079
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2080
    .local v0, "skuId":I
    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportRedirectTypeWap()Z
    .locals 1

    .prologue
    .line 938
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportRelativeValidityPeriod()Z
    .locals 2

    .prologue
    .line 1926
    const-string v0, "telephony_sms_is_support_relative_validity_period"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportRemovePrefixZeroFromPhoneNumber()Z
    .locals 1

    .prologue
    .line 1524
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportRemoveUdhFromPayload()Z
    .locals 1

    .prologue
    .line 983
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportReplacePlus1With1()Z
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportReplacePlusWith010()Z
    .locals 1

    .prologue
    .line 1443
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportReplySmsAckBeforeDispatch()Z
    .locals 1

    .prologue
    .line 1955
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportRuimRecordLength()Z
    .locals 2

    .prologue
    .line 1895
    const-string v0, "telephony_sms_is_check_ruim_record_length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSktUserData()Z
    .locals 1

    .prologue
    .line 1239
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSmsWriteUiccForMo3gppSms()Z
    .locals 1

    .prologue
    .line 2134
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    const/4 v0, 0x1

    .line 2138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintDuplicatedCmasDetection()Z
    .locals 2

    .prologue
    .line 1861
    const-string v0, "telephony_sms_is_support_s5_duplicate_cmas_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintIgnoredSmsFormat()Z
    .locals 1

    .prologue
    .line 2235
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isBoostProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintMtSmsInEcmMode()Z
    .locals 2

    .prologue
    .line 1870
    const-string v0, "telephony_sms_is_support_s5_mt_sms_in_ecm_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintReassembleSms()Z
    .locals 2

    .prologue
    .line 1813
    const-string v0, "telephony_sms_is_support_s5_reassemble_sms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintReassembleSmsEnhance()Z
    .locals 2

    .prologue
    .line 1828
    const-string v0, "telephony_sms_is_support_s5_reassemble_sms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintResetVoiceMailCount()Z
    .locals 2

    .prologue
    .line 1971
    const-string v0, "telephony_sms_is_support_reset_voice_mail_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintRoamingGuard()Z
    .locals 1

    .prologue
    .line 766
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintSegmentIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1840
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "telephony_sms_is_support_s5_segment_indicator"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportTencentBolockList()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2028
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportChinaSense()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2033
    :goto_0
    return v0

    :cond_0
    const-string v1, "telephony_sms_tencent_security_manager"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportTmoUsCmasDuplicateCheck()Z
    .locals 1

    .prologue
    .line 2109
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVerizonRadioTech()Z
    .locals 1

    .prologue
    .line 1476
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVodafoneMwiClear()Z
    .locals 1

    .prologue
    .line 1170
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVodafoneSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwCmasDuplicateCheck()Z
    .locals 1

    .prologue
    .line 2044
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwConsignApMoSmsRule()Z
    .locals 1

    .prologue
    .line 1058
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwDirectSms()Z
    .locals 1

    .prologue
    .line 1045
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwLteCheckMechanism()Z
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwLteRetryMechanism()Z
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwNbpcd()Z
    .locals 1

    .prologue
    .line 1118
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwNotificationSms()Z
    .locals 1

    .prologue
    .line 1068
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwPlusPrependRule()Z
    .locals 1

    .prologue
    .line 1160
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwRetryDialog()Z
    .locals 1

    .prologue
    .line 993
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwUiccCsimFormat()Z
    .locals 1

    .prologue
    .line 1008
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method private static isTelstraSku()Z
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 364
    .local v0, "skuId":I
    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTmoUsSku()Z
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 339
    .local v0, "skuId":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVMUSProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 507
    goto :goto_0

    .line 508
    :cond_2
    const-string v3, "311490"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 511
    goto :goto_0
.end method

.method private static isVodafoneSku()Z
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 403
    .local v0, "skuId":I
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 412
    :cond_0
    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVzwSku()Z
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 331
    .local v0, "skuId":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 332
    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldDiscardVoiceMail()Z
    .locals 1

    .prologue
    .line 1415
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static shouldEnhanceCdmaTimestampWhileRoaming()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 843
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 845
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_1

    .line 868
    .local v0, "cdmaSubId":J
    .local v2, "mccMnc":Ljava/lang/String;
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v4

    .line 848
    .end local v0    # "cdmaSubId":J
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v5, "MessageCustFlag"

    const-string v6, "Roaming under CDMA network!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v2, 0x0

    .line 853
    .restart local v2    # "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 855
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 856
    .restart local v0    # "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 859
    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 860
    const-string v5, "MessageCustFlag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkOperator : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    if-eqz v2, :cond_0

    const-string v5, "310"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "311"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "316"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 864
    :cond_2
    const-string v4, "MessageCustFlag"

    const-string v5, "Roaming in USA! Need Enhance SMSC Timestamp!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static shouldMakeMoSmsInvisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "destAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1557
    const/4 v0, 0x0

    .line 1558
    .local v0, "isWalletApp":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1559
    const-string v2, "com.isis.mclient.atnt.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.isis.mclient.atnt.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1561
    :cond_0
    const/4 v0, 0x1

    .line 1575
    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    .line 1576
    const-string v2, "87902"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1625
    :cond_2
    :goto_1
    return v1

    .line 1563
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1564
    const-string v2, "com.isis.mclient.tmobile.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.isis.mclient.tmobile.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1566
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1568
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1569
    const-string v2, "com.isis.mclient.verizon.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.isis.mclient.verizon.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1571
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1581
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1582
    const-string v2, "com.tmobile.vvm.application"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1583
    const-string v2, "122"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1589
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCmccSku()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1590
    const-string v2, "cn.cj.pe"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.ophone.reader.ui"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.emagsoftware.gamehall"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.aspire.mm"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.autonavi.cmccmap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.cmcc.mobilevideo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.chinamobile.contacts.im"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.hisunflytone.android"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.com.fetion"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.chinamobile.cmccwifi"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.iflytek.cmcc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.cyber.wallet"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.qqmusic"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cmccwm.mobilemusic"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tmall.wireless"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sina.weibog3"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.iflytek.inputmethod.oem"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.servo.search"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1619
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1620
    const-string v2, "im.yixin"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1625
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static shouldSetDeviceTimeInSmscTimestamp()Z
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    const/4 v0, 0x1

    .line 753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
