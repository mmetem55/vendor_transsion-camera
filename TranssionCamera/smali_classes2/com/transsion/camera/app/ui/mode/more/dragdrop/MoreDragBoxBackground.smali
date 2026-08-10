.class public Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;
.super Landroid/view/View;
.source "MoreDragBoxBackground.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackgroundBlurDrawable:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundColor:I

.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field private final mCornerRadius:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$15kHT6lafMVuo5pQVZVwlFF-cWc(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->lambda$changeColor$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703eb

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mCornerRadius:F

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f060287

    .line 55
    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundColor:I

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$changeColor$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public changeColor(JII)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p4, v0, p3

    .line 69
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 70
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    new-instance p2, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getBackgroundHeight()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundHeight:I

    return p0
.end method

.method public getBackgroundWidth()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundWidth:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundBlurDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    int-to-float v2, v0

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v3, v0

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget v7, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mCornerRadius:F

    iget-object v8, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v6, v7

    .line 210
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setBackgroundHeight(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 94
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundHeight:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 97
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setBackgroundSize(II)V
    .locals 1

    .line 106
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundWidth:I

    .line 107
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundHeight:I

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 110
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setBackgroundWidth(I)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 81
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxBackground;->mBackgroundWidth:I

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 84
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
