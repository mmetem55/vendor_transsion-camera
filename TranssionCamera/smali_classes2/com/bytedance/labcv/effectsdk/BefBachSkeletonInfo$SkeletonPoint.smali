.class public Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;
.super Ljava/lang/Object;
.source "BefBachSkeletonInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkeletonPoint"
.end annotation


# instance fields
.field is_detect:Z

.field score:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFZF)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->x:F

    .line 112
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->y:F

    .line 113
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->is_detect:Z

    .line 114
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->score:F

    return-void
.end method


# virtual methods
.method public asPoint()Landroid/graphics/PointF;
    .locals 2

    .line 142
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->x:F

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getScore()F
    .locals 0

    .line 145
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->score:F

    return p0
.end method

.method public getX()F
    .locals 0

    .line 126
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 134
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->y:F

    return p0
.end method

.method public isDetect()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->is_detect:Z

    return p0
.end method

.method public setIs_detect(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->is_detect:Z

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacePoint{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isdetect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;->is_detect:Z

    .line 152
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
