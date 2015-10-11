.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x5

.field static final TRANSACTION_copyMessageToIccEfForResult:I = 0x2a

.field static final TRANSACTION_copyMessageToIccEfForResultByFormat:I = 0x3a

.field static final TRANSACTION_copyMessageToIccEfForResultForSubscriber:I = 0x49

.field static final TRANSACTION_copyMessageToIccEfForResultWithType:I = 0x29

.field static final TRANSACTION_copyMessageToIccEfForResultWithTypeForSubscriber:I = 0x4a

.field static final TRANSACTION_copyMessageToIccEfForSubscriber:I = 0x6

.field static final TRANSACTION_copyMessageToIccEfWithType:I = 0x27

.field static final TRANSACTION_copyMessageToIccEfWithTypeForSubscriber:I = 0x28

.field static final TRANSACTION_disableCellBroadcast:I = 0x11

.field static final TRANSACTION_disableCellBroadcastForSubscriber:I = 0x12

.field static final TRANSACTION_disableCellBroadcastRange:I = 0x15

.field static final TRANSACTION_disableCellBroadcastRangeForSubscriber:I = 0x16

.field static final TRANSACTION_enableCellBroadcast:I = 0xf

.field static final TRANSACTION_enableCellBroadcastForSubscriber:I = 0x10

.field static final TRANSACTION_enableCellBroadcastRange:I = 0x13

.field static final TRANSACTION_enableCellBroadcastRangeForSubscriber:I = 0x14

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getAllMessagesFromIccEfForSubscriber:I = 0x2

.field static final TRANSACTION_getCSCB:I = 0x30

.field static final TRANSACTION_getCarrierID:I = 0x37

.field static final TRANSACTION_getDeliveryPdu:I = 0x58

.field static final TRANSACTION_getDeliveryPduForSubscriber:I = 0x59

.field static final TRANSACTION_getImsSmsFormat:I = 0x1e

.field static final TRANSACTION_getImsSmsFormatForSubscriber:I = 0x1f

.field static final TRANSACTION_getMessageFromIccEf:I = 0x23

.field static final TRANSACTION_getMessageFromIccEfForSubscriber:I = 0x4b

.field static final TRANSACTION_getMessageFromIccEfWithType:I = 0x24

.field static final TRANSACTION_getMessageFromIccEfWithTypeForSubscriber:I = 0x4c

.field static final TRANSACTION_getNextMessageIdInPreference:I = 0x40

.field static final TRANSACTION_getPreferredSmsSubscription:I = 0x1d

.field static final TRANSACTION_getPremiumSmsPermission:I = 0x17

.field static final TRANSACTION_getPremiumSmsPermissionForSubscriber:I = 0x18

.field static final TRANSACTION_getSMSC:I = 0x2d

.field static final TRANSACTION_getSMSCForSubscriber:I = 0x4d

.field static final TRANSACTION_getSubmitPduForCdmaSimSms:I = 0x5c

.field static final TRANSACTION_getSubmitPduForCdmaSimSmsForSubscriber:I = 0x5d

.field static final TRANSACTION_getTestBCSMS:I = 0x39

.field static final TRANSACTION_getTestBCSMSForSubscriber:I = 0x54

.field static final TRANSACTION_injectSmsPdu:I = 0xb

.field static final TRANSACTION_injectSmsPduForSubscriber:I = 0x47

.field static final TRANSACTION_isCdmaMo:I = 0x45

.field static final TRANSACTION_isFdnEnabled:I = 0x5e

.field static final TRANSACTION_isFdnEnabledForSubscriber:I = 0x5f

.field static final TRANSACTION_isImsSmsSupported:I = 0x1b

.field static final TRANSACTION_isImsSmsSupportedForSubscriber:I = 0x1c

.field static final TRANSACTION_isSMSPromptEnabled:I = 0x20

.field static final TRANSACTION_isSendCdmaMoSms:I = 0x3f

.field static final TRANSACTION_kddiAcknowledgeSendRequest:I = 0x3c

.field static final TRANSACTION_requestGetBCSMSServiceEntry:I = 0x35

.field static final TRANSACTION_requestGetBCSMSServiceEntryForSubscriber:I = 0x51

.field static final TRANSACTION_requestGetBCSMSServiceLabel:I = 0x34

.field static final TRANSACTION_requestGetBCSMSServiceLabelForSubscriber:I = 0x50

.field static final TRANSACTION_requestGetBCSMSServiceNumber:I = 0x33

.field static final TRANSACTION_requestGetBCSMSServiceNumberForSubscriber:I = 0x4f

.field static final TRANSACTION_sendData:I = 0x7

.field static final TRANSACTION_sendDataForSubscriber:I = 0x8

.field static final TRANSACTION_sendMultipartData:I = 0x60

.field static final TRANSACTION_sendMultipartDataForSubscriber:I = 0x61

.field static final TRANSACTION_sendMultipartDataWithBundle:I = 0x2b

.field static final TRANSACTION_sendMultipartDataWithBundleForSubscriber:I = 0x48

