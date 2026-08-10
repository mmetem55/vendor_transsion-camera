.class public Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;
.super Landroid/view/View;
.source "RecordingProgressView.java"


# instance fields
.field private mAnimateMarkRectF:Landroid/graphics/RectF;

.field private mAnimateMarkWidth:F

.field private mCellStopDuration:J

.field private mCurrentDuration:J

.field private mMainMarkRectF:Landroid/graphics/RectF;

.field private mMainMarkWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseTime:J

.field private mPaused:Z

.field private mPausedDuration:J

.field private mRotateMatrix:Landroid/graphics/Matrix;

.field private mStartTime:J

.field private mStarted:Z

.field private mStopCount:I

.field private mStopped:Z

.field private mTotalScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40e00000    # 7.0f

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStarted:Z

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopped:Z

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaused:Z

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->init()V

    return-void
.end method

.method private drawAnimateSmallLine(Landroid/graphics/Canvas;IF)V
    .locals 12

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v0, 0xff

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v3, v0

    move v4, v1

    :goto_0
    const/16 v5, 0x3c

    if-ge v2, v5, :cond_6

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v6, 0x99

    if-ge v2, p2, :cond_0

    if-gt p2, v5, :cond_0

    .line 164
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mTotalScale:F

    :goto_1
    move v3, v6

    goto :goto_3

    :cond_0
    const/high16 v7, 0x42cc0000    # 102.0f

    if-ne v2, p2, :cond_1

    if-gt p2, v5, :cond_1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v7, p3

    sub-float/2addr v3, v7

    float-to-int v3, v3

    .line 167
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mTotalScale:F

    sub-float v4, v1, v4

    mul-float/2addr v4, p3

    sub-float v4, v1, v4

    goto :goto_3

    :cond_1
    if-le v2, p2, :cond_2

    if-gt p2, v5, :cond_2

    :goto_2
    move v3, v0

    move v4, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v2, 0x3c

    if-ge v8, p2, :cond_3

    if-le p2, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne v8, p2, :cond_4

    if-le p2, v5, :cond_4

    const/high16 v3, 0x43190000    # 153.0f

    mul-float/2addr v7, p3

    add-float/2addr v7, v3

    float-to-int v3, v7

    .line 176
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mTotalScale:F

    sub-float v5, v1, v4

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    goto :goto_3

    :cond_4
    if-le v8, p2, :cond_5

    if-le p2, v5, :cond_5

    .line 179
    iget v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mTotalScale:F

    goto :goto_1

    .line 181
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    const v6, -0x3d49999a    # -91.2f

    const/high16 v7, 0x40c00000    # 6.0f

    int-to-float v8, v2

    mul-float/2addr v8, v7

    add-float/2addr v8, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-virtual {v5, v8, v6, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    .line 184
    iget-object v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v8, v5

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    sub-float/2addr v9, v5

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v7

    add-float/2addr v10, v5

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    add-float/2addr v11, v5

    .line 184
    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 190
    iget-object v7, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const v9, 0x4019999a    # 2.4f

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private drawMainMark(Landroid/graphics/Canvas;)V
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x41e40000    # 28.5f

    invoke-virtual {v0, v4, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 110
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const v6, 0x4019999a    # 2.4f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawRecording(Landroid/graphics/Canvas;)V
    .locals 6

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCurrentDuration:J

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const v2, -0x3d49999a    # -91.2f

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 134
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCurrentDuration:J

    const-wide/16 v2, 0x64

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x78

    .line 135
    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 136
    invoke-direct {p0, p1, v4, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->drawAnimateSmallLine(Landroid/graphics/Canvas;IF)V

    .line 137
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaused:Z

    if-nez p1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method private drawSmallMarkLine(Landroid/graphics/Canvas;)V
    .locals 9

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v4, 0x41e40000    # 28.5f

    invoke-virtual {v0, v4, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    .line 120
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 126
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const v6, 0x4019999a    # 2.4f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawStopping(Landroid/graphics/Canvas;)V
    .locals 6

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCurrentDuration:J

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const v2, -0x3d49999a    # -91.2f

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 145
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCurrentDuration:J

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCellStopDuration:J

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x78

    iget v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopCount:I

    add-int/2addr v4, v5

    .line 146
    rem-long/2addr v0, v2

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 147
    invoke-direct {p0, p1, v4, v0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->drawAnimateSmallLine(Landroid/graphics/Canvas;IF)V

    const/16 p1, 0x77

    if-ge v4, p1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->reset()V

    .line 152
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->gc()V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070780

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    .line 64
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mRotateMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->drawRecording(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopped:Z

    if-eqz v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->drawStopping(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->drawSmallMarkLine(Landroid/graphics/Canvas;)V

    .line 100
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->drawMainMark(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 82
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    const/high16 p3, 0x40000000    # 2.0f

    div-float p4, p2, p3

    div-float/2addr p2, p3

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-direct {p1, p4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkRectF:Landroid/graphics/RectF;

    .line 84
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float p4, p2, p3

    div-float/2addr p2, p3

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr v2, p3

    sub-float/2addr v1, v2

    invoke-direct {p1, p4, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkRectF:Landroid/graphics/RectF;

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p3

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iget p4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mMainMarkWidth:F

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mAnimateMarkWidth:F

    sub-float/2addr p4, v0

    div-float/2addr v0, p3

    add-float/2addr p4, v0

    sub-float/2addr p2, p4

    div-float/2addr p2, p1

    .line 88
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mTotalScale:F

    return-void
.end method

.method public pause(Z)V
    .locals 6

    .line 222
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaused:Z

    if-eqz p1, :cond_0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPauseTime:J

    goto :goto_0

    .line 226
    :cond_0
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStarted:Z

    .line 233
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaused:Z

    .line 234
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopped:Z

    const-wide/16 v0, 0x0

    .line 235
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCurrentDuration:J

    .line 236
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStarted:Z

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCurrentDuration:J

    .line 198
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStartTime:J

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public stop()V
    .locals 7

    .line 204
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStarted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStarted:Z

    .line 206
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaused:Z

    if-eqz v1, :cond_1

    .line 207
    iget-wide v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPauseTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    .line 209
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaused:Z

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopped:Z

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPausedDuration:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    .line 212
    div-long v4, v0, v2

    long-to-int v4, v4

    rem-int/lit8 v4, v4, 0x78

    iput v4, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStopCount:I

    .line 213
    rem-long/2addr v0, v2

    const-wide/16 v5, 0x258

    add-long/2addr v0, v5

    long-to-float v0, v0

    rsub-int/lit8 v1, v4, 0x78

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 214
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCellStopDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 215
    iput-wide v2, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mCellStopDuration:J

    .line 216
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mStartTime:J

    const-wide/16 v0, 0x0

    .line 217
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPauseTime:J

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const v0, -0x7fb9b9ba

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/timelapsevideo/RecordingProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
