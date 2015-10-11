.class Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;
.super Landroid/app/ProgressDialog;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoInputProgressDialog"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 7435
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 7436
    invoke-direct {p0, p2, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 7438
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->mContext:Landroid/content/Context;

    .line 7439
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 7443
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 7447
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 7449
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7450
    .local v0, "message":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$NoInputProgressDialog;->mContext:Landroid/content/Context;

    const v2, 0x30b002d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 7451
    return-void
.end method
