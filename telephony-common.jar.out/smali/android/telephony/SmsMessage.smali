.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$1;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$DeliveryPdu;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_FOR_CRICKET:I = 0x83

.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_FOR_CRICKET:I = 0x96

.field public static final MAX_USER_DATA_SEPTETS_FOR_KT:I = 0x5a

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b

.field private static final PCCW_MCCMNC:Ljava/lang/String; = "45429"

.field private static mIsNoEmsSupportConfigListLoaded:Z

.field private static mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

.field private static mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;


# instance fields
.field private mSubId:J

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2010
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 2011
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 213
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 2
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/SmsMessage;->mSubId:J

    .line 216
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 217
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 6
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 563
    const/4 v0, -0x1

    .line 564
    .local v0, "nli":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 565
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 566
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v0

    .line 568
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v2

    if-nez v2, :cond_1

    .line 569
    const/4 v0, -0x1

    .line 573
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I

    .prologue
    .line 593
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 596
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 597
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 598
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 599
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 600
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 601
    return-object v0

    .line 593
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZII)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I
    .param p3, "phoneType"    # I

    .prologue
    const/4 v4, 0x2

    .line 610
    if-ne v4, p3, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 613
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 614
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 615
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 616
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v2, v0, v4

    .line 617
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 618
    return-object v0

    .line 610
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1051
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I

    .prologue
    .line 1056
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 624
    const/4 v1, 0x0

    .line 626
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-static {p1, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    invoke-static {p2, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 633
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 634
    .local v0, "ret":[I
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v2, v0, v4

    .line 635
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 636
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 637
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 638
    .end local v0    # "ret":[I
    :goto_0
    return-object v0

    .line 630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    .line 448
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 456
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 452
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 456
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "phoneType"    # I

    .prologue
    .line 479
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 480
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 491
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 485
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 491
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "isCdmaFormat"    # Z

    .prologue
    .line 498
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 499
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 506
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 502
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 506
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B

    .prologue
    const/4 v4, 0x2

    .line 253
    const/4 v2, 0x0

    .line 257
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 258
    .local v0, "activePhone":I
    if-ne v4, v0, :cond_2

    const-string v1, "3gpp2"

    .line 261
    .local v1, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v3, :cond_1

    .line 265
    :cond_0
    if-ne v4, v0, :cond_3

    const-string v1, "3gpp"

    .line 267
    :goto_1
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 269
    :cond_1
    return-object v2

    .line 258
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    const-string v1, "3gpp"

    goto :goto_0

    .line 265
    .restart local v1    # "format":Ljava/lang/String;
    :cond_3
    const-string v1, "3gpp2"

    goto :goto_1
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "messageType"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "smsMsg":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .line 302
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    packed-switch p1, :pswitch_data_0

    .line 310
    invoke-static {p0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 313
    :goto_0
    if-nez v0, :cond_0

    .line 314
    if-eqz v1, :cond_0

    .line 315
    new-instance v0, Landroid/telephony/SmsMessage;

    .end local v0    # "smsMsg":Landroid/telephony/SmsMessage;
    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 318
    .restart local v0    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_0
    return-object v0

    .line 304
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 305
    goto :goto_0

    .line 307
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 308
    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 294
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 287
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 290
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static findAsciiSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 778
    .local v2, "size":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 779
    add-int/lit8 v0, v0, 0x1

    .line 780
    if-le v0, p2, :cond_0

    .line 784
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 778
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 784
    goto :goto_1
.end method

.method public static fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
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
    .line 981
    const/16 v0, 0x80

    .line 984
    .local v0, "limit":I
    const/4 v3, 0x0

    .line 985
    .local v3, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 987
    .local v6, "textLen":I
    const/4 v4, 0x0

    .line 989
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 990
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 991
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    .line 1016
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 1001
    .end local v5    # "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    div-int v1, v6, v0

    .line 1003
    .local v1, "msgCount":I
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1004
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v3, v6, :cond_1

    .line 1005
    const/4 v2, 0x0

    .line 1006
    .local v2, "nextPos":I
    sub-int v7, v6, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    .line 1008
    if-le v2, v3, :cond_1

    if-le v2, v6, :cond_2

    .end local v2    # "nextPos":I
    :cond_1
    move-object v5, v4

    .line 1016
    .restart local v5    # "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 1013
    .end local v5    # "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "nextPos":I
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    move v3, v2

    .line 1015
    goto :goto_1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
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
    .line 802
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nli"    # I
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
    .line 833
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isCdma"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    const/4 v0, -0x1

    .line 819
    .local v0, "nli":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 820
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 821
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v0

    .line 823
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v2

    if-nez v2, :cond_1

    .line 824
    const/4 v0, -0x1

    .line 828
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static fragmentText(Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isCdmaMo"    # Z
    .param p2, "nli"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    if-eqz p1, :cond_8

    const/4 v8, 0x0

    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    :goto_0
    sput-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 842
    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encoding detail>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintSegmentIndicator()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 849
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v0, 0x1

    .line 850
    .local v0, "bAscii":Z
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa0

    if-gt v8, v9, :cond_1

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x46

    if-le v8, v9, :cond_2

    .line 852
    :cond_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    .line 857
    .end local v0    # "bAscii":Z
    :cond_2
    if-eqz p1, :cond_a

    const/4 v8, 0x2

    :goto_2
    invoke-static {v8}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 860
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    .line 863
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 864
    const/16 v1, 0x83

    .line 930
    .local v1, "limit":I
    :cond_3
    :goto_3
    const/4 v2, 0x0

    .line 931
    .local v2, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 932
    .local v5, "r":Landroid/content/res/Resources;
    const v8, #android:bool@config_sms_force_7bit_encoding#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 933
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 935
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 936
    move-object v2, p0

    .line 939
    :cond_5
    const/4 v4, 0x0

    .line 940
    .local v4, "pos":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 941
    .local v7, "textLen":I
    new-instance v6, Ljava/util/ArrayList;

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 942
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-ge v4, v7, :cond_7

    .line 943
    const/4 v3, 0x0

    .line 945
    .local v3, "nextPos":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMoSms()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 946
    sub-int v8, v7, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    .line 968
    :goto_5
    if-le v3, v4, :cond_6

    if-le v3, v7, :cond_2e

    .line 969
    :cond_6
    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragmentText failed ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v3    # "nextPos":I
    :cond_7
    return-object v6

    .line 838
    .end local v1    # "limit":I
    .end local v2    # "newMsgBody":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "textLen":I
    :cond_8
    const/4 v8, 0x0

    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    goto/16 :goto_0

    .line 849
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 857
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 867
    :cond_b
    const/16 v1, 0x8c

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 870
    .end local v1    # "limit":I
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 871
    const/16 v1, 0x96

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 874
    .end local v1    # "limit":I
    :cond_d
    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 876
    .end local v1    # "limit":I
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 878
    const/16 v1, 0x50

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 880
    .end local v1    # "limit":I
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 881
    const/16 v1, 0x5a

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 883
    .end local v1    # "limit":I
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMoSms()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 884
    const/16 v1, 0x8c

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 887
    .end local v1    # "limit":I
    :cond_11
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1a

    .line 888
    const/4 v8, 0x2

    if-ne p2, v8, :cond_14

    .line 889
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    const/4 v8, -0x1

    if-ne p2, v8, :cond_12

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v1

    .line 902
    .restart local v1    # "limit":I
    :goto_6
    const/16 v8, 0x86

    if-ne v1, v8, :cond_3

    .line 909
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_3

    .line 910
    add-int/lit8 v1, v1, -0x2

    goto/16 :goto_3

    .line 889
    .end local v1    # "limit":I
    :cond_12
    const/16 v1, 0x95

    goto :goto_6

    :cond_13
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v1

    goto :goto_6

    .line 891
    :cond_14
    const/4 v8, 0x1

    if-ne p2, v8, :cond_17

    .line 892
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    const/4 v8, -0x1

    if-ne p2, v8, :cond_15

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v1

    .restart local v1    # "limit":I
    :goto_7
    goto :goto_6

    .end local v1    # "limit":I
    :cond_15
    const/16 v1, 0x95

    goto :goto_7

    :cond_16
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v1

    goto :goto_7

    .line 895
    :cond_17
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_19

    const/4 v8, -0x1

    if-ne p2, v8, :cond_18

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v1

    .restart local v1    # "limit":I
    :goto_8
    goto :goto_6

    .end local v1    # "limit":I
    :cond_18
    const/16 v1, 0x92

    goto :goto_8

    :cond_19
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v1

    goto :goto_8

    .line 914
    :cond_1a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_1d

    .line 915
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    const/4 v8, -0x1

    if-ne p2, v8, :cond_1b

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_9
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_1b
    const/16 v1, 0x9b

    goto :goto_9

    :cond_1c
    const/16 v1, 0x8c

    goto :goto_9

    .line 917
    :cond_1d
    const/4 v8, 0x1

    if-ne p2, v8, :cond_20

    .line 918
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    const/4 v8, -0x1

    if-ne p2, v8, :cond_1e

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_a
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_1e
    const/16 v1, 0x9b

    goto :goto_a

    :cond_1f
    const/16 v1, 0x8c

    goto :goto_a

    .line 920
    :cond_20
    const/16 v8, 0xe

    if-ne p2, v8, :cond_23

    .line 921
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_22

    const/4 v8, -0x1

    if-ne p2, v8, :cond_21

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_b
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_21
    const/16 v1, 0xa0

    goto :goto_b

    :cond_22
    const/16 v1, 0x8c

    goto :goto_b

    .line 924
    :cond_23
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_25

    const/4 v8, -0x1

    if-ne p2, v8, :cond_24

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_c
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_24
    const/16 v1, 0x98

    goto :goto_c

    :cond_25
    const/16 v1, 0x8c

    goto :goto_c

    .line 948
    .restart local v1    # "limit":I
    .restart local v2    # "newMsgBody":Ljava/lang/String;
    .restart local v3    # "nextPos":I
    .restart local v4    # "pos":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    .restart local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "textLen":I
    :cond_26
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2b

    .line 949
    if-eqz p1, :cond_27

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_28

    :cond_27
    if-eqz p1, :cond_29

    const/4 v8, 0x2

    :goto_d
    invoke-static {v8}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 953
    :cond_28
    sub-int v8, v7, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    goto/16 :goto_5

    .line 949
    :cond_29
    const/4 v8, 0x1

    goto :goto_d

    .line 956
    :cond_2a
    invoke-static {v2, v4, v1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v3

    goto/16 :goto_5

    .line 960
    :cond_2b
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 961
    const/16 v1, 0x50

    .line 966
    :cond_2c
    :goto_e
    div-int/lit8 v8, v1, 0x2

    sub-int v9, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    goto/16 :goto_5

    .line 962
    :cond_2d
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 963
    const/16 v1, 0x5a

    goto :goto_e

    .line 973
    :cond_2e
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    move v4, v3

    .line 975
    goto/16 :goto_4
.end method

.method public static fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "phoneType"    # I
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
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 725
    if-ne v9, p1, :cond_2

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 734
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v6, v8, :cond_4

    .line 735
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_3

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .line 742
    .local v0, "limit":I
    :goto_1
    const/4 v2, 0x0

    .line 743
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 744
    .local v5, "textLen":I
    new-instance v3, Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 745
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v5, :cond_1

    .line 746
    const/4 v1, 0x0

    .line 747
    .local v1, "nextPos":I
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_7

    .line 748
    if-ne p1, v9, :cond_6

    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v6, v8, :cond_6

    .line 750
    sub-int v6, v5, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    .line 758
    :goto_3
    if-le v1, v2, :cond_0

    if-le v1, v5, :cond_8

    .line 759
    :cond_0
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .end local v1    # "nextPos":I
    :cond_1
    return-object v3

    .line 725
    .end local v0    # "limit":I
    .end local v2    # "pos":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v5    # "textLen":I
    :cond_2
    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    goto :goto_0

    .line 735
    .restart local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_1

    .line 738
    :cond_4
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_5

    const/16 v0, 0xa0

    .restart local v0    # "limit":I
    :goto_4
    goto :goto_1

    .end local v0    # "limit":I
    :cond_5
    const/16 v0, 0x8c

    goto :goto_4

    .line 753
    .restart local v0    # "limit":I
    .restart local v1    # "nextPos":I
    .restart local v2    # "pos":I
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "textLen":I
    :cond_6
    const/4 v6, -0x1

    invoke-static {p0, v2, v0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto :goto_3

    .line 756
    :cond_7
    div-int/lit8 v6, v0, 0x2

    sub-int v7, v5, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    goto :goto_3

    .line 763
    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    move v2, v1

    .line 765
    goto/16 :goto_2
.end method

.method public static fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "sAddress"    # Ljava/lang/String;
    .param p2, "sCallback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "address":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v2, 0x0

    .line 646
    .local v2, "callback":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 647
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 648
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 649
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 651
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v13

    sput-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 657
    if-nez v1, :cond_4

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v13, 0x2

    if-nez v2, :cond_5

    const/4 v13, 0x0

    :goto_1
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v12, v13, 0x3

    .line 669
    .local v12, "totalBytes":I
    rsub-int v4, v12, 0xac

    .line 670
    .local v4, "maxBytes":I
    mul-int/lit8 v13, v4, 0x8

    div-int/lit8 v7, v13, 0x7

    .line 673
    .local v7, "maxSeptets":I
    move v5, v4

    .line 675
    .local v5, "maxConcatenatedBytes":I
    mul-int/lit8 v13, v5, 0x8

    div-int/lit8 v6, v13, 0x7

    .line 677
    .local v6, "maxConcatenatedSeptets":I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 678
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move v3, v6

    .line 685
    .local v3, "limit":I
    :goto_2
    const/4 v9, 0x0

    .line 686
    .local v9, "pos":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 687
    .local v11, "textLen":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v9, v11, :cond_3

    .line 689
    const/4 v8, 0x0

    .line 690
    .local v8, "nextPos":I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 691
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 693
    sub-int v13, v11, v9

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    .line 701
    :goto_4
    if-le v8, v9, :cond_2

    if-le v8, v11, :cond_b

    .line 702
    :cond_2
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fragmentTextForCSIM failed ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v8    # "nextPos":I
    :cond_3
    return-object v10

    .line 657
    .end local v3    # "limit":I
    .end local v4    # "maxBytes":I
    .end local v5    # "maxConcatenatedBytes":I
    .end local v6    # "maxConcatenatedSeptets":I
    .end local v7    # "maxSeptets":I
    .end local v9    # "pos":I
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "textLen":I
    .end local v12    # "totalBytes":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_1

    .restart local v4    # "maxBytes":I
    .restart local v5    # "maxConcatenatedBytes":I
    .restart local v6    # "maxConcatenatedSeptets":I
    .restart local v7    # "maxSeptets":I
    .restart local v12    # "totalBytes":I
    :cond_6
    move v3, v5

    .line 678
    goto :goto_2

    .line 681
    :cond_7
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    move v3, v7

    .restart local v3    # "limit":I
    :goto_5
    goto :goto_2

    .end local v3    # "limit":I
    :cond_8
    move v3, v4

    goto :goto_5

    .line 696
    .restart local v3    # "limit":I
    .restart local v8    # "nextPos":I
    .restart local v9    # "pos":I
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "textLen":I
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v9, v3}, Landroid/telephony/SmsMessage;->findAsciiSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v8

    goto :goto_4

    .line 699
    :cond_a
    div-int/lit8 v13, v3, 0x2

    sub-int v14, v11, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    goto :goto_4

    .line 706
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    move v9, v8

    .line 708
    goto/16 :goto_3
.end method

.method private static fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nli"    # I
    .param p2, "phonetype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8c

    const/4 v11, 0x2

    const/16 v0, 0xa0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1746
    if-ne v11, p2, :cond_5

    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    :goto_0
    sput-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1750
    const-string v5, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoding detail>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-static {p2}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1759
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v9, :cond_7

    .line 1761
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1762
    const/16 v0, 0x83

    .line 1823
    .local v0, "limit":I
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 1824
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1825
    .local v4, "textLen":I
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1826
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v4, :cond_4

    .line 1827
    const/4 v1, 0x0

    .line 1828
    .local v1, "nextPos":I
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_21

    .line 1829
    if-ne p2, v11, :cond_1

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-eq v5, v9, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v5

    if-nez v5, :cond_20

    .line 1831
    :cond_2
    sub-int v5, v4, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    .line 1846
    :goto_3
    if-le v1, v2, :cond_3

    if-le v1, v4, :cond_24

    .line 1847
    :cond_3
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fragmentText failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    .end local v1    # "nextPos":I
    :cond_4
    return-object v3

    .line 1746
    .end local v0    # "limit":I
    .end local v2    # "pos":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "textLen":I
    :cond_5
    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    goto/16 :goto_0

    .line 1765
    :cond_6
    const/16 v0, 0x8c

    .restart local v0    # "limit":I
    goto :goto_1

    .line 1768
    .end local v0    # "limit":I
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1769
    const/16 v0, 0x96

    .restart local v0    # "limit":I
    goto :goto_1

    .line 1772
    .end local v0    # "limit":I
    :cond_8
    const/16 v0, 0xa0

    .restart local v0    # "limit":I
    goto/16 :goto_1

    .line 1774
    .end local v0    # "limit":I
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1776
    const/16 v0, 0x50

    .restart local v0    # "limit":I
    goto/16 :goto_1

    .line 1778
    .end local v0    # "limit":I
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1779
    const/16 v0, 0x5a

    .restart local v0    # "limit":I
    goto/16 :goto_1

    .line 1781
    .end local v0    # "limit":I
    :cond_b
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v5, v9, :cond_14

    .line 1782
    if-ne p1, v11, :cond_e

    .line 1783
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_d

    if-ne p1, v10, :cond_c

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .line 1795
    .restart local v0    # "limit":I
    :goto_4
    const/16 v5, 0x86

    if-ne v0, v5, :cond_0

    .line 1802
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 1803
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_1

    .line 1783
    .end local v0    # "limit":I
    :cond_c
    const/16 v0, 0x95

    goto :goto_4

    :cond_d
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_4

    .line 1785
    :cond_e
    if-ne p1, v9, :cond_11

    .line 1786
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_10

    if-ne p1, v10, :cond_f

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .restart local v0    # "limit":I
    :goto_5
    goto :goto_4

    .end local v0    # "limit":I
    :cond_f
    const/16 v0, 0x95

    goto :goto_5

    :cond_10
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_5

    .line 1789
    :cond_11
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_13

    if-ne p1, v10, :cond_12

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .restart local v0    # "limit":I
    :goto_6
    goto :goto_4

    .end local v0    # "limit":I
    :cond_12
    const/16 v0, 0x92

    goto :goto_6

    :cond_13
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_6

    .line 1807
    :cond_14
    if-ne p1, v11, :cond_17

    .line 1808
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_16

    if-ne p1, v10, :cond_15

    .restart local v0    # "limit":I
    :goto_7
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_15
    const/16 v0, 0x9b

    goto :goto_7

    :cond_16
    move v0, v6

    goto :goto_7

    .line 1810
    :cond_17
    if-ne p1, v9, :cond_1a

    .line 1811
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_19

    if-ne p1, v10, :cond_18

    .restart local v0    # "limit":I
    :goto_8
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_18
    const/16 v0, 0x9b

    goto :goto_8

    :cond_19
    move v0, v6

    goto :goto_8

    .line 1813
    :cond_1a
    const/16 v5, 0xe

    if-ne p1, v5, :cond_1d

    .line 1814
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_1c

    if-ne p1, v10, :cond_1b

    .restart local v0    # "limit":I
    :cond_1b
    :goto_9
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_1c
    move v0, v6

    goto :goto_9

    .line 1817
    :cond_1d
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_1f

    if-ne p1, v10, :cond_1e

    .restart local v0    # "limit":I
    :goto_a
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_1e
    const/16 v0, 0x98

    goto :goto_a

    :cond_1f
    move v0, v6

    goto :goto_a

    .line 1834
    .restart local v0    # "limit":I
    .restart local v1    # "nextPos":I
    .restart local v2    # "pos":I
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "textLen":I
    :cond_20
    invoke-static {p0, v2, v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto/16 :goto_3

    .line 1838
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1839
    const/16 v0, 0x50

    .line 1844
    :cond_22
    :goto_b
    div-int/lit8 v5, v0, 0x2

    sub-int v6, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    goto/16 :goto_3

    .line 1840
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1841
    const/16 v0, 0x5a

    goto :goto_b

    .line 1851
    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    move v2, v1

    .line 1853
    goto/16 :goto_2
.end method

.method public static fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nli"    # I
    .param p2, "phonetype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1741
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "peerAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Landroid/text/format/Time;
    .param p4, "phoneType"    # I

    .prologue
    .line 463
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 464
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 470
    .local v0, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 467
    .end local v0    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 3
    .param p0, "sOriginatorAddress"    # Ljava/lang/String;
    .param p1, "lTimeMilli"    # J
    .param p3, "sMessage"    # Ljava/lang/String;
    .param p4, "bIs7Bit"    # Z
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1589
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1590
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .line 1597
    .local v0, "deliveruPdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    :goto_0
    return-object v0

    .line 1593
    .end local v0    # "deliveruPdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .restart local v0    # "deliveruPdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    goto :goto_0
.end method

.method public static getMaxUserDataBytesWithHeader()I
    .locals 1

    .prologue
    .line 1886
    const/16 v0, 0x86

    return v0
.end method

.method public static getMaxUserDataSeptetsWithHeader()I
    .locals 1

    .prologue
    .line 1904
    const/16 v0, 0x99

    return v0
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1550
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .prologue
    .line 1253
    const/4 v0, -0x1

    return v0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method private static final getSmsFacility(I)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1
    .param p0, "phoneType"    # I

    .prologue
    .line 1728
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 1729
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1731
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "originPort"    # I
    .param p3, "destinationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z
    .param p6, "phoneType"    # I

    .prologue
    .line 1196
    const/4 v1, 0x1

    if-ne v1, p6, :cond_0

    .line 1197
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1204
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    return-object v1

    .line 1202
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 1122
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1130
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1126
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "phoneType"    # I

    .prologue
    .line 1214
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 1215
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1222
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1218
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    .line 1075
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1076
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    :goto_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1079
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma getSubmitPdu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :goto_1
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1076
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1081
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1083
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm getSubmitPdu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "nli"    # I

    .prologue
    .line 1177
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1178
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 1186
    .local v7, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    new-instance v0, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v0, v7}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v0

    .line 1178
    .end local v7    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1182
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .restart local v7    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    .line 1151
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1159
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1155
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z
    .param p5, "phoneType"    # I

    .prologue
    .line 1232
    const/4 v1, 0x2

    if-ne v1, p5, :cond_0

    .line 1233
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1240
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1236
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;I)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 529
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 530
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static hasEmsSupport()Z
    .locals 1

    .prologue
    .line 1947
    const/4 v0, 0x1

    return v0
.end method

.method public static htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "phoneType"    # I

    .prologue
    .line 231
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 232
    const-string v0, "3gpp2"

    .line 237
    .local v0, "type":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    return-object v1

    .line 234
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    const-string v0, "3gpp"

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public static is7BitAfterFragmentText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1022
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    if-nez v1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return v0

    .line 1025
    :cond_1
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v0, :cond_0

    .line 1028
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCdmaVoice()Z
    .locals 2

    .prologue
    .line 1935
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1936
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoEmsSupportConfigListExisted()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    sget-boolean v4, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    if-nez v4, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    const v4, #android:array@no_ems_support_sim_operators#t

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "listArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 2020
    array-length v4, v1

    new-array v4, v4, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 2021
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 2022
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v5, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v6, v1, v0

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v5, v4, v0

    .line 2021
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2025
    .end local v0    # "i":I
    :cond_0
    sput-boolean v3, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 2029
    .end local v1    # "listArray":[Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 2033
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 388
    .local v0, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 389
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 394
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 391
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 402
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 403
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 408
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 405
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 336
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 344
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 345
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 350
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 347
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method protected static newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 359
    .local v0, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 360
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 365
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 362
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 373
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 374
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 379
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 376
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 415
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 418
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "phoneType"    # I

    .prologue
    .line 426
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 427
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 432
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 429
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static setPhoneType(I)V
    .locals 0
    .param p0, "phoneType"    # I

    .prologue
    .line 1248
    return-void
.end method

.method public static shouldAppendPageNumberAsPrefix()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1974
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1989
    .local v0, "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .local v2, "gid":Ljava/lang/String;
    .local v3, "i$":I
    .local v4, "len$":I
    .local v5, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 1978
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 1979
    .restart local v5    # "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    .line 1981
    .restart local v2    # "gid":Ljava/lang/String;
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1982
    .local v1, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1986
    :cond_2
    iget-boolean v6, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    goto :goto_0

    .line 1981
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 1

    .prologue
    .line 1925
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaMo()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAbsoluteValidityPeriod()J
    .locals 2

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getAbsoluteValidityPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallBackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 1546
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDateOfReport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
    .locals 1

    .prologue
    .line 1652
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1463
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 1296
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1301
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 1297
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1298
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1299
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1300
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMessageId()I
    .locals 2

    .prologue
    .line 1715
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->kddiGetMessageId()I

    move-result v0

    .line 1718
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageId()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPriority()I

    move-result v0

    return v0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPrivacyInd()I

    move-result v0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSmsc()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1609
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRawSmsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getSubId()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/telephony/SmsMessage;->mSubId:J

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfOriginatingAddress()I

    move-result v0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfScAddress()I

    move-result v0

    return v0
.end method

.method public getTpdu()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTpdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getdataCodingScheme()I

    move-result v0

    return v0
.end method

.method public getsinglesmsPhoneType()I
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getsinglesmsPhoneType()I

    move-result v0

    return v0
.end method

.method public isCMAS()Z
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCMAS()Z

    move-result v0

    return v0
.end method

.method public isCdmaFormat()Z
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isFromEVDO()Z
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v0

    return v0
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1701
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiProprietaryServiceCategory()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isOutGoingSms()Z
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isUnsupportedMessage()Z

    move-result v0

    return v0
.end method

.method public setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V
    .locals 1
    .param p1, "cmas"    # Lcom/android/internal/telephony/CmasMessage;

    .prologue
    .line 1646
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V

    .line 1647
    return-void
.end method

.method public setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
    .locals 1
    .param p1, "cmas"    # Landroid/telephony/HtcCmasMessage;

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V

    .line 1656
    return-void
.end method

.method public setIndexOnIcc(I)V
    .locals 1
    .param p1, "nIndex"    # I

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setIndexOnIcc(I)V

    .line 1481
    return-void
.end method

.method public setSubId(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Landroid/telephony/SmsMessage;->mSubId:J

    .line 170
    return-void
.end method

.method public setsinglesmsPhoneType(I)V
    .locals 1
    .param p1, "phonetype"    # I

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    .line 1864
    return-void
.end method
