.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlamPose"
.end annotation


# instance fields
.field R:[F

.field T:[F

.field planeDetected:I

.field timeStamp:D

.field trackingState:I


# direct methods
.method public constructor <init>([F[FIID)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->R:[F

    .line 46
    iput-object p2, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->T:[F

    .line 47
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->planeDetected:I

    .line 48
    iput-wide p5, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->timeStamp:D

    .line 49
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->trackingState:I

    return-void
.end method


# virtual methods
.method public getPlaneDetected()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->planeDetected:I

    return p0
.end method

.method public getR()[F
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->R:[F

    return-object p0
.end method

.method public getT()[F
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->T:[F

    return-object p0
.end method

.method public getTimeStamp()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->timeStamp:D

    return-wide v0
.end method

.method public getTrackingState()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->trackingState:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlamPose{R="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->R:[F

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->T:[F

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", planeDetected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->planeDetected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;->trackingState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
