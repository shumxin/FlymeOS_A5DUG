.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Geocoder"

.field private static mCustManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static mCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static mIsMMR:Z


# instance fields
.field private mParams:Landroid/location/GeocoderParams;

.field private mService:Landroid/location/ILocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Landroid/location/Geocoder;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 58
    sget-object v0, Landroid/location/Geocoder;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroid/location/Geocoder;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 61
    sput-boolean v2, Landroid/location/Geocoder;->mIsMMR:Z

    .line 64
    sget-object v0, Landroid/location/Geocoder;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/location/Geocoder;->mCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string/jumbo v1, "sku_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sput-boolean v3, Landroid/location/Geocoder;->mIsMMR:Z

    .line 65
    :cond_0
    return-void

    .line 58
    :cond_1
    sget-object v0, Landroid/location/Geocoder;->mCustManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Android_Core_Framework"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "locale == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    new-instance v1, Landroid/location/GeocoderParams;

    invoke-direct {v1, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    .line 99
    const-string/jumbo v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 101
    return-void
.end method

.method public static isPresent()Z
    .locals 5

    .prologue
    .line 75
    const-string/jumbo v3, "location"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    .line 78
    .local v2, "lm":Landroid/location/ILocationManager;
    :try_start_0
    invoke-interface {v2}, Landroid/location/ILocationManager;->geocoderIsPresent()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 81
    :goto_0
    return v3

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string/jumbo v4, "isPresent: got RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .locals 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p1, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_1

    .line 141
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "latitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_1
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p3, v4

    if-ltz v3, :cond_2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v3, p3, v4

    if-lez v3, :cond_3

    .line 144
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "longitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_3
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v3, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v9, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-interface/range {v3 .. v10}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "ex":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 151
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 161
    .local v11, "e":Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocation: got RemoteException"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v10, 0x0

    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_4
    return-object v10

    .line 154
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v12    # "ex":Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-boolean v3, Landroid/location/Geocoder;->mIsMMR:Z

    if-eqz v3, :cond_4

    .line 155
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    .local v2, "addr":Landroid/location/Address;
    invoke-virtual {v2}, Landroid/location/Address;->updateMyanmar()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 19
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "locationName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object/from16 v3, p1

    move/from16 v12, p2

    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 197
    .local v17, "ex":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 198
    new-instance v2, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v17    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 208
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "Geocoder"

    const-string v3, "getFromLocationName: got RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v14, 0x0

    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v14

    .line 201
    .restart local v14    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v17    # "ex":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-boolean v2, Landroid/location/Geocoder;->mIsMMR:Z

    if-eqz v2, :cond_1

    .line 202
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Address;

    .local v15, "addr":Landroid/location/Address;
    invoke-virtual {v15}, Landroid/location/Address;->updateMyanmar()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 19
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "locationName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_0
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_2

    .line 255
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lowerLeftLatitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_2
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p5, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p5, v2

    if-lez v2, :cond_4

    .line 259
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lowerLeftLongitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_4
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p7, v2

    if-ltz v2, :cond_5

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p7, v2

    if-lez v2, :cond_6

    .line 263
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upperRightLatitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_6
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p9, v2

    if-ltz v2, :cond_7

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_8

    .line 267
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upperRightLongitude == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_8
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p2

    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v17

    .line 275
    .local v17, "ex":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 276
    new-instance v2, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .end local v17    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 286
    .local v16, "e":Landroid/os/RemoteException;
    const-string v2, "Geocoder"

    const-string v3, "getFromLocationName: got RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v14, 0x0

    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_9
    return-object v14

    .line 279
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v17    # "ex":Ljava/lang/String;
    :cond_a
    :try_start_1
    sget-boolean v2, Landroid/location/Geocoder;->mIsMMR:Z

    if-eqz v2, :cond_9

    .line 280
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Address;

    .local v15, "addr":Landroid/location/Address;
    invoke-virtual {v15}, Landroid/location/Address;->updateMyanmar()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
