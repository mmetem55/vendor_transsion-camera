.class public Lcom/transsion/camera/app/ui/widget/DragIndicator;
.super Landroid/view/View;
.source "DragIndicator.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mArrowHeight:I

.field private final mArrowWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mStrokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/DragIndicator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPath:Landroid/graphics/Path;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070194

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mStrokeWidth:I

    const p2, 0x7f070193

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mArrowWidth:I

    const p2, 0x7f070192

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mArrowHeight:I

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/DragIndicator;->initPaint()V

    const p1, 0x3f028f5c    # 0.51f

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mStrokeWidth:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 107
    iget v3, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mArrowWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 108
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mProgress:F

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mArrowHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    add-float v2, v1, v4

    sub-float v5, v0, v3

    sub-float/2addr v1, v4

    add-float/2addr v3, v0

    .line 117
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 118
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3f028f5c    # 0.51f

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public updateProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->mProgress:F

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 91
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/ui/widget/DragIndicator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
