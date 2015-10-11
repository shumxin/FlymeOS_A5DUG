.class public Lcom/android/internal/util/RecentAnimationUtil;
.super Ljava/lang/Object;
.source "RecentAnimationUtil.java"


# static fields
.field public static final LANDSCAPE:I = 0x3ea

.field public static final PORTRAIT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "AnimationUtil"

.field private static landDiff:I

.field private static portDiff:I

.field private static regionLand:Landroid/graphics/Rect;

.field private static regionPort:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    sput-object v1, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    .line 18
    sput-object v1, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    .line 25
    sput v0, Lcom/android/internal/util/RecentAnimationUtil;->portDiff:I

    .line 26
    sput v0, Lcom/android/internal/util/RecentAnimationUtil;->landDiff:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    .line 29
    if-nez p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v9

    .line 33
    :cond_1
    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    if-nez v10, :cond_d

    .line 34
    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    sput-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    .line 35
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    sput-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    .line 39
    :try_start_0
    const-string v10, "com.android.systemui"

    const/4 v11, 0x4

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 46
    .local v8, "sysResource":Landroid/content/res/Resources;
    :goto_1
    if-eqz v8, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 52
    .local v1, "hasNavBar":Z
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 56
    :goto_2
    if-eqz v1, :cond_e

    .line 57
    const-string/jumbo v10, "thumbnail_transition_portrait_left_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 58
    .local v5, "resL":I
    const-string/jumbo v10, "thumbnail_transition_portrait_top_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 59
    .local v7, "resT":I
    const-string/jumbo v10, "thumbnail_transition_portrait_right_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 60
    .local v6, "resR":I
    const-string/jumbo v10, "thumbnail_transition_portrait_bottom_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "resB":I
    if-eqz v5, :cond_3

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 63
    :cond_3
    if-eqz v7, :cond_4

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 64
    :cond_4
    if-eqz v6, :cond_5

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 65
    :cond_5
    if-eqz v2, :cond_6

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 67
    :cond_6
    const-string/jumbo v10, "thumbnail_transition_landscape_left_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 68
    const-string/jumbo v10, "thumbnail_transition_landscape_top_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 69
    const-string/jumbo v10, "thumbnail_transition_landscape_right_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 70
    const-string/jumbo v10, "thumbnail_transition_landscape_bottom_nav"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 72
    if-eqz v5, :cond_7

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 73
    :cond_7
    if-eqz v7, :cond_8

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 74
    :cond_8
    if-eqz v6, :cond_9

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 75
    :cond_9
    if-eqz v2, :cond_a

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 98
    :cond_a
    :goto_3
    const-string/jumbo v10, "thumbnail_transition_portrait_diff"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "resDiffP":I
    const-string/jumbo v10, "thumbnail_transition_landscape_diff"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 101
    .local v3, "resDiffL":I
    if-eqz v4, :cond_b

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sput v10, Lcom/android/internal/util/RecentAnimationUtil;->portDiff:I

    .line 102
    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sput v10, Lcom/android/internal/util/RecentAnimationUtil;->landDiff:I

    .line 104
    :cond_c
    const-string v10, "AnimationUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateResource[P]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasNav:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " diff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/internal/util/RecentAnimationUtil;->portDiff:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v10, "AnimationUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateResource[L]:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasNav:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " diff:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/internal/util/RecentAnimationUtil;->landDiff:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "hasNavBar":Z
    .end local v2    # "resB":I
    .end local v3    # "resDiffL":I
    .end local v4    # "resDiffP":I
    .end local v5    # "resL":I
    .end local v6    # "resR":I
    .end local v7    # "resT":I
    .end local v8    # "sysResource":Landroid/content/res/Resources;
    :cond_d
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 109
    :pswitch_0
    sget-object v9, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "AnimationUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!!!!!generate resource fail:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v8, 0x0

    .restart local v8    # "sysResource":Landroid/content/res/Resources;
    goto/16 :goto_1

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hasNavBar":Z
    :cond_e
    const-string/jumbo v10, "thumbnail_transition_portrait_left"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 78
    .restart local v5    # "resL":I
    const-string/jumbo v10, "thumbnail_transition_portrait_top"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 79
    .restart local v7    # "resT":I
    const-string/jumbo v10, "thumbnail_transition_portrait_right"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 80
    .restart local v6    # "resR":I
    const-string/jumbo v10, "thumbnail_transition_portrait_bottom"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 82
    .restart local v2    # "resB":I
    if-eqz v5, :cond_f

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 83
    :cond_f
    if-eqz v7, :cond_10

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 84
    :cond_10
    if-eqz v6, :cond_11

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 85
    :cond_11
    if-eqz v2, :cond_12

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionPort:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 87
    :cond_12
    const-string/jumbo v10, "thumbnail_transition_landscape_left"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 88
    const-string/jumbo v10, "thumbnail_transition_landscape_top"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 89
    const-string/jumbo v10, "thumbnail_transition_landscape_right"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 90
    const-string/jumbo v10, "thumbnail_transition_landscape_bottom"

    const-string v11, "dimen"

    const-string v12, "com.android.systemui"

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 92
    if-eqz v5, :cond_13

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 93
    :cond_13
    if-eqz v7, :cond_14

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 94
    :cond_14
    if-eqz v6, :cond_15

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 95
    :cond_15
    if-eqz v2, :cond_a

    sget-object v10, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 110
    .end local v1    # "hasNavBar":Z
    .end local v2    # "resB":I
    .end local v5    # "resL":I
    .end local v6    # "resR":I
    .end local v7    # "resT":I
    .end local v8    # "sysResource":Landroid/content/res/Resources;
    :pswitch_1
    sget-object v9, Lcom/android/internal/util/RecentAnimationUtil;->regionLand:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 53
    .restart local v1    # "hasNavBar":Z
    .restart local v8    # "sysResource":Landroid/content/res/Resources;
    :catch_1
    move-exception v10

    goto/16 :goto_2

    .line 108
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getScaleRegion2(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/internal/util/RecentAnimationUtil;->getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 118
    .local v1, "refineRegion":Landroid/graphics/Rect;
    const/4 v0, 0x1

    .line 120
    .local v0, "hasNavBar":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_1

    .line 126
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/internal/util/RecentAnimationUtil;->portDiff:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 131
    :cond_0
    :goto_1
    return-object v1

    .line 127
    :cond_1
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_0

    .line 128
    iget v2, v1, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/internal/util/RecentAnimationUtil;->landDiff:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 121
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isHTCRecentStartingWindow(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 135
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v8

    .line 139
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 142
    .local v6, "time":J
    :try_start_0
    const-string v9, "com.android.systemui"

    const/4 v10, 0x4

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 144
    .local v4, "resource":Landroid/content/res/Resources;
    const-string v9, "accessibility_desc_recent_apps"

    const-string/jumbo v10, "string"

    const-string v11, "com.android.systemui"

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 146
    .local v5, "stringID":I
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    .end local v4    # "resource":Landroid/content/res/Resources;
    .end local v5    # "stringID":I
    .local v0, "componentN":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v6

    .line 153
    .local v2, "elapse":J
    const-string v9, "AnimationUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isHTCRecent("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0

    .line 147
    .end local v0    # "componentN":Ljava/lang/String;
    .end local v2    # "elapse":J
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "AnimationUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!!!!!generate resource fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .restart local v0    # "componentN":Ljava/lang/String;
    goto :goto_1
.end method
