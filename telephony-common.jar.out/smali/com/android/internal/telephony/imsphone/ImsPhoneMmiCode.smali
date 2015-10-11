.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.super Landroid/os/Handler;
.source "ImsPhoneMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field private static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field private static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field private static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field private static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final CLIR_DEFAULT:I = 0x0

.field private static final CLIR_INVOCATION:I = 0x1

.field private static final CLIR_NOT_PROVISIONED:I = 0x0

.field private static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CLIR_PRESENTATION_RESTRICTED_TEMPORARY:I = 0x3

.field private static final CLIR_PROVISIONED_PERMANENT:I = 0x1

.field private static final CLIR_SUPPRESSION:I = 0x2

.field static final CfuTimer:Ljava/lang/String; = "Call Forward Unconditional Timer"

.field private static final END_OF_USSD_COMMAND:C = '#'

.field private static final EVENT_GET_CLIR_COMPLETE:I = 0x6

.field private static final EVENT_QUERY_CFUT_COMPLETE:I = 0x8

.field private static final EVENT_QUERY_CF_COMPLETE:I = 0x1

.field private static final EVENT_QUERY_COMPLETE:I = 0x3

.field private static final EVENT_QUERY_ICB_COMPLETE:I = 0xa

.field private static final EVENT_SET_CFF_COMPLETE:I = 0x4

.field private static final EVENT_SET_CFF_TIMER_COMPLETE:I = 0x9

.field private static final EVENT_SET_COMPLETE:I = 0x0

.field private static final EVENT_SUPP_SVC_QUERY_COMPLETE:I = 0x7

.field private static final EVENT_USSD_CANCEL_COMPLETE:I = 0x5

.field private static final EVENT_USSD_COMPLETE:I = 0x2

.field static final IcbAnonymousMmi:Ljava/lang/String; = "Anonymous Incoming Call Barring"

.field static final IcbDnMmi:Ljava/lang/String; = "Specific Incoming Call Barring"

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneMmiCode"

.field private static final MATCH_GROUP_ACTION:I = 0x2

.field private static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field private static final MATCH_GROUP_POUND_STRING:I = 0x1

.field private static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field private static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field private static final MATCH_GROUP_SIA:I = 0x5

.field private static final MATCH_GROUP_SIB:I = 0x7

.field private static final MATCH_GROUP_SIC:I = 0x9

.field private static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final SC_BAIC:Ljava/lang/String; = "35"

.field private static final SC_BAICa:Ljava/lang/String; = "157"

.field private static final SC_BAICr:Ljava/lang/String; = "351"

.field private static final SC_BAOC:Ljava/lang/String; = "33"

.field private static final SC_BAOIC:Ljava/lang/String; = "331"

.field private static final SC_BAOICxH:Ljava/lang/String; = "332"

.field private static final SC_BA_ALL:Ljava/lang/String; = "330"

.field private static final SC_BA_MO:Ljava/lang/String; = "333"

.field private static final SC_BA_MT:Ljava/lang/String; = "353"

.field private static final SC_BS_MT:Ljava/lang/String; = "156"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CFUT:Ljava/lang/String; = "22"

.field private static final SC_CF_All:Ljava/lang/String; = "002"

.field private static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field private static final SC_CLIP:Ljava/lang/String; = "30"

.field private static final SC_CLIR:Ljava/lang/String; = "31"

.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final SC_PIN:Ljava/lang/String; = "04"

.field private static final SC_PIN2:Ljava/lang/String; = "042"

.field private static final SC_PUK:Ljava/lang/String; = "05"

.field private static final SC_PUK2:Ljava/lang/String; = "052"

.field private static final SC_PWD:Ljava/lang/String; = "03"

.field private static final SC_WAIT:Ljava/lang/String; = "43"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"

.field public static final UT_BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"

.field static final sBStartSpecialDialString:Ljava/util/ArrayList;

.field static final sEntelSpecialDialString:Ljava/util/ArrayList;

.field static sPatternATTDialString:Ljava/util/regex/Pattern;