.field static final TRANSACTION_sendMultipartText:I = 0xd

.field static final TRANSACTION_sendMultipartTextForSubscriber:I = 0xe

.field static final TRANSACTION_sendMultipartTextWithBundle:I = 0x43

.field static final TRANSACTION_sendMultipartTextWithBundleForSubscriber:I = 0x44

.field static final TRANSACTION_sendMultipartTextWithNli:I = 0x2c

.field static final TRANSACTION_sendRawPduWithBundle:I = 0x41

.field static final TRANSACTION_sendRawPduWithBundleForSubscriber:I = 0x42

.field static final TRANSACTION_sendStoredMultipartText:I = 0x22

.field static final TRANSACTION_sendStoredText:I = 0x21

.field static final TRANSACTION_sendText:I = 0x9

.field static final TRANSACTION_sendTextForSubscriber:I = 0xa

.field static final TRANSACTION_sendTextWithBundle:I = 0x56

.field static final TRANSACTION_sendTextWithBundleForSubscriber:I = 0x57

.field static final TRANSACTION_setBCSMS:I = 0x36

.field static final TRANSACTION_setBCSMSForSubscriber:I = 0x52

.field static final TRANSACTION_setCBEntry:I = 0x31

.field static final TRANSACTION_setCSCB:I = 0x2f

.field static final TRANSACTION_setCSCBForSubscriber:I = 0x55

.field static final TRANSACTION_setPremiumSmsPermission:I = 0x19

.field static final TRANSACTION_setPremiumSmsPermissionForSubscriber:I = 0x1a

.field static final TRANSACTION_setSMSC:I = 0x2e

.field static final TRANSACTION_setSMSCForSubscriber:I = 0x4e

.field static final TRANSACTION_setTestBCSMS:I = 0x38

.field static final TRANSACTION_setTestBCSMSForSubscriber:I = 0x53

.field static final TRANSACTION_updateCBMI:I = 0x3d

.field static final TRANSACTION_updateCBMIR:I = 0x3e

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x3

.field static final TRANSACTION_updateMessageOnIccEfByFormat:I = 0x3b

.field static final TRANSACTION_updateMessageOnIccEfForSubscriber:I = 0x4

.field static final TRANSACTION_updateMessageOnIccEfWithType:I = 0x25

.field static final TRANSACTION_updateMessageOnIccEfWithTypeForSubscriber:I = 0x26

.field static final TRANSACTION_updateNvItem:I = 0x32

.field static final TRANSACTION_updateSimSmsAsRead:I = 0x5a

.field static final TRANSACTION_updateSimSmsAsReadForSubscriber:I = 0x5b

.field static final TRANSACTION_updateSmsSendStatus:I = 0xc

