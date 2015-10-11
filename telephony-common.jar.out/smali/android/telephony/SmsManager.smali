.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsManager;


# static fields
.field private static final DEFAULT_SUB_ID:I = -0x3ea

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_MAX:I = 0x8d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_OFFSET:I = 0x7d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_SPEC:I = 0xff

.field public static final RESULT_ERROR_SMS_FAILURE_EXTRA_CAUSE_FDN:I = 0x100

.field public static final RESULT_ERROR_SMS_FAILURE_RETRY_SEND:I = 0x101

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/telephony/SmsManager;

    const-wide/16 v2, -0x3ea

    invoke-direct {v0, v2, v3}, Landroid/telephony/SmsManager;-><init>(J)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-wide p1, p0, Landroid/telephony/SmsManager;->mSubId:J

    .line 807
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1576
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;J)Ljava/util/ArrayList;
    .locals 9
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1595
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6, p1, p2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v3, 0x1

    .line 1598
    .local v3, "isCdmaFormat":Z
    :goto_0
    if-eqz p0, :cond_2

    .line 1599
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1600
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1601
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1603
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1604
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getSimSmsIndex()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 1605
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-eqz v5, :cond_0

    .line 1606
    iget-object v7, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-boolean v3, v7, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 1607
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1595
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    .end local v3    # "isCdmaFormat":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1612
    .restart local v3    # "isCdmaFormat":Z
    :cond_2
    return-object v4
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    const/4 v2, 0x0

    .line 1102
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1103
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1104
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1115
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getAllMessagesFromIcc()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1106
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 781
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubId()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x3ea

    .line 1674
    const/4 v1, 0x0

    .line 1676
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string v4, "isms"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1677
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1681
    :goto_0
    return-wide v2

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1680
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1681
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 840
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 832
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 833
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 834
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_0
    return-object v0
.end method

