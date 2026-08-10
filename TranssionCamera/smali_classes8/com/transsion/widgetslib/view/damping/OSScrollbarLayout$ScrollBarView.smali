.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;
.super Landroid/view/View;
.source "OSScrollbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollBarView"
.end annotation


# instance fields
.field private final mPath:Landroid/graphics/Path;

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 543
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mPath:Landroid/graphics/Path;

    .line 544
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 551
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 543
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mPath:Landroid/graphics/Path;

    .line 544
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 555
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 543
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mPath:Landroid/graphics/Path;

    .line 544
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mRectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 560
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 561
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 562
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 563
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 564
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