.field static final TRANSACTION_updateSmsSendStatusForSubscriber:I = 0x46


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/android/internal/telephony/ISms;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 70
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 1619
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 56
    :sswitch_0
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v5, 0x1

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 67
    const/4 v5, 0x1

    goto :goto_0

    .line 71
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 75
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 77
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/4 v5, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 89
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 91
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 92
    .local v10, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v68

    .line 93
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v68, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v5, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 99
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":Z
    :sswitch_4
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 103
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 107
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 109
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg4":[B
    move-object/from16 v5, p0

    .line 110
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z

    move-result v68

    .line 111
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v68, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 112
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 117
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":Z
    :sswitch_5
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 123
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 125
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 126
    .local v10, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v68

    .line 127
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v68, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 128
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 133
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":Z
    :sswitch_6
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 137
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 141
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 143
    .restart local v10    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .restart local v11    # "_arg4":[B
    move-object/from16 v5, p0

    .line 144
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z

    move-result v68

    .line 145
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v68, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 146
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 151
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":Z
    :sswitch_7
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 161
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 163
    .restart local v11    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 164
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .line 170
    .local v18, "_arg5":Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 171
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .local v19, "_arg6":Landroid/app/PendingIntent;
    :goto_6
    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    .line 176
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 167
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_5

    .line 174
    :cond_5
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_6

    .line 182
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_8
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 186
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 188
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 190
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 194
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 196
    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .line 203
    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 204
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .local v14, "_arg7":Landroid/app/PendingIntent;
    :goto_8
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    .line 209
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/ISms$Stub;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 200
    .end local v14    # "_arg7":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_7

    .line 207
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/app/PendingIntent;
    goto :goto_8

    .line 215
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v14    # "_arg7":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":[B
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_9
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 221
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 223
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 225
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 226
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 232
    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 233
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .local v18, "_arg5":Landroid/app/PendingIntent;
    :goto_a
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v18

    .line 238
    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 229
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_9

    .line 236
    :cond_9
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_a

    .line 244
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 248
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 250
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 252
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 254
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 257
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .line 263
    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 264
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    :goto_c
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    .line 269
    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/telephony/ISms$Stub;->sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 260
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_b

    .line 267
    :cond_b
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_c

    .line 275
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 279
    .local v6, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 281
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 282
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 287
    .local v9, "_arg2":Landroid/app/PendingIntent;
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 285
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/app/PendingIntent;
    goto :goto_d

    .line 293
    .end local v6    # "_arg0":[B
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 297
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v8, 0x1

    .line 298
    .local v8, "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->updateSmsSendStatus(IZ)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 297
    .end local v8    # "_arg1":Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_e

    .line 304
    .end local v6    # "_arg0":I
    :sswitch_d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 314
    .local v24, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 316
    .local v25, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .local v26, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    .line 317
    invoke-virtual/range {v20 .. v26}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 323
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 327
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 329
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 331
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 333
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v33

    .line 335
    .local v33, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 337
    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .local v35, "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v27, p0

    move-wide/from16 v28, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v34, v26

    .line 338
    invoke-virtual/range {v27 .. v35}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 344
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 347
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v68

    .line 348
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v68, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 349
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 354
    .end local v6    # "_arg0":I
    .end local v68    # "_result":Z
    :sswitch_10
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 358
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 359
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastForSubscriber(JI)Z

    move-result v68

    .line 360
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v68, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 361
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .line 366
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v68    # "_result":Z
    :sswitch_11
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 369
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v68

    .line 370
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    if-eqz v68, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 371
    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .line 376
    .end local v6    # "_arg0":I
    .end local v68    # "_result":Z
    :sswitch_12
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 380
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 381
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastForSubscriber(JI)Z

    move-result v68

    .line 382
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v68, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 383
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 388
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v68    # "_result":Z
    :sswitch_13
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 392
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 393
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(II)Z

    move-result v68

    .line 394
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    if-eqz v68, :cond_12

    const/4 v5, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 395
    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .line 400
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v68    # "_result":Z
    :sswitch_14
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 404
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 406
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 407
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRangeForSubscriber(JII)Z

    move-result v68

    .line 408
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v68, :cond_13

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 409
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .line 414
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":Z
    :sswitch_15
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 418
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 419
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(II)Z

    move-result v68

    .line 420
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v68, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 421
    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .line 426
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v68    # "_result":Z
    :sswitch_16
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 430
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 432
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 433
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRangeForSubscriber(JII)Z

    move-result v68

    .line 434
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v68, :cond_15

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 435
    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .line 440
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":Z
    :sswitch_17
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v68

    .line 444
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 450
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v68    # "_result":I
    :sswitch_18
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 454
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->getPremiumSmsPermissionForSubscriber(JLjava/lang/String;)I

    move-result v68

    .line 456
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 462
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v68    # "_result":I
    :sswitch_19
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 467
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 468
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 473
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    :sswitch_1a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 477
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 479
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 480
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->setPremiumSmsPermissionForSubscriber(JLjava/lang/String;I)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 486
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_1b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupported()Z

    move-result v68

    .line 488
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v68, :cond_16

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 489
    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .line 494
    .end local v68    # "_result":Z
    :sswitch_1c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 497
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->isImsSmsSupportedForSubscriber(J)Z

    move-result v68

    .line 498
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v68, :cond_17

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 499
    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .line 504
    .end local v6    # "_arg0":J
    .end local v68    # "_result":Z
    :sswitch_1d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getPreferredSmsSubscription()J

    move-result-wide v68

    .line 506
    .local v68, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    move-wide/from16 v1, v68

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 508
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 512
    .end local v68    # "_result":J
    :sswitch_1e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v68

    .line 514
    .local v68, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 520
    .end local v68    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 523
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;

    move-result-object v68

    .line 524
    .restart local v68    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 530
    .end local v6    # "_arg0":J
    .end local v68    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSMSPromptEnabled()Z

    move-result v68

    .line 532
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v68, :cond_18

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 533
    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .line 538
    .end local v68    # "_result":Z
    :sswitch_21
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 542
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 544
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 545
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 551
    .local v9, "_arg2":Landroid/net/Uri;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 553
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 554
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 560
    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 561
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_1c
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    .line 566
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 548
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :cond_19
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_1a

    .line 557
    .restart local v10    # "_arg3":Ljava/lang/String;
    :cond_1a
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1b

    .line 564
    :cond_1b
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_1c

    .line 572
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :sswitch_22
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 576
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 578
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 579
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 585
    .restart local v9    # "_arg2":Landroid/net/Uri;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 587
    .restart local v10    # "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 589
    .restart local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v37, p0

    move-wide/from16 v38, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    .line 590
    invoke-virtual/range {v37 .. v44}, Lcom/android/internal/telephony/ISms$Stub;->sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 582
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :cond_1c
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/net/Uri;
    goto :goto_1d

    .line 596
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    :sswitch_23
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 599
    .local v6, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->getMessageFromIccEf(I)[B

    move-result-object v68

    .line 600
    .local v68, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 602
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 606
    .end local v6    # "_arg0":I
    .end local v68    # "_result":[B
    :sswitch_24
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v6, 0x1

    .line 610
    .local v6, "_arg0":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 611
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->getMessageFromIccEfWithType(ZI)[B

    move-result-object v68

    .line 612
    .restart local v68    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 614
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 608
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v68    # "_result":[B
    :cond_1d
    const/4 v6, 0x0

    goto :goto_1e

    .line 618
    :sswitch_25
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v8, 0x1

    .line 624
    .local v8, "_arg1":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 626
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 628
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg4":[B
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v32, v11

    .line 629
    invoke-virtual/range {v27 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z

    move-result v68

    .line 630
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    if-eqz v68, :cond_1f

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 622
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":Z
    :cond_1e
    const/4 v8, 0x0

    goto :goto_1f

    .line 631
    .restart local v8    # "_arg1":Z
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":[B
    .restart local v68    # "_result":Z
    :cond_1f
    const/4 v5, 0x0

    goto :goto_20

    .line 636
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":Z
    :sswitch_26
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 640
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 642
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    const/4 v9, 0x1

    .line 644
    .local v9, "_arg2":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 646
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 648
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .local v18, "_arg5":[B
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    .line 649
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z

    move-result v68

    .line 650
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v68, :cond_21

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 642
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":[B
    .end local v68    # "_result":Z
    :cond_20
    const/4 v9, 0x0

    goto :goto_21

    .line 651
    .restart local v9    # "_arg2":Z
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v18    # "_arg5":[B
    .restart local v68    # "_result":Z
    :cond_21
    const/4 v5, 0x0

    goto :goto_22

    .line 656
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":[B
    .end local v68    # "_result":Z
    :sswitch_27
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/4 v8, 0x1

    .line 662
    .local v8, "_arg1":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 664
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 666
    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg4":[B
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 667
    invoke-virtual/range {v27 .. v32}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z

    move-result v68

    .line 668
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    if-eqz v68, :cond_23

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 660
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":Z
    :cond_22
    const/4 v8, 0x0

    goto :goto_23

    .line 669
    .restart local v8    # "_arg1":Z
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":[B
    .restart local v11    # "_arg4":[B
    .restart local v68    # "_result":Z
    :cond_23
    const/4 v5, 0x0

    goto :goto_24

    .line 674
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":Z
    :sswitch_28
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 678
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 680
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/4 v9, 0x1

    .line 682
    .local v9, "_arg2":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 684
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 686
    .restart local v11    # "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .restart local v18    # "_arg5":[B
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    .line 687
    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfWithTypeForSubscriber(JLjava/lang/String;ZI[B[B)Z

    move-result v68

    .line 688
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v68, :cond_25

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 680
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v18    # "_arg5":[B
    .end local v68    # "_result":Z
    :cond_24
    const/4 v9, 0x0

    goto :goto_25

    .line 689
    .restart local v9    # "_arg2":Z
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":[B
    .restart local v18    # "_arg5":[B
    .restart local v68    # "_result":Z
    :cond_25
    const/4 v5, 0x0

    goto :goto_26

    .line 694
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":[B
    .end local v18    # "_arg5":[B
    .end local v68    # "_result":Z
    :sswitch_29
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/4 v6, 0x1

    .line 698
    .local v6, "_arg0":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 700
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 702
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 703
    .local v10, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v68

    .line 704
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 696
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":I
    :cond_26
    const/4 v6, 0x0

    goto :goto_27

    .line 710
    :sswitch_2a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 714
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 716
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 717
    .restart local v9    # "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForResult(I[B[B)I

    move-result v68

    .line 718
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 724
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":[B
    .end local v68    # "_result":I
    :sswitch_2b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 728
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 732
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 734
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v33

    .line 736
    .restart local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 738
    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .line 740
    .restart local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    .line 741
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .local v14, "_arg7":Landroid/os/Bundle;
    :goto_28
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v32, v10

    move-object/from16 v34, v26

    move-object/from16 v36, v14

    .line 746
    invoke-virtual/range {v28 .. v36}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartDataWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 744
    .end local v14    # "_arg7":Landroid/os/Bundle;
    :cond_27
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/os/Bundle;
    goto :goto_28

    .line 752
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v14    # "_arg7":Landroid/os/Bundle;
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_2c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 756
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 758
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 760
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 762
    .restart local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 764
    .restart local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 766
    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    .line 767
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Bundle;

    .local v19, "_arg6":Landroid/os/Bundle;
    :goto_29
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v27, v19

    .line 772
    invoke-virtual/range {v20 .. v27}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 770
    .end local v19    # "_arg6":Landroid/os/Bundle;
    :cond_28
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/os/Bundle;
    goto :goto_29

    .line 778
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg6":Landroid/os/Bundle;
    .end local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_2d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSC()Ljava/lang/String;

    move-result-object v68

    .line 780
    .local v68, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 786
    .end local v68    # "_result":Ljava/lang/String;
    :sswitch_2e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 789
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->setSMSC(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 795
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/4 v6, 0x1

    .line 799
    .local v6, "_arg0":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 801
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 802
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->setCSCB(ZLjava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 797
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :cond_29
    const/4 v6, 0x0

    goto :goto_2a

    .line 808
    :sswitch_30
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getCSCB()V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 815
    :sswitch_31
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v6, 0x1

    .line 818
    .restart local v6    # "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->setCBEntry(Z)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 817
    .end local v6    # "_arg0":Z
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2b

    .line 824
    :sswitch_32
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->updateNvItem()V

    .line 826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 831
    :sswitch_33
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->requestGetBCSMSServiceNumber()I

    move-result v68

    .line 833
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 839
    .end local v68    # "_result":I
    :sswitch_34
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 843
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 844
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;

    move-result-object v68

    .line 845
    .local v68, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    if-eqz v68, :cond_2b

    .line 847
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    const/4 v5, 0x1

    move-object/from16 v0, v68

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 853
    :goto_2c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 851
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 857
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v68    # "_result":Landroid/os/Bundle;
    :sswitch_35
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 861
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 862
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->requestGetBCSMSServiceEntry(II)[I

    move-result-object v68

    .line 863
    .local v68, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 865
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 869
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v68    # "_result":[I
    :sswitch_36
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 873
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 874
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->setBCSMS(II)I

    move-result v68

    .line 875
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 881
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v68    # "_result":I
    :sswitch_37
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getCarrierID()Ljava/lang/String;

    move-result-object v68

    .line 883
    .local v68, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 885
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 889
    .end local v68    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 893
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 894
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->setTestBCSMS(II)I

    move-result v68

    .line 895
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 901
    .end local v6    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v68    # "_result":I
    :sswitch_39
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getTestBCSMS()[I

    move-result-object v68

    .line 903
    .local v68, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 905
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 909
    .end local v68    # "_result":[I
    :sswitch_3a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v6, 0x1

    .line 913
    .local v6, "_arg0":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 915
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 917
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 918
    .local v10, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForResultByFormat(ZI[B[B)I

    move-result v68

    .line 919
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 911
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":I
    :cond_2c
    const/4 v6, 0x0

    goto :goto_2d

    .line 925
    :sswitch_3b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v6, 0x1

    .line 929
    .restart local v6    # "_arg0":Z
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 931
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 933
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 934
    .restart local v10    # "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9, v10}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEfByFormat(ZII[B)Z

    move-result v68

    .line 935
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v68, :cond_2e

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 927
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":Z
    :cond_2d
    const/4 v6, 0x0

    goto :goto_2e

    .line 936
    .restart local v6    # "_arg0":Z
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":[B
    .restart local v68    # "_result":Z
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2f

    .line 941
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":Z
    :sswitch_3c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v6, 0x1

    .line 945
    .restart local v6    # "_arg0":Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 947
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 948
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->kddiAcknowledgeSendRequest(ZII)Z

    move-result v68

    .line 949
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    if-eqz v68, :cond_30

    const/4 v5, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 943
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":Z
    :cond_2f
    const/4 v6, 0x0

    goto :goto_30

    .line 950
    .restart local v6    # "_arg0":Z
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v68    # "_result":Z
    :cond_30
    const/4 v5, 0x0

    goto :goto_31

    .line 955
    .end local v6    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":Z
    :sswitch_3d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateCBMI(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 964
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_3e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 967
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateCBMIR(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 973
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_3f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isSendCdmaMoSms()Z

    move-result v68

    .line 975
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    if-eqz v68, :cond_31

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 976
    :cond_31
    const/4 v5, 0x0

    goto :goto_32

    .line 981
    .end local v68    # "_result":Z
    :sswitch_40
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getNextMessageIdInPreference()I

    move-result v68

    .line 983
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 989
    .end local v68    # "_result":I
    :sswitch_41
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 993
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 995
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 997
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    .line 998
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 1004
    .local v10, "_arg3":Landroid/app/PendingIntent;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    .line 1005
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 1011
    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/16 v18, 0x1

    .line 1013
    .local v18, "_arg5":Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    const/16 v19, 0x1

    .line 1015
    .local v19, "_arg6":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    .line 1016
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 1022
    .restart local v14    # "_arg7":Landroid/os/Bundle;
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1024
    .local v45, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .local v46, "_arg9":Ljava/lang/String;
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move/from16 v42, v18

    move/from16 v43, v19

    move-object/from16 v44, v14

    .line 1025
    invoke-virtual/range {v36 .. v46}, Lcom/android/internal/telephony/ISms$Stub;->sendRawPduWithBundle(Ljava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":Landroid/os/Bundle;
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v45    # "_arg8":Ljava/lang/String;
    .end local v46    # "_arg9":Ljava/lang/String;
    :cond_32
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_33

    .line 1008
    :cond_33
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_34

    .line 1011
    :cond_34
    const/16 v18, 0x0

    goto :goto_35

    .line 1013
    .restart local v18    # "_arg5":Z
    :cond_35
    const/16 v19, 0x0

    goto :goto_36

    .line 1019
    .restart local v19    # "_arg6":Z
    :cond_36
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/os/Bundle;
    goto :goto_37

    .line 1031
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":Landroid/os/Bundle;
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    :sswitch_42
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1035
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1037
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1039
    .restart local v9    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 1041
    .local v10, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    .line 1042
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 1048
    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    .line 1049
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .line 1055
    .local v18, "_arg5":Landroid/app/PendingIntent;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    const/16 v19, 0x1

    .line 1057
    .restart local v19    # "_arg6":Z
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v14, 0x1

    .line 1059
    .local v14, "_arg7":Z
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    .line 1060
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/Bundle;

    .line 1066
    .local v45, "_arg8":Landroid/os/Bundle;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1068
    .restart local v46    # "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, "_arg10":Ljava/lang/String;
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move/from16 v13, v19

    move-object/from16 v15, v45

    move-object/from16 v16, v46

    .line 1069
    invoke-virtual/range {v5 .. v17}, Lcom/android/internal/telephony/ISms$Stub;->sendRawPduWithBundleForSubscriber(JLjava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":Z
    .end local v17    # "_arg10":Ljava/lang/String;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Z
    .end local v45    # "_arg8":Landroid/os/Bundle;
    .end local v46    # "_arg9":Ljava/lang/String;
    :cond_37
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_38

    .line 1052
    :cond_38
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_39

    .line 1055
    :cond_39
    const/16 v19, 0x0

    goto :goto_3a

    .line 1057
    .restart local v19    # "_arg6":Z
    :cond_3a
    const/4 v14, 0x0

    goto :goto_3b

    .line 1063
    .restart local v14    # "_arg7":Z
    :cond_3b
    const/16 v45, 0x0

    .restart local v45    # "_arg8":Landroid/os/Bundle;
    goto :goto_3c

    .line 1075
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v14    # "_arg7":Z
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Z
    .end local v45    # "_arg8":Landroid/os/Bundle;
    :sswitch_43
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1079
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1081
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1083
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 1085
    .restart local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 1087
    .restart local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1089
    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    .line 1090
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Bundle;

    .local v19, "_arg6":Landroid/os/Bundle;
    :goto_3d
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v27, v19

    .line 1095
    invoke-virtual/range {v20 .. v27}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1096
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v19    # "_arg6":Landroid/os/Bundle;
    :cond_3c
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/os/Bundle;
    goto :goto_3d

    .line 1101
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg6":Landroid/os/Bundle;
    .end local v24    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_44
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1105
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1107
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1109
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1111
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v33

    .line 1113
    .restart local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1115
    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .line 1117
    .restart local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 1118
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .local v14, "_arg7":Landroid/os/Bundle;
    :goto_3e
    move-object/from16 v27, p0

    move-wide/from16 v28, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v34, v26

    move-object/from16 v36, v14

    .line 1123
    invoke-virtual/range {v27 .. v36}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1121
    .end local v14    # "_arg7":Landroid/os/Bundle;
    :cond_3d
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/os/Bundle;
    goto :goto_3e

    .line 1129
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg7":Landroid/os/Bundle;
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_45
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isCdmaMo()Z

    move-result v68

    .line 1131
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    if-eqz v68, :cond_3e

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1132
    :cond_3e
    const/4 v5, 0x0

    goto :goto_3f

    .line 1137
    .end local v68    # "_result":Z
    :sswitch_46
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1141
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1143
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v9, 0x1

    .line 1144
    .local v9, "_arg2":Z
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->updateSmsSendStatusForSubscriber(JIZ)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v9    # "_arg2":Z
    :cond_3f
    const/4 v9, 0x0

    goto :goto_40

    .line 1150
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    :sswitch_47
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1154
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 1156
    .local v8, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1158
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    .line 1159
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .local v10, "_arg3":Landroid/app/PendingIntent;
    :goto_41
    move-object/from16 v5, p0

    .line 1164
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->injectSmsPduForSubscriber(J[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1162
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    :cond_40
    const/4 v10, 0x0

    .restart local v10    # "_arg3":Landroid/app/PendingIntent;
    goto :goto_41

    .line 1170
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":[B
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_48
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1174
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1176
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1178
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1180
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1182
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v54

    .line 1184
    .local v54, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .line 1186
    .restart local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v56

    .line 1188
    .local v56, "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    .line 1189
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/Bundle;

    .restart local v45    # "_arg8":Landroid/os/Bundle;
    :goto_42
    move-object/from16 v47, p0

    move-wide/from16 v48, v6

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-object/from16 v52, v10

    move/from16 v53, v11

    move-object/from16 v55, v35

    move-object/from16 v57, v45

    .line 1194
    invoke-virtual/range {v47 .. v57}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartDataWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1192
    .end local v45    # "_arg8":Landroid/os/Bundle;
    :cond_41
    const/16 v45, 0x0

    .restart local v45    # "_arg8":Landroid/os/Bundle;
    goto :goto_42

    .line 1200
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v45    # "_arg8":Landroid/os/Bundle;
    .end local v54    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v56    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_49
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1204
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1206
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 1208
    .local v9, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, "_arg3":[B
    move-object/from16 v5, p0

    .line 1209
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForResultForSubscriber(JI[B[B)I

    move-result v68

    .line 1210
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1216
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":[B
    .end local v10    # "_arg3":[B
    .end local v68    # "_result":I
    :sswitch_4a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1220
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/4 v8, 0x1

    .line 1222
    .local v8, "_arg1":Z
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1224
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 1226
    .restart local v10    # "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg4":[B
    move-object/from16 v5, p0

    .line 1227
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEfForResultWithTypeForSubscriber(JZI[B[B)I

    move-result v68

    .line 1228
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1220
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[B
    .end local v11    # "_arg4":[B
    .end local v68    # "_result":I
    :cond_42
    const/4 v8, 0x0

    goto :goto_43

    .line 1234
    .end local v6    # "_arg0":J
    :sswitch_4b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1238
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1239
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->getMessageFromIccEfForSubscriber(JI)[B

    move-result-object v68

    .line 1240
    .local v68, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1242
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1246
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v68    # "_result":[B
    :sswitch_4c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1250
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/4 v8, 0x1

    .line 1252
    .local v8, "_arg1":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1253
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->getMessageFromIccEfWithTypeForSubscriber(JZI)[B

    move-result-object v68

    .line 1254
    .restart local v68    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1256
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1250
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v68    # "_result":[B
    :cond_43
    const/4 v8, 0x0

    goto :goto_44

    .line 1260
    .end local v6    # "_arg0":J
    :sswitch_4d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1263
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->getSMSCForSubscriber(J)Ljava/lang/String;

    move-result-object v68

    .line 1264
    .local v68, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1266
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1270
    .end local v6    # "_arg0":J
    .end local v68    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1274
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1275
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/internal/telephony/ISms$Stub;->setSMSCForSubscriber(JLjava/lang/String;)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1281
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_4f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1284
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->requestGetBCSMSServiceNumberForSubscriber(J)I

    move-result v68

    .line 1285
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1286
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v6    # "_arg0":J
    .end local v68    # "_result":I
    :sswitch_50
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1295
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1297
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1298
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->requestGetBCSMSServiceLabelForSubscriber(JII)Landroid/os/Bundle;

    move-result-object v68

    .line 1299
    .local v68, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    if-eqz v68, :cond_44

    .line 1301
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v5, 0x1

    move-object/from16 v0, v68

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1307
    :goto_45
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1305
    :cond_44
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .line 1311
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":Landroid/os/Bundle;
    :sswitch_51
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1315
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1317
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1318
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->requestGetBCSMSServiceEntryForSubscriber(JII)[I

    move-result-object v68

    .line 1319
    .local v68, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":[I
    :sswitch_52
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1329
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1331
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1332
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->setBCSMSForSubscriber(JII)I

    move-result v68

    .line 1333
    .local v68, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1339
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":I
    :sswitch_53
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1343
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1345
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1346
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->setTestBCSMSForSubscriber(JII)I

    move-result v68

    .line 1347
    .restart local v68    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    move-object/from16 v0, p3

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1353
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v68    # "_result":I
    :sswitch_54
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1356
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->getTestBCSMSForSubscriber(J)[I

    move-result-object v68

    .line 1357
    .local v68, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1358
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1359
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1363
    .end local v6    # "_arg0":J
    .end local v68    # "_result":[I
    :sswitch_55
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1367
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    const/4 v8, 0x1

    .line 1369
    .local v8, "_arg1":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1371
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg3":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 1372
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/ISms$Stub;->setCSCBForSubscriber(JZLjava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1367
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    :cond_45
    const/4 v8, 0x0

    goto :goto_46

    .line 1378
    .end local v6    # "_arg0":J
    :sswitch_56
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1382
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1384
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1386
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1388
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    .line 1389
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/PendingIntent;

    .line 1395
    .local v11, "_arg4":Landroid/app/PendingIntent;
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    .line 1396
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .line 1402
    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    .line 1403
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Bundle;

    .restart local v19    # "_arg6":Landroid/os/Bundle;
    :goto_49
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move-object/from16 v42, v18

    move-object/from16 v43, v19

    .line 1408
    invoke-virtual/range {v36 .. v43}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/os/Bundle;
    :cond_46
    const/4 v11, 0x0

    .restart local v11    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_47

    .line 1399
    :cond_47
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_48

    .line 1406
    :cond_48
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/os/Bundle;
    goto :goto_49

    .line 1414
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Landroid/app/PendingIntent;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/os/Bundle;
    :sswitch_57
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1418
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1420
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1422
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1424
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1426
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    .line 1427
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .line 1433
    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    .line 1434
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/PendingIntent;

    .line 1440
    .local v19, "_arg6":Landroid/app/PendingIntent;
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    .line 1441
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .restart local v14    # "_arg7":Landroid/os/Bundle;
    :goto_4c
    move-object/from16 v5, p0

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    .line 1446
    invoke-virtual/range {v5 .. v14}, Lcom/android/internal/telephony/ISms$Stub;->sendTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1430
    .end local v14    # "_arg7":Landroid/os/Bundle;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :cond_49
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Landroid/app/PendingIntent;
    goto :goto_4a

    .line 1437
    :cond_4a
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_4b

    .line 1444
    :cond_4b
    const/4 v14, 0x0

    .restart local v14    # "_arg7":Landroid/os/Bundle;
    goto :goto_4c

    .line 1452
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg7":Landroid/os/Bundle;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    .end local v19    # "_arg6":Landroid/app/PendingIntent;
    :sswitch_58
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1456
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    .line 1458
    .local v38, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1460
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1462
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1464
    .restart local v11    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "_arg5":I
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v40, v9

    move/from16 v41, v10

    move-object/from16 v42, v11

    move/from16 v43, v18

    .line 1465
    invoke-virtual/range {v36 .. v43}, Lcom/android/internal/telephony/ISms$Stub;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1466
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1468
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1472
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v38    # "_arg1":J
    :sswitch_59
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1476
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1478
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v62

    .line 1480
    .local v62, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1482
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1484
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1486
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v58, p0

    move-wide/from16 v59, v6

    move-object/from16 v61, v8

    move-object/from16 v64, v10

    move/from16 v65, v11

    move-object/from16 v66, v18

    move/from16 v67, v19

    .line 1487
    invoke-virtual/range {v58 .. v67}, Lcom/android/internal/telephony/ISms$Stub;->getDeliveryPduForSubscriber(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1488
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1490
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1494
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    .end local v62    # "_arg2":J
    :sswitch_5a
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1498
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1499
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/internal/telephony/ISms$Stub;->updateSimSmsAsRead(Ljava/lang/String;I)Z

    move-result v68

    .line 1500
    .local v68, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    if-eqz v68, :cond_4c

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1502
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1501
    :cond_4c
    const/4 v5, 0x0

    goto :goto_4d

    .line 1506
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v68    # "_result":Z
    :sswitch_5b
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1510
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1512
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1513
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISms$Stub;->updateSimSmsAsReadForSubscriber(JLjava/lang/String;I)Z

    move-result v68

    .line 1514
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    if-eqz v68, :cond_4d

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1515
    :cond_4d
    const/4 v5, 0x0

    goto :goto_4e

    .line 1520
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v68    # "_result":Z
    :sswitch_5c
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1524
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    .line 1526
    .restart local v38    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1528
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1530
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v36, p0

    move-object/from16 v37, v6

    move-object/from16 v40, v9

    move/from16 v41, v10

    move-object/from16 v42, v11

    .line 1531
    invoke-virtual/range {v36 .. v42}, Lcom/android/internal/telephony/ISms$Stub;->getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1532
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1534
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1538
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v38    # "_arg1":J
    :sswitch_5d
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1542
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1544
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v62

    .line 1546
    .restart local v62    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1548
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1550
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg5":Ljava/lang/String;
    move-object/from16 v58, p0

    move-wide/from16 v59, v6

    move-object/from16 v61, v8

    move-object/from16 v64, v10

    move/from16 v65, v11

    move-object/from16 v66, v18

    .line 1551
    invoke-virtual/range {v58 .. v66}, Lcom/android/internal/telephony/ISms$Stub;->getSubmitPduForCdmaSimSmsForSubscriber(JLjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1552
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1554
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1558
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v62    # "_arg2":J
    :sswitch_5e
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->isFdnEnabled()Z

    move-result v68

    .line 1560
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    if-eqz v68, :cond_4e

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1561
    :cond_4e
    const/4 v5, 0x0

    goto :goto_4f

    .line 1566
    .end local v68    # "_result":Z
    :sswitch_5f
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1569
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->isFdnEnabledForSubscriber(J)Z

    move-result v68

    .line 1570
    .restart local v68    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    if-eqz v68, :cond_4f

    const/4 v5, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1571
    :cond_4f
    const/4 v5, 0x0

    goto :goto_50

    .line 1576
    .end local v6    # "_arg0":J
    .end local v68    # "_result":Z
    :sswitch_60
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1580
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1582
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1584
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1586
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v33

    .line 1588
    .restart local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1590
    .restart local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .restart local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move/from16 v32, v10

    move-object/from16 v34, v26

    .line 1591
    invoke-virtual/range {v28 .. v35}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1597
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":I
    .end local v26    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v33    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_61
    const-string v5, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 1601
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1603
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1605
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1607
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1609
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v54

    .line 1611
    .restart local v54    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v35

    .line 1613
    .restart local v35    # "_arg6":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v56

    .restart local v56    # "_arg7":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v47, p0

    move-wide/from16 v48, v6

    move-object/from16 v50, v8

    move-object/from16 v51, v9

    move-object/from16 v52, v10

    move/from16 v53, v11

    move-object/from16 v55, v35

    .line 1614
    invoke-virtual/range {v47 .. v56}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
