.class public Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;
.super Ljava/lang/Object;
.source "BefHandInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefHandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefHand"
.end annotation


# instance fields
.field private action:I

.field private id:I

.field private keyPoints:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;

.field private keyPointsExt:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;

.field private rect:Landroid/graphics/Rect;

.field private rotAngle:F

.field private rotAngleBothhand:F

.field private score:F

.field private seqAction:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->action:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->id:I

    return p0
.end method

.method public getKeyPoints()[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->keyPoints:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;

    return-object p0
.end method

.method public getKeyPointsExt()[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->keyPointsExt:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;

    return-object p0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRotAngle()F
    .locals 0

    .line 90
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->rotAngle:F

    return p0
.end method

.method public getRotAngleBothhand()F
    .locals 0

    .line 98
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->rotAngleBothhand:F

    return p0
.end method

.method public getScore()F
    .locals 0

    .line 94
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->score:F

    return p0
.end method

.method public getSeqAction()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->seqAction:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefHand{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->rotAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotAngleBothhand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->rotAngleBothhand:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", keyPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->keyPoints:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyPointsExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->keyPointsExt:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seqAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;->seqAction:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
