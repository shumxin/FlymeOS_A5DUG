.class public final Landroid/media/ClosedCaption$Style;
.super Ljava/lang/Object;
.source "ClosedCaption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field public final backgroundOpacity:F

.field public final endChar:I

.field public final fontFamily:Ljava/lang/String;

.field public final fontSize:I

.field public final fontStyle:Ljava/lang/String;

.field public final fontWeight:Ljava/lang/String;

.field public final isPaintOn:Z

.field public final isPopOn:Z

.field public final isRollUp:Z

.field public final startChar:I

.field public final textAlign:Ljava/lang/String;

.field public final textColor:Ljava/lang/String;

.field public final textOpacity:F


# direct methods
.method public constructor <init>(IIIZZZFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "startChar"    # I
    .param p2, "endChar"    # I
    .param p3, "fontSize"    # I
    .param p4, "isPopOn"    # Z
    .param p5, "isRollUp"    # Z
    .param p6, "isPaintOn"    # Z
    .param p7, "textOpacity"    # F
    .param p8, "backgroundOpacity"    # F
    .param p9, "textAlign"    # Ljava/lang/String;
    .param p10, "textColor"    # Ljava/lang/String;
    .param p11, "fontStyle"    # Ljava/lang/String;
    .param p12, "fontFamily"    # Ljava/lang/String;
    .param p13, "fontWeight"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Landroid/media/ClosedCaption$Style;->startChar:I

    .line 213
    iput p2, p0, Landroid/media/ClosedCaption$Style;->endChar:I

    .line 214
    iput p3, p0, Landroid/media/ClosedCaption$Style;->fontSize:I

    .line 215
    iput-boolean p4, p0, Landroid/media/ClosedCaption$Style;->isPopOn:Z

    .line 216
    iput-boolean p5, p0, Landroid/media/ClosedCaption$Style;->isRollUp:Z

    .line 217
    iput-boolean p6, p0, Landroid/media/ClosedCaption$Style;->isPaintOn:Z

    .line 218
    iput p7, p0, Landroid/media/ClosedCaption$Style;->textOpacity:F

    .line 219
    iput p8, p0, Landroid/media/ClosedCaption$Style;->backgroundOpacity:F

    .line 220
    iput-object p9, p0, Landroid/media/ClosedCaption$Style;->textAlign:Ljava/lang/String;

    .line 221
    iput-object p10, p0, Landroid/media/ClosedCaption$Style;->textColor:Ljava/lang/String;

    .line 222
    iput-object p11, p0, Landroid/media/ClosedCaption$Style;->fontStyle:Ljava/lang/String;

    .line 223
    iput-object p12, p0, Landroid/media/ClosedCaption$Style;->fontFamily:Ljava/lang/String;

    .line 224
    iput-object p13, p0, Landroid/media/ClosedCaption$Style;->fontWeight:Ljava/lang/String;

    .line 225
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startChar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Style;->startChar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endChar :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Style;->endChar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontSize :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Style;->fontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPopOn :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/ClosedCaption$Style;->isPopOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRollUp :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/ClosedCaption$Style;->isRollUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaintOn :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/ClosedCaption$Style;->isPaintOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textOpacity :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Style;->textOpacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundOpacity :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/ClosedCaption$Style;->backgroundOpacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textAlign :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Style;->textAlign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textColor :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Style;->textColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontStyle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Style;->fontStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontFamily :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Style;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontWeight :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ClosedCaption$Style;->fontWeight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
