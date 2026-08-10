.class public Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;
.super Landroid/view/View;
.source "CustomSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final PROGRESS_TEXT_SHOW_DURATION:I = 0x7d0


# instance fields
.field private mBetweenTextAndThumb:I

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mListener:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;

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

.field private mSeekBarLineHalfHeight:F

.field private mSeekBarLineHeight:I

.field private mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowProgressText:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    .line 49
    new-instance p1, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    .line 125
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTouchSlop:I

    .line 127
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_seekbar_thumb:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_seekbar_optimal_indicator:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_seekbar_text_bg:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 130
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_seekbar_secondary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    sget v0, Lcom/transsion/camera/feature/slimbody/R$drawable;->cw_seekbar_primary:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_between_text_and_thumb_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mBetweenTextAndThumb:I

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_optimize_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotWidth:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_optimize_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotHeight:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_optimize_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHeight:I

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_text_bg_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgWidth:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_text_bg_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgHeight:I

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_thumb_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbWidth:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_thumb_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHeight:I

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/slimbody/R$dimen;->seekbar_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextSize:F

    .line 141
    sget v0, Lcom/transsion/camera/feature/slimbody/R$color;->seekbar_indicator_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextColor:I

    .line 142
    sget v0, Lcom/transsion/camera/feature/slimbody/R$color;->seekbar_indicator_text_shadow_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextColorShadowColor:I

    .line 143
    iget p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHeight:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHalfHeight:F

    .line 144
    iget p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHeight:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHalfHeight:F

    .line 145
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    .line 146
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 151
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextColorShadowColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/16 p1, 0x64

    const/16 v0, -0x64

    .line 153
    invoke-direct {p0, p1, p2, v0, p2}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->setRange(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mShowProgressText:Z

    return p1
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private computePositionByProgress(I)Landroid/graphics/PointF;
    .locals 2

    .line 201
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressRange:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMax:I

    if-gt p1, v1, :cond_3

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMin:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 207
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

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHalfHeight:F

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

    .line 216
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

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mNeedToDrawOptimalDrawable:Z

    if-eqz v0, :cond_0

    .line 188
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 189
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 190
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotWidth:I

    add-int/2addr v1, v0

    .line 191
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotHeight:I

    add-int/2addr v2, p2

    .line 192
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 193
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 168
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 169
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 172
    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 173
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v3, v2

    if-gez v1, :cond_0

    .line 175
    iget p2, p3, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 176
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0

    .line 178
    :cond_0
    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 179
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, v2, p3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarPrimaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 160
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 161
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHeight:I

    add-int/2addr v2, p2

    .line 162
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, p2, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 5

    .line 230
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mShowProgressText:Z

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 235
    :goto_0
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mBetweenTextAndThumb:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgHeight:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 236
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgWidth:I

    add-int/2addr v1, v0

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-ge v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 238
    :goto_1
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgHeight:I

    add-int/2addr v3, p2

    .line 239
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, p2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 240
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 241
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgress:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 244
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 245
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 246
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 4

    .line 220
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 221
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 222
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbWidth:I

    add-int/2addr v1, v0

    .line 223
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHeight:I

    add-int/2addr v2, p2

    .line 224
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getProgressByX(F)I
    .locals 2

    .line 288
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-lt p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    int-to-float p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 296
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressRange:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private isInRange(I)Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressRange:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMax:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMin:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgress:I

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isInThumbArea(FF)Z
    .locals 4

    .line 274
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 280
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHalfHeight:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mSeekBarLineHalfHeight:F

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 281
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbHeight:I

    add-int v2, v1, p0

    add-int/2addr p0, v0

    .line 283
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v0, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 284
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v3, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private setProgress(I)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgress:I

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mListener:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 117
    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setRange(IIII)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMax:I

    .line 72
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMin:I

    .line 73
    iput p3, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalProgress:I

    .line 74
    iput p4, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgress:I

    if-le p3, p2, :cond_0

    if-ge p3, p1, :cond_0

    const/4 p3, 0x1

    .line 76
    iput-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mNeedToDrawOptimalDrawable:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 78
    iput-boolean p3, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mNeedToDrawOptimalDrawable:Z

    :goto_0
    sub-int/2addr p1, p2

    .line 80
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressRange:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private startDelayHideProgressText()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->onStartTrackingTouch()V

    .line 342
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 343
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private startShowProgressText()V
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mShowProgressText:Z

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    move p1, v3

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    if-le v0, p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 329
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressRange:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgressMin:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v3

    .line 330
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 251
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 252
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 253
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mOptimalProgress:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->computePositionByProgress(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->drawProgressBackGround(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 258
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->drawProgress(Landroid/graphics/Canvas;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 259
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->drawOptimalIndicator(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->drawText(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 266
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    .line 267
    invoke-static {v0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 268
    invoke-static {v0, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 352
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

    .line 390
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    if-eqz p1, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->onStopTrackingTouch()V

    .line 392
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 394
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 360
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 361
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 363
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 364
    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 365
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 371
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 372
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 373
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->onStopTrackingTouch()V

    .line 374
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 378
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->onStartTrackingTouch()V

    .line 379
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 380
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->onStopTrackingTouch()V

    .line 382
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->startDelayHideProgressText()V

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 354
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mLastMotionX:F

    .line 355
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 356
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->startShowProgressText()V

    :cond_8
    :goto_1
    return v2
.end method

.method public setOnSeekBarChangeListener(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->mListener:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public updateSeekBarData(II)V
    .locals 2

    .line 105
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->startShowProgressText()V

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->startDelayHideProgressText()V

    .line 109
    iget v0, p1, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->mSeekBarMax:I

    iget v1, p1, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->mSeekBarMin:I

    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SeekBarFeatureData;->mSeekBarOptimal:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->setRange(IIII)V

    :cond_0
    return-void
.end method