.field private static sPatternSuppService:Ljava/util/regex/Pattern;

.field static final sSPA_IusacelDialString:Ljava/util/ArrayList;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialingNumber:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsUssdRequest:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPoundString:Ljava/lang/String;

.field private mPwd:Ljava/lang/String;

.field private mSc:Ljava/lang/String;

.field private mSia:Ljava/lang/String;

.field private mSib:Ljava/lang/String;

.field private mSic:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 230
    const-string v0, "(\\*|#)(\\d{1,5})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternATTDialString:Ljava/util/regex/Pattern;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "*1"

    aput-object v2, v1, v4

    const-string v2, "*2"

    aput-object v2, v1, v5

    const-string v2, "*7"

    aput-object v2, v1, v3

    const-string v2, "*9"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sEntelSpecialDialString:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "*1"

    aput-object v2, v1, v4

    const-string v2, "*2"

    aput-object v2, v1, v5

    const-string v2, "*3"

    aput-object v2, v1, v3

    const-string v2, "*4"

    aput-object v2, v1, v6

    const-string v2, "*5"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "*6"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "*7"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "*8"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "*9"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "*20"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "*21"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "*171"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "*611"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sBStartSpecialDialString:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "#9"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sSPA_IusacelDialString:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 590
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 591
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 592
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 594
    return-void
.end method

.method private static final attSpecialDialString()Z
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    return v0
.end method

.method private static final brightstarSpecialDialString()Z
    .locals 2

    .prologue
    .line 277
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1958
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1959
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    if-gt v0, v2, :cond_1

    .line 1962
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 1963
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1960
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1967
    :cond_1
    return-object v1
.end method

