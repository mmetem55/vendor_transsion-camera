.class public Lcom/bytedance/labcv/effectsdk/BefFaceFeature;
.super Ljava/lang/Object;
.source "BefFaceFeature.java"


# instance fields
.field private baseInfo:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

.field private features:[[F

.field private validFaceNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseInfo()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceFeature;->baseInfo:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

    return-object p0
.end method

.method public getFeatures()[[F
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceFeature;->features:[[F

    return-object p0
.end method

.method public getValidFaceNum()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceFeature;->validFaceNum:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefFaceFeature{ validFaceNum ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceFeature;->validFaceNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " baseInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceFeature;->baseInfo:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " features ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceFeature;->features:[[F

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