.method static getNliId(Ljava/util/Locale;)I
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2602
    if-nez p0, :cond_0

    .line 2603
    const-string v2, "SmsManager"

    const-string v3, "getNliId get null locale"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :goto_0
    :pswitch_0
    return v1

    .line 2607
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2608
    .local v0, "sLanguage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2609
    const-string v2, "SmsManager"

    const-string v3, "getNliId get null language"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2615
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 2617
    goto :goto_0

    .line 2615
    :sswitch_0
    const-string v4, "tr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "es"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "pt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :pswitch_2
    move v1, v3

    .line 2619
    goto :goto_0

    .line 2615
    nop

    :sswitch_data_0
    .sparse-switch
        0xcae -> :sswitch_1
        0xe04 -> :sswitch_2
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;
    .locals 6
    .param p0, "subId"    # J

    .prologue
    .line 794
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 795
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 796
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 797
    const-string v1, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmsManagerForSubscriber : new SmsManager for sub ID : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0, p1}, Landroid/telephony/SmsManager;-><init>(J)V

    .line 799
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_0
    monitor-exit v2

    return-object v0

    .line 802
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "permission"    # I

    .prologue
    .line 2068
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2069
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2071
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 2073
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2074
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2, p4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2076
    :cond_0
    return-void
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 14
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "bFirstOfAll"    # Z
    .param p6, "bLastOfAll"    # Z

    .prologue
    .line 754
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 755
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundleForSubscriber(JLjava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeSendRequest(ZII)Z
    .locals 3
    .param p1, "sendAck"    # Z
    .param p2, "result"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 1713
    const/4 v1, 0x0

    .line 1716
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1717
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1718
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->kddiAcknowledgeSendRequest(ZII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1724
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1720
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2398
    if-nez p1, :cond_0

    .line 2399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2402
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2403
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2404
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2410
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2407
    :catch_0
    move-exception v1

    .line 2410
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 2377
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2378
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2379
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2384
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2381
    :catch_0
    move-exception v1

    .line 2384
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 2354
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2355
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2356
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2362
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2359
    :catch_0
    move-exception v1

    .line 2362
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyMessageToIcc(Z[B[BI)Z
    .locals 9
    .param p1, "isCdmaFormat"    # Z
    .param p2, "smsc"    # [B
    .param p3, "pdu"    # [B
    .param p4, "status"    # I

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 890
    .local v0, "success":Z
    if-nez p3, :cond_0

    .line 891
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 895
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 896
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 898
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfWithTypeForSubscriber(JLjava/lang/String;ZI[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 904
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v0

    .line 901
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 9
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 858
    const/4 v8, 0x0

    .line 860
    .local v8, "success":Z
    if-nez p2, :cond_0

    .line 861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 866
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 868
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 881
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v8

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in copyMessageToIcc()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 872
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccExt([B[BII)I
    .locals 2
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "phoneType"    # I

    .prologue
    .line 1480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "copyMessageToIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyMessageToIccForResult(Z[B[BI)I
    .locals 9
    .param p1, "isCdmaFormat"    # Z
    .param p2, "smsc"    # [B
    .param p3, "pdu"    # [B
    .param p4, "status"    # I

    .prologue
    .line 946
    const/4 v8, -0x1

    .line 948
    .local v8, "index":I
    if-nez p3, :cond_0

    .line 949
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 954
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 955
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move v4, p1

    move v5, p4

    move-object v6, p3

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResultWithTypeForSubscriber(JZI[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 966
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v8

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get NullPointerException in copyMessageToIccForResult(isCdmaFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 957
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccForResult([B[BI)I
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 922
    const/4 v7, -0x1

    .line 924
    .local v7, "index":I
    if-nez p2, :cond_0

    .line 925
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 930
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 931
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResultForSubscriber(JI[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 942
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v7

    .line 936
    :catch_0
    move-exception v0

    .line 937
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in copyMessageToIccForResult()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 933
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 9
    .param p1, "messageIndex"    # I

    .prologue
    .line 981
    const/4 v8, 0x0

    .line 982
    .local v8, "success":Z
    const/16 v2, 0xaf

    new-array v7, v2, [B

    .line 983
    .local v7, "pdu":[B
    const/4 v2, -0x1

    invoke-static {v7, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 986
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 987
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 989
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1002
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v8

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in deleteMessageFromIcc()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 993
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(ZI)Z
    .locals 10
    .param p1, "isCdmaFormat"    # Z
    .param p2, "messageIndex"    # I

    .prologue
    .line 1007
    const/4 v9, 0x0

    .line 1008
    .local v9, "success":Z
    const/16 v2, 0xaf

    new-array v8, v2, [B

    .line 1009
    .local v8, "pdu":[B
    const/4 v2, -0x1

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1012
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1013
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1015
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1027
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v9

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get NullPointerException in deleteMessageFromIcc(isCdmaFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1018
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIccExt(II)Z
    .locals 2
    .param p1, "messageIndex"    # I
    .param p2, "phoneType"    # I

    .prologue
    .line 1496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deleteMessageFromIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 2301
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2302
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2303
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2309
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2306
    :catch_0
    move-exception v1

    .line 2309
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 2276
    if-nez p1, :cond_0

    .line 2277
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2280
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2281
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2282
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2287
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2284
    :catch_0
    move-exception v1

    .line 2287
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1199
    const/4 v1, 0x0

    .line 1202
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1203
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1212
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1208
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1274
    const/4 v1, 0x0

    .line 1276
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1277
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1280
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1281
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1283
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1290
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1286
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1385
    if-nez p1, :cond_0

    .line 1386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2093
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty MMS location URL"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2096
    :cond_0
    if-nez p3, :cond_1

    .line 2097
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2100
    :cond_1
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2101
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_2

    .line 2116
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 2104
    .restart local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_2
    const-string v0, "com.android.phone"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, p3, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2107
    const-string v0, "android.provider.Telephony.MMS_DOWNLOAD"

    const/4 v2, 0x2

    invoke-direct {p0, p1, p3, v0, v2}, Landroid/telephony/SmsManager;->grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2111
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2113
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1166
    const/4 v1, 0x0

    .line 1169
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1170
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1179
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1175
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1235
    const/4 v1, 0x0

    .line 1237
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1238
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1242
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1244
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1251
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1247
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIccBySubId()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    const/4 v2, 0x0

    .line 1131
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1132
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1133
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v5, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1145
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;J)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getAllMessagesFromIcc()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1135
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getAllMessagesFromIccExt(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getAllMessagesFromIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoPersisting()Z
    .locals 2

    .prologue
    .line 2566
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2567
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2568
    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2573
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2570
    :catch_0
    move-exception v1

    .line 2573
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2583
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2584
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(J)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2590
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2587
    :catch_0
    move-exception v1

    .line 2590
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1917
    const/4 v0, 0x0

    .line 1919
    .local v0, "response":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1920
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1921
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getCarrierID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1926
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1923
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .param p7, "refNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2679
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2680
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 2681
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 2682
    .local v11, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2683
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v11, :cond_1

    .line 2684
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 2685
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsRawData;

    .line 2686
    .local v8, "data":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2684
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2691
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v8    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v9    # "i":I
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v1

    .line 2695
    :cond_0
    const/4 v10, 0x0

    :cond_1
    return-object v10
.end method

.method public getExtIccSmsPhoneType()I
    .locals 2

    .prologue
    .line 1562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getExtIccSmsPhoneType, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIccSmsCount()I
    .locals 2

    .prologue
    .line 1555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getIccSmsCount, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIccSmsCountExt(I)I
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getIccSmsCountExt, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1653
    const-string v0, "unknown"

    .line 1655
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1656
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1658
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1664
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1661
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMessageFromSim(I)[B
    .locals 6
    .param p1, "nIndexOnSim"    # I

    .prologue
    .line 1302
    const/4 v1, 0x0

    .line 1305
    .local v1, "record":[B
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1306
    .local v2, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1307
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfForSubscriber(JI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1319
    .end local v2    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getMessageFromSim()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1309
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getMessageFromSimExt(II)[B
    .locals 2
    .param p1, "nIndexOnSim"    # I
    .param p2, "phonetype"    # I

    .prologue
    .line 1969
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getMessageFromSimExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageFromSimWithType(ZI)[B
    .locals 4
    .param p1, "bIsCdmaFormat"    # Z
    .param p2, "nIndexOnSim"    # I

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1327
    .local v0, "record":[B
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1328
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1329
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfWithTypeForSubscriber(JZI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1335
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1331
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1734
    const/4 v0, 0x0

    .line 1736
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1737
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1738
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSMSCForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1744
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1740
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 2
    .param p1, "phonetype"    # I

    .prologue
    .line 1960
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getSMSCExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubId()J
    .locals 4

    .prologue
    .line 821
    iget-wide v0, p0, Landroid/telephony/SmsManager;->mSubId:J

    const-wide/16 v2, -0x3ea

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 822
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubId()J

    move-result-wide v0

    .line 824
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/telephony/SmsManager;->mSubId:J

    goto :goto_0
.end method

.method public getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2739
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2740
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 2741
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 2742
    .local v10, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2743
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v10, :cond_1

    .line 2744
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 2745
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsRawData;

    .line 2746
    .local v7, "data":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2744
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2751
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v8    # "i":I
    .end local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v10    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v1

    .line 2755
    :cond_0
    const/4 v9, 0x0

    :cond_1
    return-object v9
.end method

.method public getTestBCSMS()[I
    .locals 4

    .prologue
    .line 1945
    const/4 v0, 0x0

    .line 1947
    .local v0, "response":[I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1948
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1949
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getTestBCSMSForSubscriber(J)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1954
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1951
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 0
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "bFirstOfAll"    # Z
    .param p6, "bLastOfAll"    # Z

    .prologue
    .line 764
    invoke-direct/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 765
    return-void
.end method

.method public htcSendRawPduExt([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    .locals 2
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "bFirstOfAll"    # Z
    .param p6, "bLastOfAll"    # Z
    .param p7, "phoneType"    # I

    .prologue
    .line 771
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "htcSendRawPduExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 2249
    if-nez p1, :cond_0

    .line 2250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2253
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2254
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2255
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2261
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2258
    :catch_0
    move-exception v1

    .line 2261
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 2216
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2217
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 2218
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2224
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v0

    .line 2221
    :catch_0
    move-exception v0

    .line 2224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 287
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    :try_start_0
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 294
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(J[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 4

    .prologue
    .line 2766
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2767
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2768
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ISms;->isFdnEnabledForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2773
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 2770
    :catch_0
    move-exception v1

    .line 2773
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 1626
    const/4 v0, 0x0

    .line 1628
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1629
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1631
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1637
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1634
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1692
    const/4 v1, 0x0

    .line 1694
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1695
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1699
    :goto_0
    return v2

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1698
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1699
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public queryBCSMS(II)[I
    .locals 1
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1885
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 4
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1872
    const/4 v0, 0x0

    .line 1874
    .local v0, "response":[I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1875
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1876
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceEntryForSubscriber(JII)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1881
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1878
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 4
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1859
    const/4 v0, 0x0

    .line 1861
    .local v0, "response":Landroid/os/Bundle;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1862
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1863
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceLabelForSubscriber(JII)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1868
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1865
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 4

    .prologue
    .line 1846
    const/4 v0, 0x0

    .line 1848
    .local v0, "response":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1849
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1850
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceNumberForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1855
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1852
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendCDMATextMessage, AP should not call this dropped API!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 676
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_2

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 687
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 691
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendDataMessageExt(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "phoneType"    # I

    .prologue
    .line 1461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendDataMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2046
    if-nez p2, :cond_0

    .line 2047
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2050
    :cond_0
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2051
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_1

    .line 2064
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 2054
    .restart local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    const-string v0, "com.android.phone"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2056
    const-string v0, "android.provider.Telephony.MMS_SEND"

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/telephony/SmsManager;->grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2059
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2061
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2783
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2787
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2788
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2792
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2793
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2798
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2795
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 701
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 706
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 711
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartDataWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartDataMessageExt(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendMultipartDataMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 466
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "nli"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 542
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "NLI"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 543
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 545
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 550
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 551
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 555
    :cond_0
    if-nez p6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_1

    .line 556
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 558
    .local v16, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v15

    .line 559
    .local v15, "nli":I
    if-lez v15, :cond_1

    .line 560
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 561
    .restart local p6    # "bundle":Landroid/os/Bundle;
    const-string v4, "NLI"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    .end local v15    # "nli":I
    .end local v16    # "r":Landroid/content/res/Resources;
    :cond_1
    const/16 v17, 0x0

    .line 569
    .local v17, "separate":Z
    if-eqz p6, :cond_2

    const-string v4, "separate_msg"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 571
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForSubscriber(J)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v17, :cond_4

    .line 574
    :try_start_0
    const-string v4, "SmsManager"

    const-string v5, "General sendMultipartText"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 577
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 585
    :cond_4
    const-string v4, "SmsManager"

    const-string v5, "Sprint rule, separate to separate ones"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 587
    .local v18, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_3

    .line 588
    const/4 v8, 0x0

    .line 589
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 590
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_5

    .line 591
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 593
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_6

    .line 594
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 599
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_6
    const-string v7, ""

    .line 601
    .local v7, "body":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "body":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 603
    .restart local v7    # "body":Ljava/lang/String;
    const/4 v2, 0x0

    .line 604
    .local v2, "bFirstOfAll":Z
    const/4 v13, 0x0

    .line 606
    .local v13, "bLastOfAll":Z
    if-eqz p6, :cond_7

    .line 607
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 608
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 610
    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    .line 611
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_8

    .line 612
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 613
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .line 636
    invoke-virtual/range {v4 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 587
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 614
    :cond_8
    if-nez v14, :cond_9

    .line 615
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 617
    :cond_9
    add-int/lit8 v4, v18, -0x1

    if-ne v14, v4, :cond_a

    .line 618
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 621
    :cond_a
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 624
    :cond_b
    if-nez v14, :cond_c

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    .line 625
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 626
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 627
    :cond_c
    add-int/lit8 v4, v18, -0x1

    if-ne v14, v4, :cond_d

    const/4 v4, 0x1

    if-ne v13, v4, :cond_d

    .line 628
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 631
    :cond_d
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 632
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 581
    .end local v2    # "bFirstOfAll":Z
    .end local v7    # "body":Ljava/lang/String;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v13    # "bLastOfAll":Z
    .end local v14    # "i":I
    .end local v18    # "size":I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public sendMultipartTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .param p7, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1427
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendMultipartTextMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2517
    if-nez p1, :cond_0

    .line 2518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2521
    :cond_0
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2522
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 2523
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    .line 2526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2489
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 2490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2493
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2494
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2496
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2442
    if-nez p1, :cond_0

    .line 2443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2446
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2447
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2449
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 265
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    :cond_0
    if-nez p6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 382
    .local v13, "r":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v2

    .line 383
    .local v2, "nli":I
    if-lez v2, :cond_1

    .line 384
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 385
    .restart local p6    # "bundle":Landroid/os/Bundle;
    const-string v4, "NLI"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    .end local v2    # "nli":I
    .end local v13    # "r":Landroid/content/res/Resources;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 393
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .param p7, "phoneType"    # I

    .prologue
    .line 1370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendTextMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoPersisting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2545
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2546
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2547
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2549
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBCSMS(II)I
    .locals 4
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1902
    const/4 v0, 0x0

    .line 1904
    .local v0, "response":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1905
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1906
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->setBCSMSForSubscriber(JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1911
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1908
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mode"    # Ljava/lang/Boolean;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "dsc"    # Ljava/lang/String;

    .prologue
    .line 2650
    const-string v2, "SmsManager"

    const-string v3, "setCBChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2653
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2654
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->setCSCBForSubscriber(JZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2656
    :catch_0
    move-exception v0

    .line 2657
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "setCBChannel RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setExtIccSmsPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtIccSmsPhoneType, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1768
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1769
    .local v0, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1770
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->setSMSCForSubscriber(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    .end local v0    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1772
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phonetype"    # I

    .prologue
    .line 1964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setSMSCExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTestBCSMS(II)I
    .locals 4
    .param p1, "kddiTestData"    # I
    .param p2, "makerData"    # I

    .prologue
    .line 1932
    const/4 v0, 0x0

    .line 1934
    .local v0, "response":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1935
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1936
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->setTestBCSMSForSubscriber(JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1941
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1938
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public syncCmasServiceTable()Landroid/os/Bundle;
    .locals 17

    .prologue
    .line 1783
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1785
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v14, "SmsManager"

    const-string v15, "syncCmasServiceTable"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceNumber()I

    move-result v11

    .line 1787
    .local v11, "mBCSMSServiceNumber":I
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_0

    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getServiceNumber: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_0
    if-gtz v11, :cond_1

    .line 1789
    const-string v14, "SmsManager"

    const-string v15, "Cannot get BCSMS service number"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/4 v2, 0x0

    .line 1841
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 1793
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-array v10, v11, [I

    .line 1794
    .local v10, "mBCSMSServiceID":[I
    new-array v7, v11, [I

    .line 1795
    .local v7, "mBCSMSLanguage":[I
    new-array v9, v11, [I

    .line 1796
    .local v9, "mBCSMSSelect":[I
    new-array v4, v11, [I

    .line 1797
    .local v4, "mBCSMSAlert":[I
    new-array v8, v11, [I

    .line 1798
    .local v8, "mBCSMSMaxMessages":[I
    new-array v6, v11, [I

    .line 1799
    .local v6, "mBCSMSLabelEncode":[I
    new-array v5, v11, [Ljava/lang/String;

    .line 1801
    .local v5, "mBCSMSLabel":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 1802
    .local v1, "bErr":Z
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    if-ge v3, v11, :cond_3

    .line 1803
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceEntry(II)[I

    move-result-object v12

    .line 1804
    .local v12, "serviceEntry":[I
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/telephony/SmsManager;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;

    move-result-object v13

    .line 1807
    .local v13, "serviceLabel":Landroid/os/Bundle;
    if-eqz v12, :cond_2

    array-length v14, v12

    const/4 v15, 0x6

    if-lt v14, v15, :cond_2

    if-nez v13, :cond_4

    .line 1809
    :cond_2
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "get BCSMS fail. entry> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", label> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/4 v1, 0x0

    .line 1832
    .end local v12    # "serviceEntry":[I
    .end local v13    # "serviceLabel":Landroid/os/Bundle;
    :cond_3
    if-nez v1, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    .line 1814
    .restart local v12    # "serviceEntry":[I
    .restart local v13    # "serviceLabel":Landroid/os/Bundle;
    :cond_4
    const/4 v14, 0x1

    aget v14, v12, v14

    aput v14, v10, v3

    .line 1815
    const/4 v14, 0x2

    aget v14, v12, v14

    aput v14, v7, v3

    .line 1816
    const/4 v14, 0x3

    aget v14, v12, v14

    aput v14, v9, v3

    .line 1817
    const/4 v14, 0x4

    aget v14, v12, v14

    aput v14, v4, v3

    .line 1818
    const/4 v14, 0x5

    aget v14, v12, v14

    aput v14, v8, v3

    .line 1819
    const-string v14, "label_encode"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v6, v3

    .line 1820
    const-string v14, "label"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v3

    .line 1822
    sget-boolean v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v14, :cond_5

    .line 1823
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSServiceID["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v10, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSLanguage["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v7, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSSelect["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v9, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSAlert["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v4, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSMaxMessages["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v8, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSLabelEncode["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v16, v6, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v14, "SmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mBCSMSLabel["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v5, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1833
    .end local v12    # "serviceEntry":[I
    .end local v13    # "serviceLabel":Landroid/os/Bundle;
    :cond_6
    const-string v14, "service_number"

    invoke-virtual {v2, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1834
    const-string v14, "service_id"

    invoke-virtual {v2, v14, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1835
    const-string v14, "language"

    invoke-virtual {v2, v14, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1836
    const-string v14, "select"

    invoke-virtual {v2, v14, v9}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1837
    const-string v14, "alert"

    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1838
    const-string v14, "max_messages"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1839
    const-string v14, "label_encode"

    invoke-virtual {v2, v14, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1840
    const-string v14, "label"

    invoke-virtual {v2, v14, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 9
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 1045
    const/4 v8, 0x0

    .line 1048
    .local v8, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1049
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1051
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1064
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v8

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in updateMessageOnIcc()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1055
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIcc(ZII[B)Z
    .locals 10
    .param p1, "isCdmaFormat"    # Z
    .param p2, "messageIndex"    # I
    .param p3, "newStatus"    # I
    .param p4, "pdu"    # [B

    .prologue
    .line 1068
    const/4 v9, 0x0

    .line 1071
    .local v9, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1072
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1074
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1086
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v9

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get NullPointerException in updateMessageOnIcc(isCdmaFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1077
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIccExt(II[BI)Z
    .locals 2
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "phoneType"    # I

    .prologue
    .line 1515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "updateMessageOnIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMmsDownloadStatus(Landroid/content/Context;IILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2186
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2187
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 2197
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2190
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/IMms;->updateMmsDownloadStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2194
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_1
    if-eqz p4, :cond_0

    .line 2195
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 2191
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateMmsSendStatus(Landroid/content/Context;I[BILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageRef"    # I
    .param p3, "pdu"    # [B
    .param p4, "status"    # I
    .param p5, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2153
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2154
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 2164
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2157
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->updateMmsSendStatus(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2161
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_1
    if-eqz p5, :cond_0

    .line 2162
    const/4 v1, 0x1

    invoke-virtual {p1, p5, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 2158
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateNvItem()V
    .locals 2

    .prologue
    .line 1751
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1752
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1753
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->updateNvItem()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1755
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateSimSmsAsRead(I)Z
    .locals 3
    .param p1, "messageIndex"    # I

    .prologue
    .line 2708
    const/4 v1, 0x0

    .line 2711
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2712
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2713
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/ISms;->updateSimSmsAsRead(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2720
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 2716
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 4
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 319
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 320
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->updateSmsSendStatusForSubscriber(JIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2323
    if-nez p1, :cond_0

    .line 2324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2327
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2328
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2329
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2335
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2332
    :catch_0
    move-exception v1

    .line 2335
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
