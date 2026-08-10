.class public Lcom/transsion/camera/app/ui/gesture/ScaleDetector;
.super Landroid/view/ScaleGestureDetector;
.source "ScaleDetector.java"


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07067e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mMinSpan:I

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->setStylusScaleEnabled(Z)V

    return-void
.end method

.method private inAnchoredScaleMode()Z
    .locals 0

    .line 206
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 0

    .line 221
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    return p0
.end method

.method public getEventTime()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getPreviousSpan()F
    .locals 0

    .line 225
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    return p0
.end method

.method public getScaleFactor()F
    .locals 4

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iget v3, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 236
    :goto_0
    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iget v3, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 237
    iget v3, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    int-to-float p0, p0

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v1, v2

    goto :goto_1

    :cond_4
    sub-float/2addr v1, v2

    :goto_1
    return v1

    .line 239
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    div-float v1, p0, v0

    :cond_6
    return v1
.end method

.method public getTimeDelta()J
    .locals 4

    .line 243
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 64
    :goto_0
    iget v7, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    if-nez v4, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eq v2, v5, :cond_3

    const/4 v9, 0x3

    if-eq v2, v9, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v9, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v5

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_4

    if-eqz v9, :cond_7

    .line 73
    :cond_4
    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-eqz v11, :cond_5

    .line 74
    iget-object v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 75
    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 76
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    .line 77
    iput v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    goto :goto_4

    .line 78
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v9, :cond_6

    .line 79
    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 80
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    .line 81
    iput v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    return v5

    .line 89
    :cond_7
    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-nez v11, :cond_8

    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_8

    if-nez v9, :cond_8

    if-eqz v4, :cond_8

    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartX:F

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartY:F

    .line 94
    iput v8, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    .line 95
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    :cond_8
    const/4 v4, 0x6

    if-eqz v2, :cond_a

    if-eq v2, v4, :cond_a

    const/4 v9, 0x5

    if-eq v2, v9, :cond_a

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    move v7, v6

    goto :goto_6

    :cond_a
    :goto_5
    move v7, v5

    :goto_6
    if-ne v2, v4, :cond_b

    move v4, v5

    goto :goto_7

    :cond_b
    move v4, v6

    :goto_7
    if-eqz v4, :cond_c

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_8

    :cond_c
    const/4 v9, -0x1

    :goto_8
    if-eqz v4, :cond_d

    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    :cond_d
    move v4, v3

    .line 110
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 113
    iget v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartX:F

    .line 114
    iget v12, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartY:F

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_e

    .line 116
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    .line 118
    :cond_e
    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    :cond_f
    move v11, v6

    move v12, v10

    move v13, v12

    :goto_a
    if-ge v11, v3, :cond_11

    if-ne v9, v11, :cond_10

    goto :goto_b

    .line 123
    :cond_10
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 124
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_11
    int-to-float v11, v4

    div-float/2addr v12, v11

    div-float v11, v13, v11

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    :goto_c
    move v14, v6

    move v13, v10

    :goto_d
    if-ge v14, v3, :cond_13

    if-ne v9, v14, :cond_12

    goto :goto_e

    .line 137
    :cond_12
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v10, v15

    .line 138
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    sub-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v13, v15

    :goto_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_13
    int-to-float v1, v4

    div-float/2addr v10, v1

    div-float/2addr v13, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v10, v1

    mul-float/2addr v13, v1

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v13

    goto :goto_f

    :cond_14
    float-to-double v3, v10

    float-to-double v14, v13

    .line 152
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 158
    :goto_f
    iget-boolean v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 159
    iput v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mFocusX:F

    .line 160
    iput v12, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mFocusY:F

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-nez v4, :cond_16

    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-eqz v4, :cond_16

    iget v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mMinSpan:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_15

    if-eqz v7, :cond_16

    .line 162
    :cond_15
    iget-object v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 163
    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 164
    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    :cond_16
    if-eqz v7, :cond_17

    .line 167
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanX:F

    .line 168
    iput v13, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    iput v13, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanY:F

    .line 169
    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    .line 172
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v4

    if-eqz v4, :cond_18

    iget v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    goto :goto_10

    :cond_18
    iget v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mMinSpan:I

    .line 173
    :goto_10
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-nez v6, :cond_1a

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1a

    if-nez v3, :cond_19

    iget v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    sub-float v3, v1, v3

    .line 174
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    .line 175
    :cond_19
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanX:F

    .line 176
    iput v13, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    iput v13, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanY:F

    .line 177
    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    .line 178
    iget-wide v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    iput-wide v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevTime:J

    .line 179
    iget-object v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    :cond_1a
    if-ne v2, v8, :cond_1c

    .line 184
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    .line 185
    iput v13, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    .line 186
    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    .line 190
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-eqz v1, :cond_1b

    .line 191
    iget-object v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    goto :goto_11

    :cond_1b
    move v1, v5

    :goto_11
    if-eqz v1, :cond_1c

    .line 195
    iget v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanX:F

    .line 196
    iget v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanY:F

    .line 197
    iget v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iput v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    .line 198
    iget-wide v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    iput-wide v1, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevTime:J

    :cond_1c
    return v5
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mStylusScaleEnabled:Z

    return-void
.end method
