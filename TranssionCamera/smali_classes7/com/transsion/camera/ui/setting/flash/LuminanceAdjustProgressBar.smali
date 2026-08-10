.class public Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;
.super Landroid/view/View;
.source "LuminanceAdjustProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdjustProgressBarChangeListener:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;

.field private mAllowedMove:Z

.field private mBitmapHigh:[Landroid/graphics/Bitmap;

.field private mBitmapLow:[Landroid/graphics/Bitmap;

.field private mBitmapMedium:[Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDownSystemTime:J

.field private mInitializeProgress:F

.field private mMoveDistance:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPercentage:F

.field private mProgressBarValue:F

.field private x:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AdjustView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/Bitmap;

    .line 30
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mBitmapLow:[Landroid/graphics/Bitmap;

    new-array v1, v0, [Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mBitmapMedium:[Landroid/graphics/Bitmap;

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 34
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mBitmapHigh:[Landroid/graphics/Bitmap;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->x:F

    .line 42
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mInitializeProgress:F

    .line 44
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAllowedMove:Z

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mBitmapLow:[Landroid/graphics/Bitmap;

    new-array v0, p2, [Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mBitmapMedium:[Landroid/graphics/Bitmap;

    new-array p2, p2, [Landroid/graphics/Bitmap;

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mBitmapHigh:[Landroid/graphics/Bitmap;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->x:F

    .line 42
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mInitializeProgress:F

    .line 44
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAllowedMove:Z

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->updateBackgroundPaint()V

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mContext:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->init()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 142
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

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private updateBackgroundPaint()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

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

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateProgressChange()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAdjustProgressBarChangeListener:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;

    if-eqz v0, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 211
    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v2, p0

    float-to-int p0, v2

    invoke-interface {v0, p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;->onProgressValueChange(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addProgressChangeListener(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAdjustProgressBarChangeListener:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->updateBackgroundPaint()V

    .line 120
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->updateProgressBarPaint()V

    .line 122
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->drawProgressBar(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 150
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAllowedMove:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->x:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mMoveDistance:F

    .line 165
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mInitializeProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    .line 169
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    .line 172
    :cond_2
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    .line 176
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->updateProgressChange()V

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 180
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAdjustProgressBarChangeListener:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;

    if-eqz p1, :cond_5

    .line 181
    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;->onActionUp()V

    .line 184
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mDownSystemTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long p1, v4, v6

    if-gez p1, :cond_9

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mMoveDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_9

    .line 185
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_6

    .line 188
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    .line 191
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    .line 195
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_8

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/2addr p1, v3

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    .line 198
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->updateProgressChange()V

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 201
    :cond_9
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mInitializeProgress:F

    goto :goto_0

    .line 155
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->x:F

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mDownSystemTime:J

    .line 157
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mMoveDistance:F

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAdjustProgressBarChangeListener:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;

    if-eqz p0, :cond_b

    .line 159
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar$AdjustProgressBarChangeListener;->onActionDown()V

    :cond_b
    :goto_0
    return v2
.end method

.method public setAllowedMove(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mAllowedMove:Z

    return-void
.end method

.method public setPercentage(F)V
    .locals 2

    .line 75
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mPercentage:F

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mInitializeProgress:F

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->mProgressBarValue:F

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
