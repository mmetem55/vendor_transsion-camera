.class public Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;
.super Ljava/lang/Object;
.source "BefGazeEstimationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BefGazeEstimation"
.end annotation


# instance fields
.field faceId:J

.field head_r:[F

.field head_t:[F

.field leye_gaze:[F

.field leye_gaze_2d:[F

.field leye_pos:[F

.field leye_pos2d:[F

.field mid_gaze:[F

.field reye_gaze:[F

.field reye_gaze2d:[F

.field reye_pos:[F

.field reye_pos2d:[F

.field valid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->faceId:J

    return-wide v0
.end method

.method public getHead_r()[F
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->head_r:[F

    return-object p0
.end method

.method public getHead_t()[F
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->head_t:[F

    return-object p0
.end method

.method public getLeye_gaze()[F
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->leye_gaze:[F

    return-object p0
.end method

.method public getLeye_gaze_2d()[F
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->leye_gaze_2d:[F

    return-object p0
.end method

.method public getLeye_pos()[F
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->leye_pos:[F

    return-object p0
.end method

.method public getLeye_pos2d()[F
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->leye_pos2d:[F

    return-object p0
.end method

.method public getMid_gaze()[F
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->mid_gaze:[F

    return-object p0
.end method

.method public getReye_gaze()[F
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->reye_gaze:[F

    return-object p0
.end method

.method public getReye_gaze2d()[F
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->reye_gaze2d:[F

    return-object p0
.end method

.method public getReye_pos()[F
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->reye_pos:[F

    return-object p0
.end method

.method public getReye_pos2d()[F
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->reye_pos2d:[F

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;->valid:Z

    return p0
.end method
