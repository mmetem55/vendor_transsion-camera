.class public Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;
.super Ljava/lang/Object;
.source "TemplateUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/ui/IMovieUI$ISubUI;
.implements Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;,
        Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;,
        Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION_200:J = 0xc8L

.field private static final ANIMATE_DURATION_300:J = 0x12cL

.field private static final DEFAULT_SELECT_POSITION:I = 0x0

.field private static final PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_ROTATION:Ljava/lang/String; = "rotation"

.field private static final PROPERTY_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final PROPERTY_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimatorExecutor:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

.field private mContext:Landroid/content/Context;

.field private mContinueLastShoot:Landroid/widget/TextView;

.field private mDividerItemDecoration:Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

.field private mHintText:Landroid/widget/TextView;

.field private mHistoryTheme:Ljava/lang/String;

.field private mInit:Z

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mItemOnClick:Z

.field private mLandscapeTip:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

.field private mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

.field private mModeInflateScrollRoot:Landroid/view/ViewGroup;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mMovieItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

.field private mOrientation:I

.field private mOriginalOrientation:I

.field private mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

.field private mPlayingListener:Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;

.field private mPosition:I

.field private mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

.field private mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

.field private mTemplateAdapter:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;

.field private mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

.field private mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

.field private mTemplateSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;

.field private mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

.field private mVisibility:Z

