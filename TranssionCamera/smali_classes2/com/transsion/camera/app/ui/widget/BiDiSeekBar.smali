.class public Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;
.super Landroid/view/View;
.source "BiDiSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mBetweenTextAndThumb:I

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mListener:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;

.field private mNeedToDrawOptimalDrawable:Z

.field private mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mOptimalDotHeight:I

.field private mOptimalDotWidth:I

.field private mOptimalProgress:I

.field private mProgress:I

.field private mProgressMax:I

.field private mProgressMin:I

.field private mProgressRange:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mScreenFormType:I

.field private mSeekBarLineHalfHeight:F

.field private mSeekBarLineHeight:I

.field private mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowProgressText:Z

.field private mSupportProgressText:Z

.field private mTextBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextBgHeight:I

.field private mTextBgWidth:I

.field private mTextColor:I

.field private mTextColorShadowColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbHalfHeight:F

.field private mThumbHeight:I

.field private mThumbWidth:I

.field private mTouchSlop:I

.field private mUseOffInsteadZero:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    .line 54
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    .line 55
    new-instance p1, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    .line 54
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    .line 55
    new-instance v2, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;-><init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    .line 133
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchSlop:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_thumb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_optimal_indicator:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_text_bg:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_secondary:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_seekbar_primary:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_between_text_and_thumb_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_optimize_indicator_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_optimize_indicator_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_optimize_line_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_text_bg_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_text_bg_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_thumb_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_thumb_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cw_seekbar_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextSize:F

    .line 149
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->cw_seekbar_indicator_text_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextColor:I

    .line 150
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->cw_seekbar_indicator_text_shadow_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextColorShadowColor:I

    .line 151
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    .line 152
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    .line 154
    sget-object v2, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 157
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 158
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_supportText:I

    if-ne v3, v4, :cond_0

    .line 159
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    goto :goto_1

    .line 160
    :cond_0
    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$styleable;->BiDiSeekBar_useOffInsteadZero:I

    if-ne v3, v4, :cond_1

    .line 161
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 167
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextColorShadowColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/16 p1, 0x64

    const/16 p2, -0x64

    .line 174
    invoke-direct {p0, p1, v0, p2, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setRange(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mShowProgressText:Z

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private computePositionByProgress(I)Landroid/graphics/PointF;
    .locals 2

    .line 220
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMax:I

    if-gt p1, v1, :cond_3

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 226
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v1, v0, p0

    if-gez v1, :cond_1

    move v0, p0

    :cond_1
    cmpg-float v1, p1, p0

    if-gez v1, :cond_2

    move p1, p0

    .line 235
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 208
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedToDrawOptimalDrawable:Z

    if-eqz v0, :cond_0

    .line 209
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 210
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 211
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotWidth:I

    add-int/2addr v1, v0

    .line 212
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotHeight:I

    add-int/2addr v2, p2

    .line 213
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 189
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 190
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 193
    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 194
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v3, v2

    if-gez v1, :cond_0

    .line 196
    iget p2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0

    .line 199
    :cond_0
    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 200
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, v2, p3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 181
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 182
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v2, p2

    .line 183
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, p2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 2

    .line 249
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mShowProgressText:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawTextRotate(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawTextNormal(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method private drawTextNormal(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 5

    .line 260
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 262
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 263
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    add-int/2addr v1, v0

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 265
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    add-int/2addr v3, p2

    .line 266
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 268
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 270
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-nez v0, :cond_0

    const-string p2, "OFF"

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 274
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 276
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextRotate(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 11

    .line 280
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    .line 281
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 282
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 283
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    add-int/2addr v1, v0

    .line 284
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    add-int/2addr v3, p2

    .line 285
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float v8, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float v9, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result p2

    .line 288
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 289
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgWidth:I

    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgHeight:I

    neg-int v5, v4

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mUseOffInsteadZero:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-nez v1, :cond_0

    const-string v0, "OFF"

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 299
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v3, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    const/4 v2, 0x0

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 302
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 239
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 240
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 241
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbWidth:I

    add-int/2addr v1, v0

    .line 242
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbHeight:I

    add-int/2addr v2, p2

    .line 243
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 244
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private isInRange(I)Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMax:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private setProgress(I)V
    .locals 2

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mListener:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 125
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setRange(IIII)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMax:I

    .line 77
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    .line 78
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalProgress:I

    .line 79
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    if-le p3, p2, :cond_0

    if-ge p3, p1, :cond_0

    const/4 p3, 0x1

    .line 81
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedToDrawOptimalDrawable:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 83
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mNeedToDrawOptimalDrawable:Z

    :goto_0
    sub-int/2addr p1, p2

    .line 85
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private startDelayHideProgressText()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onStartTrackingTouch()V

    .line 399
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 400
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startShowProgressText()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mShowProgressText:Z

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 373
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 378
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    move p1, v3

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 386
    :goto_0
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressRange:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgressMin:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v3

    .line 387
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 307
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 308
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 309
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mOptimalProgress:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 314
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 315
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 317
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mSupportProgressText:Z

    if-eqz v1, :cond_1

    .line 318
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 324
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 325
    invoke-static {v0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 326
    invoke-static {v0, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 327
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 447
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz p1, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onStopTrackingTouch()V

    .line 449
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 451
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 417
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 418
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 420
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 421
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 422
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 428
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 429
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 430
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onStopTrackingTouch()V

    .line 431
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 435
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onStartTrackingTouch()V

    .line 436
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 437
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->onStopTrackingTouch()V

    .line 439
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDelayHideProgressText()V

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 411
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mLastMotionX:F

    .line 412
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 413
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startShowProgressText()V

    :cond_8
    :goto_1
    return v2
.end method

.method public setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mListener:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public updateProgressText(II)V
    .locals 0

    .line 116
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->mScreenFormType:I

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateSeekBarData(IIII)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startShowProgressText()V

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->startDelayHideProgressText()V

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setRange(IIII)V

    return-void
.end method
