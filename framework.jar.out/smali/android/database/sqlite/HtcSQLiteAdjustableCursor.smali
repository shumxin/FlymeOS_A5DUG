.class public Landroid/database/sqlite/HtcSQLiteAdjustableCursor;
.super Landroid/database/sqlite/SQLiteCursor;
.source "HtcSQLiteAdjustableCursor.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HtcAdjCursor"


# instance fields
.field private mCursorWindowSize:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;

    .prologue
    .line 22
    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/HtcSQLiteAdjustableCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;I)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;
    .param p5, "cursorWindowSize"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 28
    iput p5, p0, Landroid/database/sqlite/HtcSQLiteAdjustableCursor;->mCursorWindowSize:I

    .line 29
    return-void
.end method


# virtual methods
.method protected generateNewWindowCursor(Ljava/lang/String;)Landroid/database/CursorWindow;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Landroid/database/CursorWindow;

    iget v1, p0, Landroid/database/sqlite/HtcSQLiteAdjustableCursor;->mCursorWindowSize:I

    invoke-direct {v0, p1, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
