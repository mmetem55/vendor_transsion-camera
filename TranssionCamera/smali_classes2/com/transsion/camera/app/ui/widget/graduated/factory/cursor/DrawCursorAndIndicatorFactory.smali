.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;
.source "DrawCursorAndIndicatorFactory.java"


# instance fields
.field private mIIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

.field protected mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V
    .locals 10

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 35
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_width:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 37
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_height:I

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 40
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_stroke_border:I

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 42
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->pro_cursor_round_corner:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_cursor_color:I

    const/4 v4, 0x0

    .line 46
    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 47
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    .line 48
    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 50
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cursor_and_text_offset:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 51
    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cursor_text_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 53
    new-instance v9, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    int-to-float v4, v0

    move-object v0, v9

    move v2, p2

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIFII)V

    iput-object v9, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    const/4 v0, 0x2

    .line 55
    invoke-virtual {v9, v0}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->setShapeType(I)V

    .line 57
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;

    div-int/lit8 v1, p2, 0x2

    add-int/2addr v8, v1

    const v1, 0x3fa66666    # 1.3f

    invoke-direct {v0, v8, v7, p1, v1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;-><init>(IIIF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mIIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/BaseCursorFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;

    int-to-float p1, p2

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->setExceptedHeight(F)V

    return-void
.end method


# virtual methods
.method public createCursor()Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
    .locals 2

    .line 65
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mIIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->mShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/DrawSpecifyShapeCursor;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method
