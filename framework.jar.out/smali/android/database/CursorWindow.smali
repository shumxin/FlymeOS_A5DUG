.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_WINDOW_SIZE:I

.field public static final MIN_WINDOW_SIZE:I = 0x100000

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 79
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    .line 81
    const-string v0, "CursorWindowStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get CursorWindow size from framework resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 786
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 85
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 194
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 195
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    const-string v1, "Cursor window could not be created from binder."

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/database/CursorWindow$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-direct {p0, p1, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cursorWindowsSize"    # I

    .prologue
    const/high16 v0, 0x100000

    .line 141
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 85
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 142
    if-le p2, v0, :cond_0

    move v0, p2

    .line 143
    .local v0, "windowSize":I
    :cond_0
    sget v1, Landroid/database/CursorWindow;->DEFAULT_WINDOW_SIZE:I

    if-le v0, v1, :cond_1

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindow has been allocated with larger size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 148
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 149
    sget v1, Landroid/database/CursorWindow;->sCursorWindowSize:I

    if-gez v1, :cond_2

    .line 153
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    sput v1, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 158
    :cond_2
    iget-object v1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 159
    iget-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 161
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    invoke-static {}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpForCursorWindow()V

    .line 165
    :cond_3
    new-instance v1, Landroid/database/CursorWindowAllocationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor window allocation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " kb failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .restart local p1    # "name":Ljava/lang/String;
    :cond_4
    const-string p1, "<unnamed>"

    goto :goto_0

    .line 170
    .end local p1    # "name":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-direct {p0, v1, v2, v3}, Landroid/database/CursorWindow;->recordNewWindow(IJ)V

    .line 172
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 216
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 219
    :cond_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 220
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-direct {p0, v0, v1}, Landroid/database/CursorWindow;->recordClosingOfWindow(J)V

    .line 221
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeDispose(J)V

    .line 222
    iput-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    .line 224
    :cond_1
    return-void
.end method

.method private static native nativeAllocRow(J)Z
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFreeLastRow(J)V
.end method

.method private static native nativeGetBlob(JII)[B
.end method

.method private static native nativeGetDouble(JII)D
.end method

.method private static native nativeGetLong(JII)J
.end method

.method private static native nativeGetName(J)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(J)I
.end method

.method private static native nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native nativeGetType(JII)I
.end method

.method private static native nativePutBlob(J[BII)Z
.end method

.method private static native nativePutDouble(JDII)Z
.end method

.method private static native nativePutLong(JJII)Z
.end method

.method private static native nativePutNull(JII)Z
.end method

.method private static native nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(JI)Z
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 760
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method

.method private printStats()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d4

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 810
    .local v3, "myPid":I
    const/4 v10, 0x0

    .line 811
    .local v10, "total":I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 812
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    monitor-enter v13

    .line 813
    :try_start_0
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    .line 814
    .local v9, "size":I
    if-nez v9, :cond_0

    .line 816
    const-string v12, ""

    monitor-exit v13

    .line 839
    :goto_0
    return-object v12

    .line 818
    :cond_0
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 819
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 820
    .local v6, "pid":I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 821
    .local v11, "value":I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 823
    .end local v6    # "pid":I
    .end local v11    # "value":I
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 825
    .local v5, "numPids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_3

    .line 826
    const-string v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 828
    .restart local v6    # "pid":I
    if-ne v6, v3, :cond_2

    .line 829
    const-string/jumbo v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :goto_3
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 834
    .local v4, "num":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    add-int/2addr v10, v4

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 823
    .end local v1    # "i":I
    .end local v2    # "indx":I
    .end local v4    # "num":I
    .end local v5    # "numPids":I
    .end local v6    # "pid":I
    .end local v9    # "size":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 831
    .restart local v1    # "i":I
    .restart local v2    # "indx":I
    .restart local v5    # "numPids":I
    .restart local v6    # "pid":I
    .restart local v9    # "size":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 838
    .end local v6    # "pid":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 839
    .local v8, "s":Ljava/lang/String;
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# Open Cursors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 838
    .end local v8    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method

.method private recordClosingOfWindow(J)V
    .locals 3
    .param p1, "window"    # J

    .prologue
    .line 798
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 799
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 801
    monitor-exit v1

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 804
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordNewWindow(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "window"    # J

    .prologue
    .line 789
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 790
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 791
    const-string v0, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const-string v0, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a new Cursor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    monitor-exit v1

    .line 795
    return-void

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 327
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeAllocRow(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 329
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 246
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeClear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 541
    if-nez p3, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 546
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 550
    return-void

    .line 548
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 209
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 339
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 343
    return-void

    .line 341
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 469
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetBlob(JII)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 471
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 607
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 609
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetDouble(JII)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 611
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 660
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 644
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 577
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetLong(JII)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 579
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 293
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeGetNumRows(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 295
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 628
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 504
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetString(JII)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 506
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 439
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativeGetType(JII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 441
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 372
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 386
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 416
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 784
    return-void
.end method

.method public putBlob([BII)Z
    .locals 3
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 674
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutBlob(J[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 676
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 7
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 726
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutDouble(JDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 728
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 7
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 708
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/database/CursorWindow;->nativePutLong(JJII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 710
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 740
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 742
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Landroid/database/CursorWindow;->nativePutNull(JII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 744
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 691
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    iget v2, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Landroid/database/CursorWindow;->nativePutString(JLjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 693
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 2
    .param p1, "columnNum"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 313
    :try_start_0
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 315
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 278
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 279
    const-string v0, "CursorWindowStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CursorDBG] Set start pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :cond_0
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 283
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/database/CursorWindow;->acquireReference()V

    .line 770
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-wide v0, p0, Landroid/database/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 776
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    .line 779
    :cond_0
    return-void

    .line 773
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
.end method
