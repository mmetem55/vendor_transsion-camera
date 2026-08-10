.class public Lcom/transsion/camera/app/ui/HelpGuideUI;
.super Ljava/lang/Object;
.source "HelpGuideUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHelpGuideUI;


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mIconHoverAnimator:Landroid/animation/ValueAnimator;

.field private mLowLightDrawable:Landroid/graphics/drawable/Drawable;

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field protected mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mTopMargin:I

.field private mTopMarginInHoverType:I

.field private mUseRectangleAperture:Z


# direct methods
.method public static synthetic $r8$lambda$GQa12cZwgp-bya8VZbFfWibWgns(Lcom/transsion/camera/app/ui/HelpGuideUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HelpGuideUI;->lambda$updateIconLocation$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWW-6tn5uFGhghLaHGmafELT-Wo(Lcom/transsion/camera/app/ui/HelpGuideUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HelpGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenFormType:I

    .line 206
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    new-instance v0, Lcom/transsion/camera/app/ui/HelpGuideUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/HelpGuideUI$2;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/HelpGuideUI;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/HelpGuideUI;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mLowLightDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$updateIconLocation$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "alpha"

    .line 187
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string v0, "margin"

    .line 189
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/HelpGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/HelpGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateIconLocation(Z)V
    .locals 11

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIconHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    iget v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenFormType:I

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_1

    .line 160
    iget v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mTopMarginInHoverType:I

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-double v5, v2

    .line 163
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v7, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 164
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    iget-object v8, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v8}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v8, v2

    mul-double/2addr v8, v5

    double-to-int v10, v8

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v8

    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 167
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v9

    .line 166
    invoke-static/range {v5 .. v10}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v2

    .line 168
    iget v5, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mTopMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 172
    invoke-static {p1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/high16 v5, 0x3f000000    # 0.5f

    .line 173
    invoke-static {v5, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 174
    invoke-static {v4, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    new-array v8, v3, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v6, v8, v2

    const/4 v6, 0x2

    aput-object v7, v8, v6

    const-string v7, "alpha"

    .line 175
    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 177
    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p1, v8}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    .line 178
    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v5, v8}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v8

    .line 179
    invoke-static {v5, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v5

    .line 180
    invoke-static {v4, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Keyframe;

    aput-object p1, v4, v9

    aput-object v8, v4, v2

    aput-object v5, v4, v6

    aput-object v0, v4, v3

    const-string p1, "margin"

    .line 181
    invoke-static {p1, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v0, v9

    aput-object p1, v0, v2

    .line 183
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIconHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 184
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIconHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIconHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/HelpGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/HelpGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIconHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/HelpGuideUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/HelpGuideUI$1;-><init>(Lcom/transsion/camera/app/ui/HelpGuideUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIconHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 201
    :cond_2
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0c00c3

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070760

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mTopMargin:I

    .line 60
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070761

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mTopMarginInHoverType:I

    const v0, 0x7f090230

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    .line 62
    invoke-static {p1, v0, v2}, Lcom/transsion/camera/utils/AnimationUtils;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 63
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v0, 0x7f0806ac

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mLowLightDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 p2, -0x1000000

    .line 65
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 66
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0019

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mUseRectangleAperture:Z

    if-nez v1, :cond_1

    .line 68
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenFormType:I

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->ringScreenLightUpdateUI()V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mScreenFormType:I

    .line 147
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/HelpGuideUI;->updateIconLocation(Z)V

    return-void
.end method

.method public onSetupViews()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->updateIconLocation(Z)V

    return-void
.end method

.method public refreshIconState()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 109
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->ringScreenLightUpdateUI()V

    :cond_0
    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 129
    sget-object v0, Lcom/transsion/camera/app/ui/HelpGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] , enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mUseRectangleAperture:Z

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    :cond_0
    return-void
.end method

.method public updateIcon(ZLandroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/HelpGuideUI;->updateVisibility(Z)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/HelpGuideUI;->updateIconLocation(Z)V

    :cond_0
    return-void
.end method

.method public updateVisibility(Z)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI;->mHelpGuideImg:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
