.class public Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
.super Ljava/lang/Object;
.source "BefFaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;,
        Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;,
        Lcom/bytedance/labcv/effectsdk/BefFaceInfo$ExtraInfo;,
        Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;,
        Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;,
        Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;
    }
.end annotation


# instance fields
.field private attris:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;

.field private extras:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$ExtraInfo;

.field private face106s:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

.field private faceMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

.field private mouthMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

.field private teethMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttris()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->attris:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;

    :cond_0
    return-object p0
.end method

.method public getExtras()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$ExtraInfo;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->extras:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$ExtraInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefFaceInfo$ExtraInfo;

    :cond_0
    return-object p0
.end method

.method public getFace106s()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->face106s:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

    :goto_0
    return-object p0
.end method

.method public getFaceMaskInfo()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->faceMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    :cond_0
    return-object p0
.end method

.method public getMouthMaskInfo()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->mouthMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    :cond_0
    return-object p0
.end method

.method public getTeethMaskInfo()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->teethMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefFaceInfo{face106s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->face106s:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->extras:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$ExtraInfo;

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->attris:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceAttri;

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mouthMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->mouthMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", teethMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->teethMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    .line 88
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;->faceMask:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceMaskInfo;

    .line 89
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
