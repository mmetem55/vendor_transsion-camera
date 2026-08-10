.class public Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;
.super Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;
.source "TextAndDrawableIndicator.java"


# instance fields
.field private final mBaseLine:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mColor:I

.field private final mDrawablePaint:Landroid/graphics/Paint;

.field private final mRectF:Landroid/graphics/RectF;

.field private final mScale:F

.field private final mShaderColor:I

.field private mText:Ljava/lang/String;

.field private final mTextHeight:F

.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(IIIF)V
    .locals 2

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;-><init>(ILandroid/graphics/Paint;)V

    .line 40
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mText:Ljava/lang/String;

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    .line 49
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    .line 50
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    .line 51
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mColor:I

    .line 52
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_item_view_shadow_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mShaderColor:I

    .line 54
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    .line 55
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 56
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float p3, p3

    .line 57
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 58
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    const-string p3, "sans-serif-medium"

    const/4 v1, 0x0

    .line 59
    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 63
    iget p3, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p1, p3, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr p1, p3

    .line 64
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBaseLine:F

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p4, p0

    if-lez p0, :cond_0

    .line 70
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 9

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    .line 178
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 180
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextHeight:F

    div-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p4, :cond_2

    .line 182
    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorHeight()I

    move-result v4

    if-lez v4, :cond_2

    .line 184
    iget-object v4, p4, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->exchangeWidthHeight()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    mul-float/2addr v5, v6

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorHeight()I

    move-result p4

    goto :goto_0

    .line 190
    :cond_0
    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    mul-float/2addr v5, v6

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorWidth()I

    move-result p4

    :goto_0
    int-to-float p4, p4

    add-float/2addr v5, p4

    div-float/2addr v5, v1

    float-to-int p4, v5

    const/16 v5, 0xa

    if-lt v4, v5, :cond_1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-int/lit8 p4, p4, 0x14

    int-to-float p4, p4

    div-float/2addr v4, p4

    .line 195
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 196
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr p4, v5

    float-to-int p4, p4

    invoke-virtual {v4, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 198
    :cond_1
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 202
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->exchangeWidthHeight()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 203
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    iget v4, p2, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float v6, p2

    sub-float/2addr v6, p3

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    int-to-float v8, v7

    sub-float/2addr v6, v8

    iget v8, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    int-to-float v4, v4

    add-float/2addr v4, v2

    int-to-float p2, p2

    sub-float/2addr p2, p3

    int-to-float p3, v7

    sub-float/2addr p2, p3

    invoke-virtual {p4, v5, v6, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 208
    :cond_3
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    sub-float/2addr v4, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float v5, p2

    sub-float/2addr v5, p3

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    int-to-float v7, v6

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    int-to-float v2, v2

    add-float/2addr v2, v0

    int-to-float p2, p2

    sub-float/2addr p2, p3

    int-to-float p3, v6

    sub-float/2addr p2, p3

    invoke-virtual {p4, v4, v5, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 214
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mRotateDegree:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 216
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 218
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    neg-float p3, v0

    iget p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    neg-int p4, p4

    int-to-float p4, p4

    div-float/2addr p4, v1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    div-float p3, v3, p2

    div-float/2addr v3, p2

    invoke-virtual {p1, p3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 221
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mRotateDegree:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 222
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    neg-float p2, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    .line 130
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextHeight:F

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 132
    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorHeight()I

    move-result v1

    if-lez v1, :cond_2

    .line 134
    iget-object v1, p4, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->exchangeWidthHeight()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorHeight()I

    move-result p4

    add-int/2addr v2, p4

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 140
    :cond_0
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    invoke-virtual {p4}, Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;->indicatorWidth()I

    move-result p4

    add-int/2addr v2, p4

    div-int/lit8 v2, v2, 0x2

    :goto_0
    const/high16 p4, 0x40a00000    # 5.0f

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 145
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mShaderColor:I

    invoke-virtual {v2, p4, v0, v0, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 147
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mColor:I

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_1

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, v0, v0, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 150
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 154
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->exchangeWidthHeight()Z

    move-result p4

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p4, :cond_3

    .line 155
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    int-to-float v5, v4

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    sub-int v6, p2, v5

    int-to-float v6, v6

    sub-float/2addr v6, p3

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    sub-int/2addr p2, v5

    int-to-float p2, p2

    sub-float/2addr p2, p3

    invoke-virtual {p4, v3, v6, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 160
    :cond_3
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    int-to-float v5, v4

    div-float/2addr v5, v1

    sub-float/2addr v3, v5

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mOffset:I

    sub-int v6, p2, v5

    int-to-float v6, v6

    sub-float/2addr v6, p3

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    int-to-float v2, v2

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    sub-int/2addr p2, v5

    int-to-float p2, p2

    sub-float/2addr p2, p3

    invoke-virtual {p4, v3, v6, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 166
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mRotateDegree:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 169
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mText:Ljava/lang/String;

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBaseLine:F

    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mRotateDegree:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    neg-float p2, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 110
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 109
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 113
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public height()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 87
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->height()I

    move-result p0

    return p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mText:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mWidth:I

    .line 94
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mTextHeight:F

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->mHeight:I

    :cond_0
    return-void
.end method

.method public width()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/indicator/TextAndDrawableIndicator;->mScale:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/Indicator;->width()I

    move-result p0

    return p0
.end method
