.class public Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;
.super Landroid/view/View;
.source "FlashLuminanceAdjustView.java"


# static fields
.field private static ITEM_MAX_NUM:I

.field private static TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackgroundItemViewHeight:F

.field private mBackgroundItemViewWidth:F

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundPath:Landroid/graphics/Path;

.field private mForegroundItemViewHeight:F

.field private mForegroundItemViewWidth:F

.field private mForegroundPaint:Landroid/graphics/Paint;

.field private mForegroundPath:Landroid/graphics/Path;

.field private mGrade:I

.field private mItemBorderWidth:F

.field private mItemMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashLumView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x14

    .line 21
    sput v0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->ITEM_MAX_NUM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPath:Landroid/graphics/Path;

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPath:Landroid/graphics/Path;

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPath:Landroid/graphics/Path;

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->initPaint()V

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->initDimenResource()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 8

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    sget v2, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->ITEM_MAX_NUM:I

    if-ge v1, v2, :cond_0

    .line 87
    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundItemViewHeight:F

    add-float v6, v0, v2

    .line 88
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPath:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget v5, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundItemViewWidth:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 89
    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundItemViewHeight:F

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemMargin:F

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawForeground(Landroid/graphics/Canvas;I)V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 96
    sget v0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->ITEM_MAX_NUM:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundItemViewHeight:F

    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemMargin:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 99
    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemBorderWidth:F

    add-float/2addr v0, v3

    .line 100
    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewHeight:F

    add-float v6, v0, v2

    .line 101
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewWidth:F

    add-float v5, v3, v4

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 102
    iget v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewHeight:F

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemBorderWidth:F

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private initDimenResource()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemBorderWidth:F

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewHeight:F

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewWidth:F

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemMargin:F

    .line 78
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewHeight:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mItemBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundItemViewHeight:F

    .line 79
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundItemViewWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundItemViewWidth:F

    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0600bf

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 57
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 58
    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mGrade:I

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->drawForeground(Landroid/graphics/Canvas;I)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setGrade(I)V
    .locals 3

    .line 46
    sget-object v0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mGrade:I

    if-eq v0, p1, :cond_0

    .line 48
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashLuminanceAdjustView;->mGrade:I

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
