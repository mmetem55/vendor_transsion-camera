.class public Lcom/transsion/camera/app/ui/view/SwitchAnimView;
.super Landroid/widget/FrameLayout;
.source "SwitchAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field listener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

.field private mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

.field private mImageView:Landroid/widget/ImageView;

.field private mRect:Landroid/graphics/Rect;

.field private mRectAnimator:Landroid/animation/ValueAnimator;

.field private final mUseFadeBlurAnimator:Z


# direct methods
.method public static synthetic $r8$lambda$MoajS0JDUwR5EnXjx0glKnPoHhI(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$updateTargetRect$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lm996yqrEWTVVEr735dY3uCiabY(Lcom/transsion/camera/app/ui/view/SwitchAnimView;[FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$new$0([FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    .line 63
    new-instance p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    const/4 v0, 0x0

    aput v0, p1, p2

    .line 48
    new-instance p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;[F)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 56
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x42480000    # 50.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private clearRenderEffect()V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0([FLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 49
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 50
    aget v1, p1, v0

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 51
    aput p2, p1, v0

    .line 52
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setRenderEffect(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTargetRect$1(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    const-string v1, "left"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "top"

    .line 175
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "right"

    .line 176
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "bottom"

    .line 177
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 174
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private setRenderEffect(F)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, p1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_0
    return-void
.end method

.method private updateTargetRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->clearRenderEffect()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    :cond_2
    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public getPreferFactor()I
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 220
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090063

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 211
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 213
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    iget-object p5, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p5

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public resetTargetRect(IIII)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBlurEffect()V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeInBlurAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    .line 125
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setRenderEffect(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSwitchAnimInfo(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setSwitchAnimInfo(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V
    .locals 2

    .line 106
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    const p2, 0x3f99999a    # 1.2f

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    aput v1, v0, v3

    const-string v1, "left"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p2, [I

    .line 169
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aput v4, v1, v2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v1, v3

    const-string v4, "top"

    invoke-static {v4, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v4, p2, [I

    .line 170
    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v4, v2

    iget v5, p1, Landroid/graphics/Rect;->right:I

    aput v5, v4, v3

    const-string v5, "right"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, p2, [I

    .line 171
    iget-object v6, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v2

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v3

    const-string v6, "bottom"

    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, p2

    const/4 p2, 0x3

    aput-object v5, v6, p2

    .line 172
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    .line 173
    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p5, :cond_0

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;

    invoke-direct {p5, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 200
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method
