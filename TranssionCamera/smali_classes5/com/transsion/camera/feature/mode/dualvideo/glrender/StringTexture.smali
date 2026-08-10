.class public Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;
.super Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;
.source "StringTexture.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p4, p5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;-><init>(II)V

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mText:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 48
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 2

    .line 52
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 53
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 54
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 p0, 0x41a80000    # 21.0f

    const/4 p1, 0x0

    const/high16 v1, -0x72000000

    .line 56
    invoke-virtual {v0, p0, p1, p1, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;
    .locals 0

    .line 62
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;
    .locals 0

    .line 68
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 70
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1

    .line 73
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p1, p3, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 74
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_1
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;
    .locals 7

    .line 80
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 81
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 82
    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-gtz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 86
    :goto_1
    new-instance v6, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v6
.end method


# virtual methods
.method public equal(Ljava/lang/String;)Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mText:Ljava/lang/String;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 97
    sget-object p2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringTexture ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mText:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDrawStringtoUICanvas()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mText:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    move p1, v0

    :cond_0
    if-gtz v1, :cond_1

    move v1, v0

    .line 32
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setSize(II)V

    return-void
.end method
