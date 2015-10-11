.class public Landroid/media/htcsoundfx/view/EffectViewStatusBar;
.super Ljava/lang/Object;
.source "EffectViewStatusBar.java"

# interfaces
.implements Landroid/media/htcsoundfx/view/EffectViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    }
.end annotation


# instance fields
.field private mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mLock:Ljava/lang/Object;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mVisiable:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0, p2}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->setIcon(Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    .line 34
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 35
    return-void
.end method

.method public static generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    .locals 2
    .param p0, "slot"    # Ljava/lang/String;
    .param p1, "iconId"    # I
    .param p2, "iconLevel"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    new-instance v1, Landroid/media/htcsoundfx/view/EffectViewStatusBar;

    invoke-direct {v1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;-><init>(Landroid/media/htcsoundfx/view/EffectViewStatusBar;)V

    .line 23
    .local v0, "icon":Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;
    iput-object p0, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->slot:Ljava/lang/String;

    .line 24
    iput p1, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconId:I

    .line 25
    iput p2, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconLevel:I

    .line 26
    iput-object p3, v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->contentDescription:Ljava/lang/String;

    .line 27
    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget-object v2, v2, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->slot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    return v0
.end method

.method public setIcon(Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V
    .locals 3
    .param p1, "icon"    # Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .prologue
    .line 46
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "icon is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-ne v1, p1, :cond_1

    .line 49
    monitor-exit v2

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    .line 52
    .local v0, "visible":Z
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->hide()V

    .line 54
    :cond_2
    iput-object p1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .line 55
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->show()V

    .line 57
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0    # "visible":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setView(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 39
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    instance-of v0, p1, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->setIcon(Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    .line 43
    :cond_1
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 61
    iget-object v1, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v2, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget-object v2, v2, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->slot:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget v3, v3, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconId:I

    iget-object v4, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget v4, v4, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->iconLevel:I

    iget-object v5, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iget-object v5, v5, Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->mVisiable:Z

    .line 65
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
