.class public Lcom/htc/server/medialinkdialog/ConnectingDialog;
.super Ljava/lang/Object;
.source "ConnectingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field private contentString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mSupportKDDI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportKDDI"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "ConnectingDialog"

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mSupportKDDI:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->contentString:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mSupportKDDI:Z

    .line 32
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mResources:Landroid/content/res/Resources;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    const-string v0, "ConnectingDialog"

    const-string v1, "connectingDialog:dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public setContentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "_string"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->contentString:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->dismiss()V

    .line 47
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    .line 52
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mSupportKDDI:Z

    if-eqz v0, :cond_1

    const v0, 0x30701ae

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 59
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->contentString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->contentString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 65
    :goto_1
    const-string v0, "ConnectingDialog"

    const-string v1, "connectionDialog:show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 69
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 72
    :cond_0
    return-void

    .line 52
    :cond_1
    const v0, 0x30701a2

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mResources:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lcom/htc/server/medialinkdialog/ConnectingDialog;->mSupportKDDI:Z

    if-eqz v0, :cond_3

    const v0, 0x30701af

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const v0, 0x30701a3

    goto :goto_2
.end method
