.class public Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;
.super Ljava/lang/Object;
.source "BefHandInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefHandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefKeyPoint"
.end annotation


# instance fields
.field is_detect:Z

.field x:F

.field y:F


# direct methods
.method public constructor <init>(FFZ)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->x:F

    .line 139
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->y:F

    .line 140
    iput-boolean p3, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->is_detect:Z

    return-void
.end method


# virtual methods
.method public asPoint()Landroid/graphics/PointF;
    .locals 2

    .line 143
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->x:F

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefKeyPoint { x ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is_detect ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;->is_detect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
