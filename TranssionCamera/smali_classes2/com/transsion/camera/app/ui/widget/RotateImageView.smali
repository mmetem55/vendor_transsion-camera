.class public Lcom/transsion/camera/app/ui/widget/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    .line 36
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    const-wide/16 p1, 0x0

    .line 41
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    .line 42
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected getDegree()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 148
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 97
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 104
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 105
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    if-eqz v2, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 111
    :cond_1
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-eq v1, v4, :cond_5

    .line 112
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 113
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    .line 114
    iget-wide v6, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 115
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    neg-int v1, v1

    :goto_0
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v4, v1

    if-ltz v4, :cond_3

    .line 117
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_3
    rem-int/lit16 v4, v4, 0x168

    add-int/lit16 v4, v4, 0x168

    .line 118
    :goto_1
    iput v4, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 119
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_2

    .line 121
    :cond_4
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 125
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    .line 126
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    .line 127
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    .line 128
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int/2addr v7, v5

    .line 130
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 135
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_7

    if-lt v7, v2, :cond_6

    if-ge v5, v3, :cond_7

    :cond_6
    int-to-float v8, v7

    int-to-float v9, v2

    div-float v9, v8, v9

    int-to-float v10, v5

    int-to-float v11, v3

    div-float v11, v10, v11

    .line 136
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    div-float/2addr v10, v11

    .line 137
    invoke-virtual {p1, v9, v9, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 139
    :cond_7
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v1, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int p0, v2

    .line 141
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    neg-int v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onScreenStateChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 175
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 176
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 177
    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    aget-object v3, v0, v2

    aput-object v3, v0, v1

    .line 184
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v2

    .line 185
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x1f4

    .line 187
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 179
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 180
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v2

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    .line 67
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_0

    .line 69
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 70
    :goto_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    return-void

    .line 74
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    if-eqz p2, :cond_5

    .line 76
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mStartDegree:I

    .line 77
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationStartTime:J

    .line 79
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mTargetDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v0, v0, 0x168

    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    add-int/lit16 v0, v0, -0x168

    :cond_3
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 86
    :goto_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mClockwise:Z

    .line 87
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mAnimationEndTime:J

    goto :goto_3

    .line 89
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateImageView;->mCurrentDegree:I

    .line 92
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
