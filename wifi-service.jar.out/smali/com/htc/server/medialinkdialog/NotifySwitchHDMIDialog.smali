.class public Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
.super Ljava/lang/Object;
.source "NotifySwitchHDMIDialog.java"

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
    const-string v0, "WirelessDisplayService_NotifySwitchHDMIDialog"

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mSupportKDDI:Z

    .line 35
    iput-boolean p2, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mSupportKDDI:Z

    .line 36
    iput-object p1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mContext:Landroid/content/Context;

    const v2, 0x30b0001

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->dismiss()V

    .line 65
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->dismiss()V

    .line 44
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x30701a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 51
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x30701ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Landroid/app/AlertDialog;

    .line 53
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 54
    iget-object v1, p0, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method
