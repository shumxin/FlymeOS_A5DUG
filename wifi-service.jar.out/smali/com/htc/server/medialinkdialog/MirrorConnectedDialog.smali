.class public Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;
.super Ljava/lang/Object;
.source "MirrorConnectedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSupportKDDI:Z

.field private mckbxDefault:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportKDDI"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "MirrorConnectedDialog"

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    .line 35
    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    .line 36
    iput-object p1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    const v2, 0x30b0001

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.WIRELESS_DISPLAY_DISMISS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    const-string v1, "MirrorConnectedDialog"

    const-string v2, "cancel connecting dialog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->dismiss()V

    .line 45
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    if-eqz v1, :cond_0

    const v1, 0x30701ad

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object v2, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mSupportKDDI:Z

    if-eqz v1, :cond_1

    const v1, 0x30701b0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 53
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Landroid/app/AlertDialog;

    .line 54
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 56
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/MirrorConnectedDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 57
    return-void

    .line 48
    :cond_0
    const v1, 0x30701a1

    goto :goto_0

    .line 52
    :cond_1
    const v1, 0x30701a5

    goto :goto_1
.end method
