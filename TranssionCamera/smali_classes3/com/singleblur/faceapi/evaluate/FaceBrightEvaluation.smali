.class public Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation;
.super Ljava/lang/Object;
.source "FaceBrightEvaluation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static faceBrightEvaluate([BLcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;IILandroid/graphics/Rect;)F
    .locals 7

    mul-int/lit8 v3, p2, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p3

    move-object v6, p4

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation;->faceBrightEvaluate([BLcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;IIIILandroid/graphics/Rect;)I

    move-result p0

    const/16 p1, 0xdc

    if-lt p1, p0, :cond_1

    const/16 p1, 0x5a

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    rsub-int p0, p0, 0x9b

    .line 28
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 p2, 0x42820000    # 65.0f

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static faceBrightEvaluate(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .locals 8

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .line 16
    invoke-static {p0, v1}, Lcom/singleblur/faceapi/utils/ColorConvertUtil;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 17
    sget-object v2, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->BGRA8888:Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v4, v0, 0x4

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object v7, p1

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation;->faceBrightEvaluate([BLcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;IIIILandroid/graphics/Rect;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static faceBrightEvaluate([BIIIIIIIII)I
    .locals 0

    .line 44
    invoke-static/range {p0 .. p9}, Lcom/singleblur/faceapi/FaceLibrary;->faceBrightEvaluate([BIIIIIIIII)I

    move-result p0

    return p0
.end method

.method public static faceBrightEvaluate([BLcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;IIIILandroid/graphics/Rect;)I
    .locals 11

    const v0, 0x3f666666    # 0.9f

    move v3, p2

    move v5, p4

    move-object/from16 v1, p6

    .line 35
    invoke-static {v1, v0, v0, p2, p4}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation;->getScaleRect(Landroid/graphics/Rect;FFII)Landroid/graphics/Rect;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/singleblur/faceapi/evaluate/FaceBrightEvaluation$BrightEvaluationFormat;->getValue()I

    move-result v2

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object v1, p0

    move v4, p3

    move/from16 v6, p5

    .line 36
    invoke-static/range {v1 .. v10}, Lcom/singleblur/faceapi/FaceLibrary;->faceBrightEvaluate([BIIIIIIIII)I

    move-result v0

    return v0
.end method

.method private static getScaleRect(Landroid/graphics/Rect;FFII)Landroid/graphics/Rect;
    .locals 6

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 51
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float/2addr v2, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 52
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    float-to-int p1, v2

    .line 53
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p2, v3

    mul-float/2addr v5, p2

    div-float/2addr v5, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 54
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    div-float/2addr p0, v4

    sub-float/2addr v3, p0

    float-to-int p0, v3

    const/4 p2, 0x0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    .line 55
    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->left:I

    if-le p1, p3, :cond_1

    goto :goto_1

    :cond_1
    move p3, p1

    .line 56
    :goto_1
    iput p3, v0, Landroid/graphics/Rect;->right:I

    if-le v2, p4, :cond_2

    goto :goto_2

    :cond_2
    move p4, v2

    .line 57
    :goto_2
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move p0, p2

    .line 58
    :goto_3
    iput p0, v0, Landroid/graphics/Rect;->top:I

    return-object v0
.end method
