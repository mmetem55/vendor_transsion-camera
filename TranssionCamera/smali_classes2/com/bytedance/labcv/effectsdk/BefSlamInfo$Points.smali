.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Points"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->x:F

    .line 182
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 0

    .line 186
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 190
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->y:F

    return p0
.end method

.method public setX(F)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Points{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
