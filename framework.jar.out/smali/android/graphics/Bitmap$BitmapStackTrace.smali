.class Landroid/graphics/Bitmap$BitmapStackTrace;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapStackTrace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/graphics/Bitmap$BitmapStackTrace;",
        ">;"
    }
.end annotation


# instance fields
.field private mSize:Ljava/lang/Integer;

.field private mStackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;II)V
    .locals 6
    .param p1, "size"    # Ljava/lang/Integer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mStackTrace:[Ljava/lang/String;

    .line 1706
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1707
    .local v1, "elems":[Ljava/lang/StackTraceElement;
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 1708
    .local v3, "items":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1709
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1711
    const-string v4, " Bytes, Width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1713
    const-string v4, " , Height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1715
    const-string v4, " , Hash code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1717
    const-string v4, "\n This bitmap was created in:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1719
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1720
    add-int/lit8 v4, v2, 0x1

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1722
    :cond_0
    iput-object p1, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mSize:Ljava/lang/Integer;

    .line 1723
    iput-object v3, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mStackTrace:[Ljava/lang/String;

    .line 1724
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/graphics/Bitmap$BitmapStackTrace;)I
    .locals 2
    .param p1, "obj"    # Landroid/graphics/Bitmap$BitmapStackTrace;

    .prologue
    .line 1735
    invoke-virtual {p1}, Landroid/graphics/Bitmap$BitmapStackTrace;->getSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$BitmapStackTrace;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1701
    check-cast p1, Landroid/graphics/Bitmap$BitmapStackTrace;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$BitmapStackTrace;->compareTo(Landroid/graphics/Bitmap$BitmapStackTrace;)I

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Landroid/graphics/Bitmap$BitmapStackTrace;->mStackTrace:[Ljava/lang/String;

    return-object v0
.end method
