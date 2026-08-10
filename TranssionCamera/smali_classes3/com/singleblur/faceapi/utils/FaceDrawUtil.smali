.class public Lcom/singleblur/faceapi/utils/FaceDrawUtil;
.super Ljava/lang/Object;
.source "FaceDrawUtil.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "FaceDrawUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawFace(Landroid/graphics/Canvas;Lcom/singleblur/faceapi/model/FaceInfo;Landroid/graphics/Paint;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-static {p0, v0, p2}, Lcom/singleblur/faceapi/utils/FaceDrawUtil;->drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 49
    iget-object p1, p1, Lcom/singleblur/faceapi/model/FaceInfo;->facePoints:[Landroid/graphics/PointF;

    invoke-static {p0, p1, p2}, Lcom/singleblur/faceapi/utils/FaceDrawUtil;->drawPoints(Landroid/graphics/Canvas;[Landroid/graphics/PointF;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "FaceDrawUtil"

    const-string p1, "drawFace canvas or faces is null !"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static drawFaces(Landroid/graphics/Canvas;[Lcom/singleblur/faceapi/model/FaceInfo;Landroid/graphics/Paint;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 32
    invoke-static {p0, v2, p2}, Lcom/singleblur/faceapi/utils/FaceDrawUtil;->drawFace(Landroid/graphics/Canvas;Lcom/singleblur/faceapi/model/FaceInfo;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p0, "FaceDrawUtil"

    const-string p1, "drawFaces canvas or faces is null !"

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static drawPoints(Landroid/graphics/Canvas;[Landroid/graphics/PointF;Landroid/graphics/Paint;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 75
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v2, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