.method private static final entelSpecialDialString()Z
    .locals 2

    .prologue
    .line 271
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1403
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1431
    :goto_0
    return-object v0

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1409
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1411
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1412
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1413
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1415
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "76"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1417
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1418
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 1421
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1422
    const-string v0, "Call Forward Unconditional Timer"

    goto/16 :goto_0

    .line 1423
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1424
    const-string v0, "Specific Incoming Call Barring"

    goto/16 :goto_0

    .line 1425
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "157"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1426
    const-string v0, "Anonymous Incoming Call Barring"

    goto/16 :goto_0

    .line 1431
    :cond_a
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 456
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isScMatchesSuppServType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "isMatch":Z
    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 441
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "sc":Ljava/lang/String;
    const-string v3, "22"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    const/4 v0, 0x1

    .line 449
    .end local v2    # "sc":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 445
    .restart local v2    # "sc":Ljava/lang/String;
    :cond_1
    const-string v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 546
    .local v5, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    .line 547
    const v6, 0x1070034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "barringMMI":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 550
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 551
    .local v4, "match":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 555
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "barringMMI":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "match":Ljava/lang/String;
    :goto_1
    return v6

    .line 550
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "barringMMI":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "match":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "barringMMI":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "match":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 530
    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static isServiceCodeUncondCallFwdTimer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 539
    if-eqz p0, :cond_0

    const-string v0, "22"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v0, 0x0

    .line 687
    if-nez p0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 722
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 723
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 732
    goto :goto_0
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 660
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "isTwoDigitShortCode"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v4

    .line 664
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 669
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 670
    .local v1, "dialnumber":Ljava/lang/String;
    const-string v5, "ImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Two Digit Number Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 672
    const-string v4, "ImsPhoneMmiCode"

    const-string v5, "Two Digit Number Pattern -true"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v4, 0x1

    goto :goto_0

    .line 669
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 676
    .end local v1    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "Two Digit Number Pattern -false"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final iusacellSpecialDialString()Z
    .locals 2

    .prologue
    .line 286
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1524
    new-array v3, v8, [Ljava/lang/String;

    const-string v7, "{0}"

    aput-object v7, v3, v6

    const-string v7, "{1}"

    aput-object v7, v3, v5

    const-string v7, "{2}"

    aput-object v7, v3, v9

    .line 1525
    .local v3, "sources":[Ljava/lang/String;
    new-array v1, v8, [Ljava/lang/CharSequence;

    .line 1531
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v7, v9, :cond_1

    move v2, v5

    .line 1534
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v5, :cond_3

    .line 1535
    if-eqz v2, :cond_2

    .line 1536
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1563
    .local v4, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v6

    .line 1564
    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    .line 1565
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v9

    .line 1567
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v7, :cond_0

    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    if-ne v7, v5, :cond_0

    .line 1570
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v5, :cond_6

    move v0, v5

    .line 1571
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_0

    .line 1572
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6, v5, v0, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1576
    .end local v0    # "cffEnabled":Z
    :cond_0
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .end local v2    # "needTimeTemplate":Z
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_1
    move v2, v6

    .line 1531
    goto :goto_0

    .line 1539
    .restart local v2    # "needTimeTemplate":Z
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c7

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1542
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_3
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v7, :cond_4

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1543
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1549
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    .line 1550
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1553
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400c9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    :cond_6
    move v0, v6

    .line 1570
    goto :goto_2
.end method

.method private makeCFTQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1693
    const-string v3, "ImsPhoneMmiCode"

    const-string v4, "makeCFTQueryResultMessage: "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "{0}"

    aput-object v3, v1, v5

    const-string v3, "{1}"

    aput-object v3, v1, v6

    const-string v3, "{2}"

    aput-object v3, v1, v7

    .line 1696
    .local v1, "sources":[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/CharSequence;

    .line 1699
    .local v0, "destinations":[Ljava/lang/CharSequence;
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1700
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10400c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1706
    .local v2, "template":Ljava/lang/CharSequence;
    :goto_0
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v3, p2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v5

    .line 1707
    iget-object v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    .line 1708
    iget v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    .line 1710
    invoke-static {v2, v1, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 1703
    .end local v2    # "template":Ljava/lang/CharSequence;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10400c9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "template":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 432
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 434
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 7
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v6, 0x1

    .line 306
    const/4 v3, 0x0

    .line 309
    .local v3, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->attSpecialDialString()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "isATTDialString":Z
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternATTDialString:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 312
    .local v0, "ATTString":Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "00"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    :cond_1
    const/4 v1, 0x1

    .line 317
    :cond_2
    if-eq v1, v6, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v4, v3

    .line 390
    .end local v0    # "ATTString":Ljava/util/regex/Matcher;
    .end local v1    # "isATTDialString":Z
    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .local v4, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :goto_0
    return-object v4

    .line 327
    .end local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->entelSpecialDialString()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 328
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sEntelSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_5

    move-object v4, v3

    .line 329
    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 335
    .end local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->brightstarSpecialDialString()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 336
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sBStartSpecialDialString:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_6

    move-object v4, v3

    .line 337
    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 343
    .end local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->iusacellSpecialDialString()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 344
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sSPA_IusacelDialString:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_7

    move-object v4, v3

    .line 345
    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto :goto_0

    .line 350
    .end local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 353
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 354
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 355
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 356
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 357
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 358
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 359
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 360
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    .line 361
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    .line 362
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 368
    iget-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 371
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 372
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    :cond_8
    :goto_1
    move-object v4, v3

    .line 390
    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    goto/16 :goto_0

    .line 374
    .end local v4    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_9
    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 379
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 380
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_1

    .line 381
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 383
    const/4 v3, 0x0

    goto :goto_1

    .line 384
    :cond_b
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 386
    new-instance v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 387
    .restart local v3    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 416
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 418
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 419
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 420
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 422
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 398
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 400
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 401
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 404
    if-eqz p1, :cond_0

    .line 405
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 406
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 411
    :goto_0
    return-object v0

    .line 408
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onIcbQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v7, 0x1040083

    .line 1774
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "onIcbQueryComplete "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1776
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1779
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1781
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_1

    .line 1782
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1783
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1784
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1812
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1813
    return-void

    .line 1786
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1789
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1792
    :cond_2
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Lcom/android/ims/ImsSsInfo;

    move-object v2, v5

    check-cast v2, [Lcom/android/ims/ImsSsInfo;

    .line 1793
    .local v2, "infos":[Lcom/android/ims/ImsSsInfo;
    array-length v5, v2

    if-nez v5, :cond_4

    .line 1794
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1809
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1796
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1797
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Num: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    iget-object v6, v6, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    iget v6, v6, Lcom/android/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1800
    :cond_5
    aget-object v5, v2, v1

    iget v5, v5, Lcom/android/ims/ImsSsInfo;->mStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1801
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x1040081

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1804
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1583
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 1586
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1588
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/ims/ImsException;

    if-eqz v7, :cond_1

    .line 1589
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1590
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1591
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1641
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1643
    return-void

    .line 1593
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1597
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1602
    :cond_2
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v7

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1604
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_4

    .line 1606
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x1040083

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1609
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_3

    .line 1610
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1637
    :cond_3
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1614
    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1622
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x1

    .line 1623
    .local v5, "serviceClassMask":I
    :goto_2
    const/16 v7, 0x80

    if-gt v5, v7, :cond_7

    .line 1626
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "s":I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 1627
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_5

    .line 1628
    aget-object v7, v2, v1

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1630
    const-string v7, "\n"

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1626
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1624
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1634
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryClirComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x10400a4

    const v10, 0x10400a1

    const/4 v9, 0x1

    const v8, 0x104007f

    const/4 v7, 0x0

    .line 1816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1817
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1820
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 1822
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 1823
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1824
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1825
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1906
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1907
    return-void

    .line 1827
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1831
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1832
    .local v3, "ssInfo":Landroid/os/Bundle;
    const-string v4, "queryClir"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 1835
    .local v0, "clirInfo":[I
    const-string v4, "ImsPhoneMmiCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLIR param n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    aget v4, v0, v9

    packed-switch v4, :pswitch_data_0

    .line 1899
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1901
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1841
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1843
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1846
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1848
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1852
    :pswitch_3
    aget v4, v0, v7

    packed-switch v4, :pswitch_data_1

    .line 1869
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1871
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1854
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1856
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1859
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1861
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1864
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1866
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1876
    :pswitch_7
    aget v4, v0, v7

    packed-switch v4, :pswitch_data_2

    .line 1893
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1895
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1878
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1880
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1883
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v5, 0x10400a3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1885
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1888
    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1890
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1839
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 1852
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1876
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v7, 0x104007f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1912
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1915
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1917
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_1

    .line 1918
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1919
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1920
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1950
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1951
    return-void

    .line 1922
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1925
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1929
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 1931
    .local v1, "ints":[I
    array-length v3, v1

    if-eqz v3, :cond_6

    .line 1932
    aget v3, v1, v5

    if-nez v3, :cond_3

    .line 1933
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1946
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1934
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1936
    aget v3, v1, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1937
    :cond_4
    aget v3, v1, v5

    if-ne v3, v6, :cond_5

    .line 1939
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1941
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1944
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryUncondCfTimerComplete(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1648
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 1651
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1652
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1687
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1688
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1690
    return-void

    .line 1655
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v6

    check-cast v1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1656
    .local v1, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v6, v1

    if-nez v6, :cond_1

    .line 1658
    const-string v6, "ImsPhoneMmiCode"

    const-string v7, "In infos.length == 0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x1040083

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1684
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1661
    :cond_1
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1662
    .local v5, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x1

    .line 1663
    .local v4, "serviceClassMask":I
    :goto_2
    const/16 v6, 0x80

    if-gt v4, v6, :cond_5

    .line 1665
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "s":I
    :goto_3
    if-ge v0, v2, :cond_4

    .line 1666
    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-eqz v6, :cond_3

    .line 1669
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->startHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->startMinute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EndTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->endHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->endMinute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400b0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    :cond_2
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 1675
    :cond_3
    aget-object v6, v1, v0

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_2

    .line 1676
    aget-object v6, v1, v0

    invoke-direct {p0, v6, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFTQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1678
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_4

    .line 1664
    :cond_4
    shl-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1682
    .end local v0    # "i":I
    .end local v2    # "s":I
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v5, 0x1040084

    const v4, 0x104007f

    .line 1436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1437
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 1440
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1442
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 1443
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 1444
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    .line 1445
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1486
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1487
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1488
    return-void

    .line 1448
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1452
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1453
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1454
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1456
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1459
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1460
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1461
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    if-eqz v3, :cond_4

    .line 1462
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1465
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1468
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1469
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1470
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040083

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1472
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1473
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1474
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1476
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1477
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1478
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x1040085

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1481
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1482
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x1040083

    const v10, 0x1040081

    const v9, 0x104007f

    const/4 v8, 0x1

    .line 1715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1716
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1719
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1721
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_1

    .line 1722
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1723
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1724
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1770
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1771
    return-void

    .line 1726
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1729
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1732
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1733
    const/4 v3, 0x0

    .line 1734
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v5, v5, Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 1735
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "Received CLIP/COLP/COLR Response."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1738
    .local v4, "ssInfoResp":Landroid/os/Bundle;
    const-string v5, "imsSsInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    check-cast v3, Lcom/android/ims/ImsSsInfo;

    .line 1739
    .restart local v3    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    if-eqz v3, :cond_5

    .line 1740
    const-string v5, "ImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ImsSsInfo mStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-nez v5, :cond_3

    .line 1742
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1743
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1744
    :cond_3
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v5, v8, :cond_4

    .line 1745
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1746
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1748
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1751
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1755
    .end local v4    # "ssInfoResp":Landroid/os/Bundle;
    :cond_6
    const-string v5, "ImsPhoneMmiCode"

    const-string v6, "Received Call Barring Response."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 1758
    .local v0, "cbInfos":[I
    const/4 v5, 0x0

    aget v5, v0, v5

    if-ne v5, v8, :cond_7

    .line 1759
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1760
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1762
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1763
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0
.end method

.method private processIcbMmiCodeForUpdate()V
    .locals 7

    .prologue
    .line 1370
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 1371
    .local v1, "dialingNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1376
    .local v3, "icbNum":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1377
    const-string v4, "\\$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1380
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->callBarrAction(Ljava/lang/String;)I

    move-result v0

    .line 1383
    .local v0, "callAction":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v0, v6, v3}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v2

    .line 1393
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string v4, "ImsPhoneMmiCode"

    const-string v5, "Could not get UT handle for updating ICB."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 560
    if-nez p0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    const-string v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const-string v0, "AO"

    .line 579
    :goto_0
    return-object v0

    .line 566
    :cond_1
    const-string v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    const-string v0, "OI"

    goto :goto_0

    .line 568
    :cond_2
    const-string v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    const-string v0, "OX"

    goto :goto_0

    .line 570
    :cond_3
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 571
    const-string v0, "AI"

    goto :goto_0

    .line 572
    :cond_4
    const-string v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 573
    const-string v0, "IR"

    goto :goto_0

    .line 574
    :cond_5
    const-string v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 575
    const-string v0, "AB"

    goto :goto_0

    .line 576
    :cond_6
    const-string v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 577
    const-string v0, "AG"

    goto :goto_0

    .line 578
    :cond_7
    const-string v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 579
    const-string v0, "AC"

    goto :goto_0

    .line 581
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 461
    if-nez p0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const/4 v0, 0x4

    .line 479
    :goto_0
    return v0

    .line 469
    :cond_1
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "22"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    :cond_3
    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    :cond_4
    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    const/4 v0, 0x3

    goto :goto_0

    .line 476
    :cond_5
    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 477
    const/4 v0, 0x2

    goto :goto_0

    .line 478
    :cond_6
    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    const/4 v0, 0x5

    goto :goto_0

    .line 481
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    .line 1498
    sparse-switch p1, :sswitch_data_0

    .line 1516
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1500
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1502
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1504
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1506
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1508
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1510
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1512
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1514
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1498
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 487
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 488
    :cond_0
    const/4 v1, 0x0

    .line 510
    :goto_0
    return v1

    .line 491
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :sswitch_0
    const/16 v1, 0xd

    goto :goto_0

    .line 495
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 496
    :sswitch_2
    const/16 v1, 0xc

    goto :goto_0

    .line 497
    :sswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 499
    :sswitch_4
    const/16 v1, 0x8

    goto :goto_0

    .line 501
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 503
    :sswitch_6
    const/16 v1, 0x30

    goto :goto_0

    .line 505
    :sswitch_7
    const/16 v1, 0xa0

    goto :goto_0

    .line 506
    :sswitch_8
    const/16 v1, 0x50

    goto :goto_0

    .line 507
    :sswitch_9
    const/16 v1, 0x10

    goto :goto_0

    .line 508
    :sswitch_a
    const/16 v1, 0x20

    goto :goto_0

    .line 509
    :sswitch_b
    const/16 v1, 0x11

    goto :goto_0

    .line 510
    :sswitch_c
    const/16 v1, 0x40

    goto :goto_0

    .line 493
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    .line 520
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 521
    :cond_0
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public calForwardAction(Ljava/lang/String;)I
    .locals 4
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 842
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    .line 854
    :goto_0
    return v0

    .line 846
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    move v0, v1

    .line 847
    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 850
    goto :goto_0

    .line 851
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 852
    goto :goto_0

    .line 853
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    const/4 v0, 0x4

    goto :goto_0

    .line 856
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callBarrAction(Ljava/lang/String;)I
    .locals 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const/4 v0, 0x1

    .line 878
    :goto_0
    return v0

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    const/4 v0, 0x0

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 873
    const/4 v0, 0x3

    goto :goto_0

    .line 875
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    const/4 v0, 0x4

    goto :goto_0

    .line 880
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 624
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD()V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x2

    .line 770
    :goto_0
    return v0

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    const/4 v0, 0x1

    goto :goto_0

    .line 770
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDialingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 1275
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1277
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1279
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1283
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1289
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_1

    .line 1290
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_2

    move v1, v3

    .line 1291
    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    .line 1292
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1296
    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1290
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1301
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1302
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1307
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1308
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1313
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1314
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryUncondCfTimerComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1319
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1320
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1324
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1326
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1327
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1328
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1330
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0

    .line 1341
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0

    .line 1345
    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1346
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1351
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1352
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1357
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 1358
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isPinPukCommand()Z
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method isRegister()Z
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShortCode()Z
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportedOverImsPhone()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v1

    .line 809
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 810
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "77"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "76"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "156"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "157"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 820
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, "serviceClass":I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    move v1, v2

    .line 823
    goto/16 :goto_0

    .line 826
    .end local v0    # "serviceClass":I
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "30"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v4, "31"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    move v1, v2

    .line 829
    goto/16 :goto_0

    .line 830
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v3, :cond_0

    move v1, v2

    .line 832
    goto/16 :goto_0
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

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

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1216
    if-nez p1, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1221
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 1223
    if-nez p2, :cond_0

    .line 1224
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1229
    :cond_1
    return-void

    .line 1219
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 1

    .prologue
    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError(Ljava/lang/String;)V

    .line 1241
    return-void
.end method

.method onUssdFinishedError(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 1245
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "ussdMessage":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1254
    :cond_1
    return-void
.end method

.method processCode()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 889
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 890
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "isShortCode"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v4, "ImsPhoneMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending short code \'"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\' over CS pipe."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cs_fallback"

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :catch_0
    move-exception v22

    .line 1198
    .local v22, "exc":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x104007f

    invoke-virtual {v4, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1202
    .end local v22    # "exc":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 896
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 897
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is CF"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 901
    .local v7, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 902
    .local v6, "reason":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v8

    .line 904
    .local v8, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    .line 934
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->calForwardAction(Ljava/lang/String;)I

    move-result v5

    .line 937
    .local v5, "cfAction":I
    if-eqz v6, :cond_2

    const/4 v4, 0x4

    if-ne v6, v4, :cond_4

    :cond_2
    const/16 v25, 0x1

    .line 941
    .local v25, "isSettingUnconditional":I
    :goto_1
    const/4 v4, 0x1

    if-eq v5, v4, :cond_3

    const/4 v4, 0x3

    if-ne v5, v4, :cond_5

    :cond_3
    const/16 v24, 0x1

    .line 945
    .local v24, "isEnableDesired":I
    :goto_2
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is CF setCallForward"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    move-object/from16 v3, p0

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 937
    .end local v24    # "isEnableDesired":I
    .end local v25    # "isSettingUnconditional":I
    :cond_4
    const/16 v25, 0x0

    goto :goto_1

    .line 941
    .restart local v25    # "isSettingUnconditional":I
    :cond_5
    const/16 v24, 0x0

    goto :goto_2

    .line 953
    .end local v5    # "cfAction":I
    .end local v6    # "reason":I
    .end local v7    # "dialingNumber":Ljava/lang/String;
    .end local v8    # "time":I
    .end local v25    # "isSettingUnconditional":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeUncondCallFwdTimer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 954
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is UncondCFTimer"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 957
    .restart local v7    # "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v6

    .line 959
    .restart local v6    # "reason":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v9, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 965
    :cond_7
    const/4 v10, 0x0

    .line 966
    .local v10, "startHour":I
    const/4 v11, 0x0

    .line 967
    .local v11, "startMinute":I
    const/4 v12, 0x0

    .line 968
    .local v12, "endHour":I
    const/4 v13, 0x0

    .line 969
    .local v13, "endMinute":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    const-string v9, "\\$"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 976
    .local v19, "duration":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v19, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    aget-object v4, v19, v4

    if-eqz v4, :cond_b

    .line 978
    const/4 v4, 0x0

    aget-object v4, v19, v4

    const-string v9, "\\:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 979
    .local v27, "start":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v27, v4

    if-eqz v4, :cond_8

    .line 980
    const/4 v4, 0x0

    aget-object v4, v27, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 982
    :cond_8
    const/4 v4, 0x1

    aget-object v4, v27, v4

    if-eqz v4, :cond_9

    .line 983
    const/4 v4, 0x1

    aget-object v4, v27, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 986
    :cond_9
    const/4 v4, 0x1

    aget-object v4, v19, v4

    const-string v9, "\\:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 987
    .local v21, "end":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v21, v4

    if-eqz v4, :cond_a

    .line 988
    const/4 v4, 0x0

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 990
    :cond_a
    const/4 v4, 0x1

    aget-object v4, v21, v4

    if-eqz v4, :cond_b

    .line 991
    const/4 v4, 0x1

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 995
    .end local v19    # "duration":[Ljava/lang/String;
    .end local v21    # "end":[Ljava/lang/String;
    .end local v27    # "start":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->calForwardAction(Ljava/lang/String;)I

    move-result v14

    .line 996
    .local v14, "cfTimerAction":I
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "is CFUT setCallForward"

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    move v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1003
    .end local v6    # "reason":I
    .end local v7    # "dialingNumber":Ljava/lang/String;
    .end local v10    # "startHour":I
    .end local v11    # "startMinute":I
    .end local v12    # "endHour":I
    .end local v13    # "endMinute":I
    .end local v14    # "cfTimerAction":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1009
    .local v26, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1011
    .local v23, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1014
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1015
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v9, v1, v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1018
    :cond_f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1020
    .end local v23    # "facility":Ljava/lang/String;
    .end local v26    # "password":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "31"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_11

    .line 1026
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1028
    :catch_1
    move-exception v20

    .line 1029
    .local v20, "e":Lcom/android/ims/ImsException;
    :try_start_3
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1031
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    if-eqz v4, :cond_12

    .line 1033
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1035
    :catch_2
    move-exception v20

    .line 1036
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_5
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1038
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    if-eqz v4, :cond_13

    .line 1040
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1042
    :catch_3
    move-exception v20

    .line 1043
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_7
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1046
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_13
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1048
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "30"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v4

    if-eqz v4, :cond_16

    .line 1053
    :cond_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 1055
    :catch_4
    move-exception v20

    .line 1056
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_9
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1058
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v4

    if-eqz v4, :cond_18

    .line 1060
    :cond_17
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 1062
    :catch_5
    move-exception v20

    .line 1063
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_b
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1067
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    move-result v4

    if-eqz v4, :cond_19

    .line 1069
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1071
    :catch_6
    move-exception v20

    .line 1072
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_d
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCLIP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1074
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    move-result v4

    if-eqz v4, :cond_1b

    .line 1076
    :cond_1a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 1078
    :catch_7
    move-exception v20

    .line 1079
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_f
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCLIP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1082
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_1b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1084
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "76"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    move-result v4

    if-eqz v4, :cond_1d

    .line 1088
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 1090
    :catch_8
    move-exception v20

    .line 1091
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_11
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCOLP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1093
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    move-result v4

    if-eqz v4, :cond_1f

    .line 1095
    :cond_1e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    .line 1097
    :catch_9
    move-exception v20

    .line 1098
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_13
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCOLP."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1101
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_1f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1103
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "77"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v4

    if-eqz v4, :cond_21

    .line 1109
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_14
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 1112
    :catch_a
    move-exception v20

    .line 1113
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_15
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCOLR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1115
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    move-result v4

    if-eqz v4, :cond_22

    .line 1119
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_0

    .line 1122
    :catch_b
    move-exception v20

    .line 1123
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_17
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for updateCOLR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1125
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    move-result v4

    if-eqz v4, :cond_23

    .line 1127
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_18
    .catch Lcom/android/ims/ImsException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_0

    .line 1129
    :catch_c
    move-exception v20

    .line 1130
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_19
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for queryCOLR."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1133
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1135
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "156"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    move-result v4

    if-eqz v4, :cond_26

    .line 1137
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/16 v9, 0xa

    const/16 v15, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1a
    .catch Lcom/android/ims/ImsException; {:try_start_1a .. :try_end_1a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_0

    .line 1149
    :catch_d
    move-exception v20

    .line 1150
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_1b
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for ICB."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_0

    .line 1146
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_25
    :try_start_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_1c
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    goto/16 :goto_0

    .line 1152
    :cond_26
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "157"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0

    move-result v4

    if-eqz v4, :cond_2a

    .line 1154
    const/16 v18, 0x0

    .line 1158
    .local v18, "callAction":I
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x6

    const/16 v15, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v4, v9, v15}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1e
    .catch Lcom/android/ims/ImsException; {:try_start_1e .. :try_end_1e} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_0

    .line 1176
    :catch_e
    move-exception v20

    .line 1177
    .restart local v20    # "e":Lcom/android/ims/ImsException;
    :try_start_1f
    const-string v4, "ImsPhoneMmiCode"

    const-string v9, "Could not get UT handle for ICBa."

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_0

    .line 1164
    .end local v20    # "e":Lcom/android/ims/ImsException;
    :cond_27
    :try_start_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1165
    const/16 v18, 0x1

    .line 1169
    :cond_28
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    const/4 v9, 0x6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v4, v9, v0, v15, v1}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1166
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_20
    .catch Lcom/android/ims/ImsException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0

    move-result v4

    if-eqz v4, :cond_28

    .line 1167
    const/16 v18, 0x0

    goto :goto_3

    .line 1179
    .end local v18    # "callAction":I
    :cond_2a
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "43"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1183
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v4, v9, v15}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1185
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1188
    :cond_2d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1190
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 1191
    const-string v4, "ImsPhoneMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sending pound string \'"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v15, "\' over CS pipe."

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    const-string v9, "cs_fallback"

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1195
    :cond_2f
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1985
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " poundString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
