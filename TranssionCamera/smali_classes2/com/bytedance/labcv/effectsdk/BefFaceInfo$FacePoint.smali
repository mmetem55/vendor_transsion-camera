.class public Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;
.super Ljava/lang/Object;
.source "BefFaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacePoint"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    .line 99
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    return-void
.end method


# virtual methods
.method public asPoint()Landroid/graphics/PointF;
    .locals 2

    .line 119
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getX()F
    .locals 0

    .line 103
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 111
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    return p0
.end method

.method public setX(F)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacePoint{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
