.class public Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;
.super Ljava/lang/Object;
.source "BefPublicDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefPublicDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefPointF"
.end annotation


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->x:F

    .line 99
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 0

    .line 103
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 111
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->y:F

    return p0
.end method

.method public setX(F)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefPointF{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefPointF;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
