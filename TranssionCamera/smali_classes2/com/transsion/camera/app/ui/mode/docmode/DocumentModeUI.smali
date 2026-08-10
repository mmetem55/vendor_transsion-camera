.class public Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;
.super Ljava/lang/Object;
.source "DocumentModeUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCenterY:I

.field protected mContext:Landroid/content/Context;

.field private mDiffX:I

.field private mDiffY:I

.field protected mDocBg:Landroid/widget/RelativeLayout;

.field protected mDocImage:Landroid/widget/ImageView;

.field protected mDocLayout:Landroid/widget/RelativeLayout;

.field private mDocStatusListener:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsUnInit:Z

.field private mOrientation:I

.field protected mParentViewGroup:Landroid/view/ViewGroup;

.field private final mPathInterpolator1:Landroid/view/animation/PathInterpolator;

.field private final mPathInterpolator2:Landroid/view/animation/PathInterpolator;

.field protected mRootLayout:Landroid/widget/RelativeLayout;

.field private mRootResourceId:I

.field private mScreenFormType:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mShowing:Z

.field private mTranslationXAnim:Landroid/animation/Animator;

.field private mTranslationYAnim:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$WaSP_G9sxjUKA8ClyVCW-UU4lFs(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tNOUhU0FA07jIgzlvMv81g7183E(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V
    .locals 11

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mIsUnInit:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 44
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 45
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 56
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootResourceId:I

    .line 57
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {v1, p3, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    sget p3, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_root:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 60
    sget p3, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_bg:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    .line 61
    new-instance p4, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget p3, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    .line 69
    sget p3, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_image:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    .line 70
    new-instance p3, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p2

    int-to-double p2, p2

    iget-object p4, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-static {p4}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p4

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    int-to-double v3, p4

    const-wide v5, 0x3ff547ae147ae148L    # 1.33

    mul-double/2addr v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v7

    add-double/2addr p2, v3

    double-to-int p2, p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    .line 76
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p2

    .line 77
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 78
    iget-object p4, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diffY:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, v7

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diffX:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v9, v1

    sub-double/2addr v3, v9

    double-to-int v1, v3

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p4

    const/4 p4, 0x2

    .line 80
    div-int/2addr p2, p4

    add-int/2addr p2, p3

    int-to-double p2, p2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, v5

    mul-double/2addr v3, v7

    add-double/2addr p2, v3

    double-to-int p2, p2

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p3, p4, [F

    aput v2, p3, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, p3, p1

    const/16 v1, 0x12c

    const-string v3, "translationX"

    invoke-direct {p0, p2, v1, v3, p3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 83
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p3, p4, [F

    aput v2, p3, v0

    iget p4, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float p4, p4

    aput p4, p3, p1

    const-string p1, "translationY"

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void
.end method

.method private varargs createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;
    .locals 0

    .line 220
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocStatusListener:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->gotoGallery(Landroid/view/View;)V

    return-void
.end method

.method private updateDiff()V
    .locals 9

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diffY:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diffX:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-double v7, v7

    sub-double/2addr v3, v7

    double-to-int v3, v3

    iput v3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 134
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v7, 0x3ff547ae147ae148L    # 1.33

    mul-double/2addr v2, v7

    mul-double/2addr v2, v5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    return-void
.end method

.method private updateDocLayoutPosition(II)V
    .locals 9

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xe

    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xf

    .line 154
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0xc

    .line 155
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0xb

    .line 156
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xd

    .line 158
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v7, 0x0

    .line 159
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    iget v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_image_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 163
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    if-eqz p1, :cond_3

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 176
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_horizontal_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_vertical_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_horizontal_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_vertical_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-eq v7, v3, :cond_5

    if-eqz v7, :cond_5

    const/4 v4, 0x3

    if-ne v7, v4, :cond_6

    :cond_5
    const/4 v4, -0x1

    .line 189
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 190
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    div-int/2addr p2, v3

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 195
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTranslationAnimator(II)V
    .locals 8

    const-string v0, "translationY"

    const-string v1, "translationX"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x12c

    const/4 v6, 0x1

    if-ne p2, v6, :cond_3

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, p2, v6

    invoke-direct {p0, p1, v5, v1, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v1, v1

    aput v1, p2, v6

    invoke-direct {p0, p1, v5, v0, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    goto/16 :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, p2, v6

    invoke-direct {p0, p1, v5, v1, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, p2, v6

    invoke-direct {p0, p1, v5, v0, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    int-to-float v7, v7

    aput v7, p2, v6

    invoke-direct {p0, p1, v5, v1, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, p2, v6

    invoke-direct {p0, p1, v5, v0, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    int-to-float v7, v7

    aput v7, p2, v6

    invoke-direct {p0, p1, v5, v1, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v1, v1

    aput v1, p2, v6

    invoke-direct {p0, p1, v5, v0, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, p2, v6

    invoke-direct {p0, p1, v5, v1, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array p2, v4, [F

    aput v2, p2, v3

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v1, v1

    aput v1, p2, v6

    invoke-direct {p0, p1, v5, v0, p2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    :goto_0
    return-void
.end method


# virtual methods
.method public hideView()V
    .locals 2

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public hideViewWithAnim()V
    .locals 10

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 240
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 241
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/16 v4, 0x12c

    const-string v5, "alpha"

    invoke-direct {p0, v1, v4, v5, v3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    .line 243
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    const-string v8, "scaleX"

    invoke-direct {p0, v3, v4, v8, v7}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v3

    .line 244
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array v8, v6, [F

    fill-array-data v8, :array_2

    const-string v9, "scaleY"

    invoke-direct {p0, v7, v4, v9, v8}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v4

    .line 245
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v8, 0xc8

    new-array v9, v6, [F

    fill-array-data v9, :array_3

    invoke-direct {p0, v7, v8, v5, v9}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v5

    .line 246
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v1, v8, v0

    const/4 v0, 0x1

    aput-object v3, v8, v0

    aput-object v4, v8, v6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    aput-object v0, v8, v2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    aput-object v1, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public initScreenForm(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 119
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    .line 120
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateTranslationAnimator(II)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateDocLayoutPosition(II)V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(I)V
    .locals 1

    .line 124
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateDiff()V

    .line 126
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateTranslationAnimator(II)V

    return-void
.end method

.method public setDocStatusListener(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocStatusListener:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;

    return-void
.end method

.method public showView(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 201
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateDocLayoutPosition(II)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 206
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/16 v4, 0x12c

    const-string v5, "alpha"

    invoke-direct {p0, p1, v4, v5, v3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    .line 208
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array v6, v2, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleX"

    invoke-direct {p0, v3, v4, v7, v6}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v3

    .line 209
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    const-string v8, "scaleY"

    invoke-direct {p0, v6, v4, v8, v7}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v6

    .line 210
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    new-array v8, v2, [F

    fill-array-data v8, :array_3

    invoke-direct {p0, v7, v4, v5, v8}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object p1, v7, v1

    aput-object v3, v7, v0

    aput-object v6, v7, v2

    const/4 p1, 0x3

    aput-object v4, v7, p1

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .locals 2

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mIsUnInit:Z

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootLayout:Landroid/widget/RelativeLayout;

    return-void
.end method
