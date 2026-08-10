.class public Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;
.super Landroid/view/View;
.source "FlashColorTempProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowedMove:Z

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mColdColorTempIcon:Landroid/graphics/Bitmap;

.field private mColorTempChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDefaultColorTempIcon:Landroid/graphics/Bitmap;

.field private mDownSystemTime:J

.field private mDownX:F

.field private mLastColorTemp:I

.field private mMoveDistance:F

.field private final mSelectedPaint:Landroid/graphics/Paint;

.field private mWarmColorTempIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashColorTempProgressBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mAllowedMove:Z

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownX:F

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 30
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mAllowedMove:Z

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownX:F

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->updateBackgroundPaint()V

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->init()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColdColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDefaultColorTempIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    .line 110
    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mSelectedPaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {p1, v0, v1, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f080671

    .line 71
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mWarmColorTempIcon:Landroid/graphics/Bitmap;

    const v0, 0x7f08066a

    .line 72
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDefaultColorTempIcon:Landroid/graphics/Bitmap;

    const v0, 0x7f080669

    .line 73
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColdColorTempIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private updateBackgroundPaint()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 79
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method public addColorTempChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColorTempChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->updateBackgroundPaint()V

    .line 93
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 119
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mAllowedMove:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/high16 v7, 0x40400000    # 3.0f

    if-eq v0, v2, :cond_5

    if-eq v0, v6, :cond_1

    goto/16 :goto_2

    .line 134
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mMoveDistance:F

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v2

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColorTempChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mLastColorTemp:I

    if-eq v3, v0, :cond_4

    .line 143
    invoke-interface {p1, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;->onColorTempChanged(I)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 146
    :cond_4
    iput v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mLastColorTemp:I

    goto :goto_2

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColorTempChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;

    if-eqz p1, :cond_6

    .line 150
    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;->onActionUp()V

    .line 152
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownSystemTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1f4

    cmp-long p1, v8, v10

    if-gez p1, :cond_b

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mMoveDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_b

    .line 153
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownX:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    goto :goto_1

    .line 155
    :cond_7
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    mul-float/2addr v0, v4

    div-float/2addr v0, v7

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    move v3, v6

    goto :goto_1

    :cond_8
    move v3, v2

    .line 160
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColorTempChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mLastColorTemp:I

    if-eq v3, v0, :cond_9

    .line 161
    invoke-interface {p1, v3}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;->onColorTempChanged(I)V

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 164
    :cond_9
    iput v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mLastColorTemp:I

    goto :goto_2

    .line 126
    :cond_a
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownX:F

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mDownSystemTime:J

    .line 128
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mMoveDistance:F

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mColorTempChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;

    if-eqz p0, :cond_b

    .line 130
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar$ColorTempChangeListener;->onActionDown()V

    :cond_b
    :goto_2
    return v2
.end method

.method public resetValue()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mLastColorTemp:I

    return-void
.end method

.method public setAllowedMove(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashColorTempProgressBar;->mAllowedMove:Z

    return-void
.end method
