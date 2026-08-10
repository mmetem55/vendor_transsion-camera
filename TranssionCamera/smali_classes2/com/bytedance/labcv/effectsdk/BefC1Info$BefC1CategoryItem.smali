.class public Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;
.super Ljava/lang/Object;
.source "BefC1Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefC1Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefC1CategoryItem"
.end annotation


# instance fields
.field id:I

.field prob:F

.field satisfied:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->id:I

    return p0
.end method

.method public getProb()F
    .locals 0

    .line 67
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->prob:F

    return p0
.end method

.method public isSatisfied()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->satisfied:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefC1CategoryItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->prob:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", satisfied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefC1Info$BefC1CategoryItem;->satisfied:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
