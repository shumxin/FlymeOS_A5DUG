.class final Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
.super Landroid/app/AlertDialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtcGlobalActionsDialog"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1583
    const v0, 0x30b0001

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1584
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1585
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x303001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mListView:Landroid/widget/ListView;

    .line 1588
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setView(Landroid/view/View;)V

    .line 1589
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1675
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 1676
    .local v2, "mAdapter":Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    .line 1677
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1678
    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1680
    .local v1, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1681
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1677
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    .end local v0    # "i":I
    .end local v1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1625
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_5

    .line 1626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1627
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 1628
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1629
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 1630
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 1631
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 1635
    :cond_0
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    .line 1639
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_7

    .line 1640
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    .line 1641
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_3

    .line 1644
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "GlobalActions"

    const-string v3, "InterceptTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1648
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1650
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1651
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    .end local v0    # "now":J
    :cond_3
    if-ne v8, v13, :cond_5

    .line 1658
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_4

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->cancel()V

    .line 1661
    :cond_4
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    .line 1662
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    .line 1666
    .end local v8    # "action":I
    :cond_5
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    :goto_0
    return v2

    .line 1654
    .restart local v8    # "action":I
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1657
    if-ne v8, v13, :cond_6

    .line 1658
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->cancel()V

    .line 1661
    :cond_8
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    .line 1662
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    .line 1657
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_a

    .line 1658
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_9

    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->cancel()V

    .line 1661
    :cond_9
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    .line 1662
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    :cond_a
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1605
    invoke-super {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1611
    :goto_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 1612
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1613
    return-void

    .line 1607
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1608
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 1620
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 1621
    return-void
.end method
