.class public Lcom/sprint/net/lte/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final AVAILABLE_PDN_LABELS:Ljava/lang/String; = "ota,pam,internet"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final Property_DeviceId:Ljava/lang/String; = "ro.product.model"

.field private static final Property_HWVersion:Ljava/lang/String; = "ro.devicerev"

.field private static final Property_IPV6Support:Ljava/lang/String; = "ro.telephony.ipv6_capability"

.field private static final Property_SWVersion:Ljava/lang/String; = "ro.product.version"

.field private static final TAG:Ljava/lang/String; = "LteDeviceInfo"


# instance fields
.field private Bands:[I

.field private mApnInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBandSupport:[I

.field mContext:Landroid/content/Context;

.field private mcr:Landroid/content/ContentResolver;

.field private mdeviceid:Ljava/lang/String;

.field private mdevicename:Ljava/lang/String;

.field private mswversion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/sprint/net/lte/DeviceInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 43
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    .line 49
    return-void

    .line 43
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x11
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x12
        0x13
        0x14
        0x15
        0x18
        0x19
        0x29
        0x2a
        0x2b
        0x17
        0x1a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 43
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    .line 56
    const-string v0, "LteDeviceInfo"

    const-string v1, "++DeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Lcom/sprint/net/lte/DeviceInfo;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getApnInfo()V

    .line 59
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getDeviceName()V

    .line 60
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getSwVersion()V

    .line 61
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getDeviceID()V

    .line 62
    invoke-direct {p0}, Lcom/sprint/net/lte/DeviceInfo;->_getBandClassSupport()V

    .line 63
    const-string v0, "LteDeviceInfo"

    const-string v1, "--DeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x11
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x12
        0x13
        0x14
        0x15
        0x18
        0x19
        0x29
        0x2a
        0x2b
        0x17
        0x1a
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 43
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    .line 270
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    sget-object v1, Lcom/sprint/net/lte/ApnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 271
    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x11
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x12
        0x13
        0x14
        0x15
        0x18
        0x19
        0x29
        0x2a
        0x2b
        0x17
        0x1a
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/DeviceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sprint/net/lte/DeviceInfo$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sprint/net/lte/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _getApnInfo()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 132
    const-string v10, "_getApnInfo+"

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 134
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    .line 136
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/String;

    .line 137
    .local v6, "param":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v13, "148"

    aput-object v13, v6, v10

    .line 138
    const/4 v10, 0x1

    const-string v13, "13"

    aput-object v13, v6, v10

    .line 140
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    .line 141
    .local v3, "htc":Lcom/htc/service/HtcTelephonyManager;
    const-string v5, "getPdnSettings2"

    .line 142
    .local v5, "methodName":Ljava/lang/String;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v7, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v10, "ota,pam,internet"

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "availablePdnLabels":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, v1

    if-ge v4, v10, :cond_3

    .line 149
    const/4 v10, 0x2

    aget-object v13, v1, v4

    aput-object v13, v6, v10

    .line 150
    const-string/jumbo v10, "profile"

    invoke-virtual {v7, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v5, v7}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 152
    .local v8, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 154
    .local v9, "ret":[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_getApnInfo: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/sprint/net/lte/ApnInfo;

    invoke-direct {v0}, Lcom/sprint/net/lte/ApnInfo;-><init>()V

    .line 158
    .local v0, "ai":Lcom/sprint/net/lte/ApnInfo;
    const/4 v10, 0x1

    aget-object v10, v9, v10

    iput-object v10, v0, Lcom/sprint/net/lte/ApnInfo;->label:Ljava/lang/String;

    .line 159
    const/4 v10, 0x4

    aget-object v10, v9, v10

    iput-object v10, v0, Lcom/sprint/net/lte/ApnInfo;->ni:Ljava/lang/String;

    .line 160
    const/4 v10, 0x5

    aget-object v10, v9, v10

    iput-object v10, v0, Lcom/sprint/net/lte/ApnInfo;->type:Ljava/lang/String;

    .line 161
    const-string/jumbo v10, "lte"

    iput-object v10, v0, Lcom/sprint/net/lte/ApnInfo;->ratType:Ljava/lang/String;

    .line 162
    const/4 v10, 0x6

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/sprint/net/lte/ApnInfo;->timer:I

    .line 163
    const/4 v10, 0x7

    aget-object v10, v9, v10

    iput-object v10, v0, Lcom/sprint/net/lte/ApnInfo;->authType:Ljava/lang/String;

    .line 164
    const/16 v10, 0x8

    aget-object v10, v9, v10

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v11

    :goto_1
    iput-boolean v10, v0, Lcom/sprint/net/lte/ApnInfo;->isUsernameSet:Z

    .line 165
    const/16 v10, 0x9

    aget-object v10, v9, v10

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v11

    :goto_2
    iput-boolean v10, v0, Lcom/sprint/net/lte/ApnInfo;->isPasswordSet:Z

    .line 166
    iget-object v10, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "ai":Lcom/sprint/net/lte/ApnInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v0    # "ai":Lcom/sprint/net/lte/ApnInfo;
    :cond_1
    move v10, v12

    .line 164
    goto :goto_1

    :cond_2
    move v10, v12

    .line 165
    goto :goto_2

    .line 170
    .end local v0    # "ai":Lcom/sprint/net/lte/ApnInfo;
    .end local v1    # "availablePdnLabels":[Ljava/lang/String;
    .end local v3    # "htc":Lcom/htc/service/HtcTelephonyManager;
    .end local v4    # "i":I
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "param":[Ljava/lang/String;
    .end local v7    # "parameterBundle":Landroid/os/Bundle;
    .end local v8    # "resultBundle":Landroid/os/Bundle;
    .end local v9    # "ret":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnInfo:\te="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_getApnInfo-: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private _getBandClassSupport()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 178
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    .line 179
    .local v0, "htc":Lcom/htc/service/HtcTelephonyManager;
    sget-object v6, Lcom/sprint/net/MethodEnum;->GET_LTE_BAND_SUPPORT:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v6}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "methodName":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "methodName"

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v6, "RIL"

    invoke-virtual {v0, v6, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 183
    .local v5, "resultBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [I

    move-object v4, v6

    check-cast v4, [I

    .line 184
    .local v4, "result":[I
    if-nez v4, :cond_0

    .line 186
    const-string v6, "_getBandClassSupport: ret=null"

    invoke-direct {p0, v6}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 187
    const/4 v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    .line 188
    iget-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    const/16 v7, 0x19

    aput v7, v6, v10

    .line 210
    :goto_0
    return-void

    .line 193
    :cond_0
    aget v6, v4, v10

    if-lez v6, :cond_3

    .line 195
    aget v6, v4, v10

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    .line 196
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    aget v6, v4, v10

    if-gt v1, v6, :cond_2

    .line 198
    aget v6, v4, v1

    const/16 v7, 0x78

    if-lt v6, v7, :cond_1

    aget v6, v4, v1

    const/16 v7, 0x99

    if-gt v6, v7, :cond_1

    .line 200
    iget-object v6, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    add-int/lit8 v7, v1, -0x1

    iget-object v8, p0, Lcom/sprint/net/lte/DeviceInfo;->Bands:[I

    aget v9, v4, v1

    add-int/lit8 v9, v9, -0x78

    aget v8, v8, v9

    aput v8, v6, v7

    .line 196
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_getBandClassSupport: ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v1    # "i":I
    :cond_3
    const-string v6, "_getBandClassSupport: No supported band class"

    invoke-direct {p0, v6}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _getDeviceID()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 233
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_getDeviceID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v1, "Get null telephony service"

    invoke-direct {p0, v1}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _getDeviceName()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 218
    .local v1, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1    # "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_getDeviceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 229
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LteDeviceInfo"

    const-string v3, "getDeviceName failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _getSwVersion()V
    .locals 2

    .prologue
    .line 246
    const-string/jumbo v0, "ro.product.version"

    const-string v1, "Not defined"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_getSwVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/net/lte/DeviceInfo;->logi(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 292
    const-string v0, "LteDeviceInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getApnInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/lte/ApnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-string v1, "LteDeviceInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBandClassSupport()[I
    .locals 2

    .prologue
    .line 102
    const-string v0, "LteDeviceInfo"

    const-string v1, "getBandClassSupport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const-string v0, "LteDeviceInfo"

    const-string v1, "getDeviceID "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const-string v0, "LteDeviceInfo"

    const-string v1, "getDeviceName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    return-object v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const-string v0, "LteDeviceInfo"

    const-string v1, "getHwVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v0, "ro.devicerev"

    const-string v1, "Not defined"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, "LteDeviceInfo"

    const-string v1, "getSdkVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    const-string v0, "LteDeviceInfo"

    const-string v1, "getSwVersion "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    return-object v0
.end method

.method public isIpv6Supported()Z
    .locals 2

    .prologue
    .line 118
    const-string v0, "LteDeviceInfo"

    const-string/jumbo v1, "isIpv6Supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string/jumbo v0, "ro.telephony.ipv6_capability"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdevicename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mswversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mBandSupport:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 259
    iget-object v0, p0, Lcom/sprint/net/lte/DeviceInfo;->mApnInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 260
    return-void
.end method
