.class public Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;
.super Ljava/lang/Object;
.source "BefVideoClsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefVideoClsType"
.end annotation


# instance fields
.field confidence:F

.field id:I

.field thres:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 0

    .line 64
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->confidence:F

    return p0
.end method

.method public getId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->id:I

    return p0
.end method

.method public getThres()F
    .locals 0

    .line 68
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->thres:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefVideoClsType{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", thres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoClsInfo$BefVideoClsType;->thres:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
