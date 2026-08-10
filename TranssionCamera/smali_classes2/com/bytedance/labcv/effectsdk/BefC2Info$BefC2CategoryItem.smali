.class public Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;
.super Ljava/lang/Object;
.source "BefC2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefC2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefC2CategoryItem"
.end annotation


# instance fields
.field confidence:F

.field id:I

.field index:I

.field satisfied:Z

.field thres:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 0

    .line 64
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->confidence:F

    return p0
.end method

.method public getId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->id:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->index:I

    return p0
.end method

.method public getThres()F
    .locals 0

    .line 68
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->thres:F

    return p0
.end method

.method public isSatisfied()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->satisfied:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefC2CategoryItem{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->thres:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", satisfied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefC2Info$BefC2CategoryItem;->satisfied:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
