.class final Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDirectCursorDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DebugInfo"
.end annotation


# instance fields
.field final mDriver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver;",
            ">;"
        }
    .end annotation
.end field

.field final mRemoteTraceInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDirectCursorDriver;Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;)V
    .locals 1
    .param p1, "driver"    # Landroid/database/sqlite/SQLiteDirectCursorDriver;
    .param p2, "trace"    # Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mDriver:Ljava/lang/ref/WeakReference;

    .line 149
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mRemoteTraceInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 150
    return-void
.end method
