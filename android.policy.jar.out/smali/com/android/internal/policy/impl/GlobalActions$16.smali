.class Lcom/android/internal/policy/impl/GlobalActions$16;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->confirmKidMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$on:Z

.field final synthetic val$warning_check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;ZLandroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->val$on:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->val$warning_check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->val$on:Z

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->enter_leave_KidMode(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$3200(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    .line 1751
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->val$warning_check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kidmode_dg_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1754
    :cond_0
    return-void
.end method
