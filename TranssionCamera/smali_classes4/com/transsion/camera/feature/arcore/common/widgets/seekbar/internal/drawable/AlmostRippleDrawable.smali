.class public Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;
.super Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;
.source "AlmostRippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ACTIVE_SCALE:F = 1.0f

.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FRAME_DURATION:J = 0x10L

.field private static final INACTIVE_SCALE:F


# instance fields
.field private mAnimationInitialValue:F

.field private mCurrentScale:F

.field private mDisabledColor:I

.field private mDuration:I

.field private mFocusedColor:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPressedColor:I

.field private mReverse:Z

.field private mRippleBgColor:I

.field private mRippleColor:I

.field private mRunning:Z

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    const/16 v0, 0xfa

    .line 26
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable$1;-><init>(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;F)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->updateAnimation(F)V

    return-void
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return p1
.end method

.method private decreasedAlpha(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    shr-int/lit8 p0, p1, 0x8

    return p0
.end method

.method private static getModulatedAlphaColor(II)I
    .locals 2

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    shr-int/lit8 v1, p0, 0x7

    add-int/2addr p0, v1

    mul-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x8

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private updateAnimation(F)V
    .locals 2

    .line 166
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 167
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 168
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public animateToNormal()V
    .locals 5

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 154
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 156
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 157
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 159
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    .line 161
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public animateToPressed()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 141
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 142
    iput-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    const/4 v2, 0x1

    .line 143
    iput-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 144
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/4 v2, 0x0

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 146
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    .line 148
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 65
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 66
    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    mul-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->decreasedAlpha(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->modulateAlpha(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return p0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 42
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 43
    fill-array-data v2, :array_0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    new-array v1, v1, [I

    .line 44
    fill-array-data v1, :array_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    .line 48
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    const/16 v0, 0x82

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->getModulatedAlphaColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    .line 49
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->getModulatedAlphaColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    .line 50
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->getModulatedAlphaColor(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public setState([I)Z
    .locals 11

    .line 90
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 92
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const v5, 0x10100a7

    const/4 v6, 0x1

    if-ge v3, v1, :cond_1

    aget v7, v0, v3

    if-ne v7, v5, :cond_0

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/StateDrawable;->setState([I)Z

    .line 101
    array-length v0, p1

    move v1, v2

    move v7, v1

    move v8, v7

    move v3, v6

    :goto_1
    if-ge v1, v0, :cond_5

    aget v9, p1, v1

    const v10, 0x101009c

    if-ne v9, v10, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    if-ne v9, v5, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    const v10, 0x101009e

    if-ne v9, v10, :cond_4

    move v3, v2

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 113
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 114
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 115
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 116
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 119
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->animateToPressed()V

    .line 120
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 122
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->animateToNormal()V

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    .line 125
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 126
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 127
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    .line 130
    :cond_9
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 131
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/widgets/seekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    return v6
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
