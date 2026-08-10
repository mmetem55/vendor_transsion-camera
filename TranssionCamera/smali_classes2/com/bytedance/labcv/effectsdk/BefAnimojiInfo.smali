.class public Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;
.super Ljava/lang/Object;
.source "BefAnimojiInfo.java"


# instance fields
.field affineMat:[F

.field alpha:[F

.field beta:[F

.field faceId:I

.field landmarks:[F

.field mv:[F

.field mvp:[F

.field rot:[F

.field success:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffineMat()[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->affineMat:[F

    return-object p0
.end method

.method public getAlpha()[F
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->alpha:[F

    return-object p0
.end method

.method public getBeta()[F
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->beta:[F

    return-object p0
.end method

.method public getFaceId()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->faceId:I

    return p0
.end method

.method public getLandmarks()[F
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->landmarks:[F

    return-object p0
.end method

.method public getMv()[F
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->mv:[F

    return-object p0
.end method

.method public getMvp()[F
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->mvp:[F

    return-object p0
.end method

.method public getRot()[F
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->rot:[F

    return-object p0
.end method

.method public isSuccess()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->success:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefAnimojiInfo{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->success:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->faceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", affineMat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->affineMat:[F

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->alpha:[F

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefAnimojiInfo;->beta:[F

    .line 62
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
