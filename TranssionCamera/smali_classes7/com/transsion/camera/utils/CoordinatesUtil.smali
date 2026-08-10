.class public Lcom/transsion/camera/utils/CoordinatesUtil;
.super Ljava/lang/Object;
.source "CoordinatesUtil.java"


# static fields
.field private static final REFERENCE_RECT:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/utils/CoordinatesUtil;->REFERENCE_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public static getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    if-eqz p0, :cond_3

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    .line 139
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v3, v2, p1

    float-to-double v3, v3

    cmpl-double v3, v3, v0

    if-ltz v3, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 143
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 144
    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_1
    sub-float v2, p1, v2

    float-to-double v2, v2

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 148
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    .line 149
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v2, p1, p0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getReferenceToSensorMatrix(Landroid/graphics/Rect;ZI)Landroid/graphics/Matrix;
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, p2

    .line 100
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    rsub-int p1, p2, 0x168

    int-to-float p1, p1

    .line 103
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 106
    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 107
    sget-object p2, Lcom/transsion/camera/utils/CoordinatesUtil;->REFERENCE_RECT:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, p0, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 108
    invoke-virtual {v0, p1, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method private static getSensorToPreviewMatrix(Landroid/graphics/Rect;II)Landroid/graphics/Matrix;
    .locals 3

    .line 115
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 117
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 118
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p0, v1, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    return-object v0
.end method

.method private static getViewToReferenceMatrix(II)Landroid/graphics/Matrix;
    .locals 3

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p0, p0

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 81
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 84
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    sget-object v1, Lcom/transsion/camera/utils/CoordinatesUtil;->REFERENCE_RECT:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 88
    invoke-virtual {p0, p1, p0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return-object p0
.end method

.method private static inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .line 123
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 124
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static referenceToSensorSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 41
    invoke-static {p3, p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getReferenceToSensorMatrix(Landroid/graphics/Rect;ZI)Landroid/graphics/Matrix;

    move-result-object p1

    .line 42
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 43
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 44
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 0

    .line 59
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getViewToReferenceMatrix(II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 62
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 63
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 64
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 65
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static sensorToPreviewSpace(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 0

    .line 70
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/CoordinatesUtil;->getSensorToPreviewMatrix(Landroid/graphics/Rect;II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 72
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 73
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 74
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 75
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static sensorToReferenceSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 49
    invoke-static {p3, p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getReferenceToSensorMatrix(Landroid/graphics/Rect;ZI)Landroid/graphics/Matrix;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/transsion/camera/utils/CoordinatesUtil;->inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 52
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 53
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 54
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 55
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static viewToReferenceSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 0

    .line 30
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getViewToReferenceMatrix(II)Landroid/graphics/Matrix;

    move-result-object p1

    .line 31
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    .line 33
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 35
    invoke-static {p2}, Lcom/transsion/camera/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