.field private mVisibilityAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$8-asEAVZzEFblVH9zMTf9jqwvx0(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->onItemClicked(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FQWCYNEHd1Ama1Nzc5uVL5AYhVY(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$resume$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$OgaEeirDfOYjkaz4-2YMSsggbx8(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$updateVerticalList$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$QZOOkDPSvxLH3ewLl0EYThgrvZQ(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$initViewEvents$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvCUh5u0irsRMxItlpGoCymoxgQ(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$initTemplateAdapter$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UG9uhb9MAavB503mH1y8YjPaEQw(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$updateHorizontalList$4(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJnGy2SLb27I4PwzJOp1CeIjUs0(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$updateVerticalList$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aKUH8LxCE0AezP2AGnQlZIo5l2o(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$initViewEvents$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pfDmJa98N8tSkXoMhtFaukIJuEw(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->lambda$updateHorizontalList$3(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V
    .locals 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    .line 86
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    .line 87
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOriginalOrientation:I

    const-string v0, "null"

    .line 106
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHistoryTheme:Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mItemOnClick:Z

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 143
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    .line 144
    new-instance p2, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    .line 145
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateScrollRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContext:Landroid/content/Context;

    .line 147
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/movie/player/PlayerManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    .line 148
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAnimatorExecutor:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;

    .line 149
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$PlayingStatusListener;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPlayingListener:Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateLayout(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Landroid/view/ViewGroup;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    return-object p0
.end method

.method static synthetic access$800()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 70
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)Landroid/view/animation/PathInterpolator;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method private addToModeRootContainer()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/movie/R$layout;->movie_template_layout:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private animateVisibility(Z)V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->releaseVisibilityAnimator()V

    .line 579
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->doVisibilityAnimate(Z)V

    return-void
.end method

.method private doVisibilityAnimate(Z)V
    .locals 11

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    .line 588
    :goto_2
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v0, v6, v2

    const-string v0, "alpha"

    .line 589
    invoke-static {v3, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0xc8

    .line 590
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 591
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    new-array v6, v5, [F

    aput v4, v6, v7

    aput v1, v6, v2

    const-string v8, "scaleX"

    .line 593
    invoke-static {v3, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x12c

    .line 594
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 595
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    new-array v10, v5, [F

    aput v4, v10, v7

    aput v1, v10, v2

    const-string v1, "scaleY"

    .line 597
    invoke-static {v6, v1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 598
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 599
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 601
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v7

    aput-object v3, v6, v2

    aput-object v1, v6, v5

    .line 602
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private enter()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHistoryMovie()V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHistoryTheme:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 216
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private findDraftThemePosition()I
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHistoryTheme:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 250
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "this should not happen!!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 254
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 255
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    iget-object v3, v3, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 256
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHistoryTheme:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private hideLandscapeTip()V
    .locals 1

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHintText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private initTemplateAdapter()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo;->loadItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;)V

    return-void
.end method

.method private initViewEvents()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->setSelectListener(Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView$ISelectListener;)V

    return-void
.end method

.method private initViewFromModeRootContainer()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->always_hint_text_view:I

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHintText:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->movie_template_root:I

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->rotate_container:I

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->continue_last_shoot:I

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->template_selection_rv:I

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/movie/R$id;->selection_indicator:I

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->setTemplateRoot(Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->setTemplateUI(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;->setModePlusBottomBarHeight(I)V

    return-void
.end method

.method private isLandscape(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_0

    const/16 p0, 0xb4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initTemplateAdapter$2(Ljava/util/List;)V
    .locals 2

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInit:Z

    if-nez v0, :cond_0

    .line 281
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "template has been unInit"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    .line 285
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHistoryMovie()V

    const/4 v0, 0x0

    .line 286
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->updateState(Z)V

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPlayingListener:Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->setPlayingStatusListener(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;)V

    .line 288
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;

    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->setItemClickListener(Lcom/transsion/camera/feature/mode/movie/ui/template/IItemClickListener;)V

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->onAdapterReady()V

    return-void
.end method

.method private synthetic lambda$initViewEvents$0(Landroid/view/View;)V
    .locals 2

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->findDraftThemePosition()I

    move-result p1

    if-ltz p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 235
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->notifyTemplateSelect(I)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->enterRecorder()V

    return-void

    .line 230
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initViewEvents$1(I)V
    .locals 1

    .line 240
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    if-eq p1, v0, :cond_0

    .line 241
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->notifyTemplateSelect(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$resume$7()V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateSnapItem()V

    return-void
.end method

.method private synthetic lambda$updateHorizontalList$3(I)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->setSelectPosition(I)V

    return-void
.end method

.method private synthetic lambda$updateHorizontalList$4(Landroid/graphics/Rect;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHorizontalLayoutParams(Landroid/graphics/Rect;)V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateSnapItem()V

    return-void
.end method

.method private synthetic lambda$updateVerticalList$5(I)V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->setSelectPosition(I)V

    return-void
.end method

.method private synthetic lambda$updateVerticalList$6()V
    .locals 0

    .line 430
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateVerticalLayoutParams()V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->calculateSnapItem()V

    return-void
.end method

.method private notifyTemplateSelect(I)V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->setSelectPosition(I)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    .line 275
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->mThemeConfig:Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 274
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;->onTemplateSelect(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V

    return-void

    .line 269
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    .line 270
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private onAdapterReady()V
    .locals 2

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->enter()V

    .line 309
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 312
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateLayout(I)V

    .line 314
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateLandscapeTip(I)V

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->startEntranceAnim()V

    .line 318
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->notifyTemplateSelect(I)V

    return-void
.end method

.method private onHide()V
    .locals 0

    .line 574
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->hideLandscapeTip()V

    return-void
.end method

.method private onItemClicked(I)V
    .locals 3

    .line 297
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClicked position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mItemOnClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mItemOnClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mItemOnClick:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieUI:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->onShutterClick()Z

    :goto_0
    return-void
.end method

.method private onShow()V
    .locals 1

    .line 566
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->enter()V

    .line 567
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->isLandscape(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->showLandscapeTip()V

    .line 569
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOriginalOrientation:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHintTextOrientation(I)V

    :cond_0
    return-void
.end method

.method private recycleItemCoverBitmap()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 513
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;

    .line 514
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->getCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private releasePlayingListener()V
    .locals 0

    const/4 p0, 0x0

    .line 506
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->setPlayingStatusListener(Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem$IPlayingStatusListener;)V

    return-void
.end method

.method private releaseRotateAnimator()V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAnimatorExecutor:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->access$200(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;)V

    return-void
.end method

.method private releaseVisibilityAnimator()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private removeFromModeRootContainer()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateRoot:Lcom/transsion/camera/feature/mode/movie/ui/widget/TemplateRoot;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private showLandscapeTip()V
    .locals 1

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHintText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private startEntranceAnim()V
    .locals 2

    .line 474
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;-><init>(Landroid/view/ViewGroup;Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;)V

    .line 476
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;->startAnim()V

    return-void
.end method

.method private updateHistoryMovie()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->getRecordedTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHistoryTheme:Ljava/lang/String;

    return-void
.end method

.method private updateHorizontalLayout(I)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHorizontalList(I)V

    return-void
.end method

.method private updateHorizontalLayoutParams(Landroid/graphics/Rect;)V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    .line 381
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x3

    .line 382
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 383
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v2, v2, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mClsTopMarginHorizontal:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    .line 385
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 386
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 390
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    .line 392
    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateHorizontalList(I)V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 346
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;-><init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    .line 348
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mDividerItemDecoration:Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 351
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mDividerHorizontal:I

    invoke-direct {v0, v3, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mDividerItemDecoration:Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    .line 353
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    .line 356
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/CenterHelper;->getCenterRegion(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->setCenterRegion(Landroid/graphics/Rect;)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 360
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-direct {v0, v3, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;-><init>(ILcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    .line 362
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 365
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;-><init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    .line 367
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->setSnapPositionListener(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLandscapeTip(I)V
    .locals 0

    .line 449
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->isLandscape(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->hideLandscapeTip()V

    goto :goto_0

    .line 451
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibility:Z

    if-eqz p1, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->showLandscapeTip()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLayout(I)V
    .locals 3

    .line 322
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayout orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateAdapter;->updateOrientation(I)V

    .line 326
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHorizontalLayout(I)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateVerticalLayout(I)V

    :goto_0
    return-void
.end method

.method private updateVerticalLayout(I)V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mListIndicator:Lcom/transsion/camera/feature/mode/movie/ui/widget/RecyclerViewIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateVerticalList(I)V

    return-void
.end method

.method private updateVerticalLayoutParams()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    .line 437
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    .line 438
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mClsTopMarginVertical:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x0

    .line 440
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 441
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mContinueLastShoot:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateVerticalList(I)V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 403
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;-><init>(Landroid/view/View;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    .line 405
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mDividerItemDecoration:Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 408
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    iget v1, v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mDividerVertical:I

    invoke-direct {v0, v3, v1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mDividerItemDecoration:Lcom/transsion/camera/feature/mode/movie/ui/widget/DividerItemDecoration;

    .line 410
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mUISpec:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;

    .line 413
    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/CenterHelper;->getCenterRegion(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;I)Landroid/graphics/Rect;

    move-result-object p1

    .line 412
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->setCenterRegion(Landroid/graphics/Rect;)V

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 416
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mSnapHelper:Lcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;

    invoke-direct {p1, v3, v0}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;-><init>(ILcom/transsion/camera/feature/mode/movie/ui/widget/GallerySnapHelper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 421
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mLayoutManager:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;-><init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryLayoutManager;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    .line 423
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->setSnapPositionListener(Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator$ISnapPositionListener;)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getScrollState()I
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;->getScrollState()I

    move-result p0

    return p0
.end method

.method public hideModePanel()V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->onPreviewClick()Z

    return-void
.end method

.method public init(II)V
    .locals 1

    const/4 p2, 0x1

    .line 159
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInit:Z

    .line 160
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOriginalOrientation:I

    const/4 p2, 0x0

    const/16 v0, 0xb4

    if-ne v0, p1, :cond_0

    move p1, p2

    .line 164
    :cond_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    .line 166
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->addToModeRootContainer()V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->initViewFromModeRootContainer()V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->initViewEvents()V

    .line 175
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->initTemplateAdapter()V

    return-void
.end method

.method public isModePanelVisible()Z
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->isModePanelVisible()Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    .line 529
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->stopPlay()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mCenterCalculator:Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/CenterCalculator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibility:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateList:Lcom/transsion/camera/feature/mode/movie/ui/widget/GalleryRecycleView;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setTemplateSelectListener(Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mTemplateSelectListener:Lcom/transsion/camera/feature/mode/movie/ui/template/ITemplateUI$ITemplateSelectListener;

    return-void
.end method

.method public stopPlay()V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->stopPlay()V

    const/4 p0, 0x0

    .line 534
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;->updateState(Z)V

    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mInit:Z

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;->destroy()V

    .line 483
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->hideLandscapeTip()V

    .line 484
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->releaseRotateAnimator()V

    .line 485
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->releaseVisibilityAnimator()V

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->releasePlayingListener()V

    .line 487
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->removeFromModeRootContainer()V

    .line 488
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->recycleItemCoverBitmap()V

    .line 489
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public updateHintTextOrientation(I)V
    .locals 1

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mHintText:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    :cond_1
    int-to-float p1, p1

    .line 680
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRotation(F)V

    :cond_2
    return-void
.end method

.method public updateLandscapeTip()V
    .locals 1

    .line 445
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateLandscapeTip(I)V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 7

    .line 648
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 650
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOriginalOrientation:I

    .line 651
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateHintTextOrientation(I)V

    const/16 v1, 0xb4

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v4, p1

    const/4 p1, -0x1

    if-eq p1, v4, :cond_4

    .line 655
    iget v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    if-ne v4, v3, :cond_1

    goto :goto_1

    .line 662
    :cond_1
    iput v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mOrientation:I

    .line 664
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mMovieItems:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    .line 669
    :cond_2
    invoke-direct {p0, v4}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->updateLandscapeTip(I)V

    .line 671
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAnimatorExecutor:Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;

    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;-><init>(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;IILandroid/view/View;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$1;)V

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;->access$700(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimatorExecutor;Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI$RotateAnimator;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "wait for the adapter ready"

    .line 665
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 657
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "no need to update orientation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateVisibility(ZZ)V
    .locals 2

    .line 543
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mVisibility:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x93

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->onShow()V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 548
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->animateVisibility(Z)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 552
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mItemOnClick:Z

    goto :goto_2

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x94

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 555
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->onHide()V

    if-eqz p2, :cond_2

    .line 557
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->animateVisibility(Z)V

    goto :goto_1

    .line 559
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 561
    :goto_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUI;->mItemOnClick:Z

    :goto_2
    return-void
.end method
