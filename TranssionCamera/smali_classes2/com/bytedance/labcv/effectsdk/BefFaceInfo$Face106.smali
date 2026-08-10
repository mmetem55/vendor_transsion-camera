.class public Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;
.super Ljava/lang/Object;
.source "BefFaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face106"
.end annotation


# instance fields
.field ID:I

.field action:I

.field eye_dist:F

.field pitch:F

.field points_array:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;

.field rect:Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

.field roll:F

.field score:F

.field visibility_array:[F

.field yaw:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 0

    .line 259
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->action:I

    return p0
.end method

.method public getEye_dist()F
    .locals 0

    .line 254
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->eye_dist:F

    return p0
.end method

.method public getID()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->ID:I

    return p0
.end method

.method public getPitch()F
    .locals 0

    .line 244
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->pitch:F

    return p0
.end method

.method public getPoints_array()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->points_array:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;

    return-object p0
.end method

.method public getRect()Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->rect:Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

    return-object p0
.end method

.method public getRoll()F
    .locals 0

    .line 249
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->roll:F

    return p0
.end method

.method public getScore()F
    .locals 0

    .line 224
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->score:F

    return p0
.end method

.method public getVisibility_array()[F
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->visibility_array:[F

    return-object p0
.end method

.method public getYaw()F
    .locals 0

    .line 239
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->yaw:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face106{rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->rect:Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", points_array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->points_array:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;

    .line 273
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", visibility_array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->visibility_array:[F

    .line 274
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", eye_dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->eye_dist:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->ID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
