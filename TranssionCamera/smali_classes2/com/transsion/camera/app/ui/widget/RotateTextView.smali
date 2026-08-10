.class public Lcom/transsion/camera/app/ui/widget/RotateTextView;
.super Landroid/widget/TextView;
.source "RotateTextView.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    .line 16
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mStartDegree:I

    .line 17
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mTargetDegree:I

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mClockwise:Z

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mAnimationStartTime:J

    .line 22
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mAnimationEndTime:J

    const/16 p1, 0x11

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mTargetDegree:I

    if-eq v0, v1, :cond_4

    .line 66
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mAnimationEndTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 68
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 69
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mStartDegree:I

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mClockwise:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v1, v0

    if-ltz v1, :cond_2

    .line 71
    rem-int/lit16 v1, v1, 0x168

    goto :goto_1

    :cond_2
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    .line 72
    :goto_1
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_2

    .line 75
    :cond_3
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mTargetDegree:I

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    .line 79
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 88
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 100
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 102
    invoke-virtual {p0, p1, p1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 33
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 35
    :goto_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    return-void

    .line 39
    :cond_1
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mTargetDegree:I

    if-eqz p2, :cond_5

    .line 41
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mStartDegree:I

    .line 42
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mAnimationStartTime:J

    .line 44
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mTargetDegree:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

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

    .line 52
    :goto_2
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mClockwise:Z

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mAnimationEndTime:J

    goto :goto_3

    .line 55
    :cond_5
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateTextView;->mCurrentDegree:I

    .line 57
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
