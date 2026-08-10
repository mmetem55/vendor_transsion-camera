.class public Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;
.super Ljava/lang/Object;
.source "BefGazeEstimationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;
    }
.end annotation


# instance fields
.field faceCount:I

.field infos:[Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceCount()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;->faceCount:I

    return p0
.end method

.method public getInfos()[Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo;->infos:[Lcom/bytedance/labcv/effectsdk/BefGazeEstimationInfo$BefGazeEstimation;

    return-object p0
.end method
