.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final IMS_REGISTERED:I = 0x4

.field public static final IMS_UNREGISTERED:I = 0x5

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# instance fields
.field private mSrvccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "srvccState"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 87
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/telephony/VoLteServiceState;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    .line 99
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 107
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 108
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "VoLteServiceState"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 65
    new-instance v0, Landroid/telephony/VoLteServiceState;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    .line 66
    .local v0, "ret":Landroid/telephony/VoLteServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 210
    const-string/jumbo v0, "mSrvccState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 211
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 114
    iget v0, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 115
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 182
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/VoLteServiceState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v2, "s":Landroid/telephony/VoLteServiceState;
    if-nez p1, :cond_1

    .line 191
    .end local v2    # "s":Landroid/telephony/VoLteServiceState;
    :cond_0
    :goto_0
    return v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 191
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/VoLteServiceState;
    :cond_1
    iget v4, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iget v5, v2, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string/jumbo v0, "mSrvccState"

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    return-void
.end method

.method public getSrvccState()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    const/16 v0, 0x1f

    .line 171
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 132
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method