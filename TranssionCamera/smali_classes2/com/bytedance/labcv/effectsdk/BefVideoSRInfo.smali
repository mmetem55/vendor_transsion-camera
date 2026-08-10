.class public Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;
.super Ljava/lang/Object;
.source "BefVideoSRInfo.java"


# instance fields
.field private destTextureId:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestTextureId()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->destTextureId:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 10
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 9
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->width:I

    return p0
.end method

.method public setDestTextureId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->destTextureId:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefVideoSRInfo{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destTextureID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefVideoSRInfo;->destTextureId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
