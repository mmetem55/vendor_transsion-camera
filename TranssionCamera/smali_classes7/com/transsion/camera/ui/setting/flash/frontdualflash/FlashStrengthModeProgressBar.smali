.class public Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;
.super Landroid/view/View;
.source "FlashStrengthModeProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowedMove:Z

.field private mDownSystemTime:J

.field private mDownX:F

.field private mInitializeProgress:F

.field private mLastStrengthMode:I

.field private mMoveDistance:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgressBarValue:F

.field private mSelectedStrengthMode:I

.field private mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashStrengthModeProgressBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    .line 22
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 28
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    .line 22
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    const/4 p2, -0x1

    .line 27
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 28
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->updateBackgroundPaint()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updateBackgroundPaint()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateProgressBarPaint()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public addStrengthModeChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->updateBackgroundPaint()V

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->updateProgressBarPaint()V

    .line 79
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->drawProgressBar(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 106
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40800000    # 4.0f

    if-eq v0, v2, :cond_6

    if-eq v0, v6, :cond_1

    goto/16 :goto_2

    .line 120
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mMoveDistance:F

    .line 121
    iget v9, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    add-float/2addr v9, v0

    iput v9, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 123
    iput v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 124
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 126
    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_0

    .line 129
    :cond_3
    iput v6, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 132
    :goto_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    .line 133
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 135
    :cond_4
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 138
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    if-eq v0, v1, :cond_c

    .line 139
    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onStrengthModeChanged(I)V

    .line 140
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    .line 145
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p1, :cond_7

    .line 146
    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onActionUp()V

    .line 148
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownSystemTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1f4

    cmp-long p1, v9, v11

    if-gez p1, :cond_a

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mMoveDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_a

    .line 149
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    .line 150
    iput v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 151
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_1

    .line 152
    :cond_8
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_9

    .line 153
    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_1

    .line 156
    :cond_9
    iput v6, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 159
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    if-eq v0, v1, :cond_a

    .line 160
    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onStrengthModeChanged(I)V

    .line 161
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 165
    :cond_a
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    goto :goto_2

    .line 112
    :cond_b
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownSystemTime:J

    .line 114
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mMoveDistance:F

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p0, :cond_c

    .line 116
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onActionDown()V

    :cond_c
    :goto_2
    return v2
.end method

.method public resetValue()V
    .locals 1

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    return-void
.end method

.method public setAllowedMove(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    return-void
.end method

.method public setStrengthMode(I)V
    .locals 2

    .line 31
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 39
    :goto_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
