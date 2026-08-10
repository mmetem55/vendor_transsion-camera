.class public Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;
.super Ljava/lang/Object;
.source "BefDistanceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefDistanceInfo$BefDistance;
    }
.end annotation


# instance fields
.field private dists:[F

.field private faceCount:I

.field private faceRects:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBefDistance()[Lcom/bytedance/labcv/effectsdk/BefDistanceInfo$BefDistance;
    .locals 5

    .line 24
    iget v0, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->faceCount:I

    new-array v0, v0, [Lcom/bytedance/labcv/effectsdk/BefDistanceInfo$BefDistance;

    const/4 v1, 0x0

    .line 26
    :goto_0
    iget v2, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->faceCount:I

    if-ge v1, v2, :cond_0

    .line 27
    new-instance v2, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo$BefDistance;

    iget-object v3, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->faceRects:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->dists:[F

    aget v4, v4, v1

    invoke-direct {v2, v3, v4}, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo$BefDistance;-><init>(Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;F)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDists()[F
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->dists:[F

    return-object p0
.end method

.method public getFaceCount()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->faceCount:I

    return p0
.end method

.method public getFaceRects()[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;->faceRects:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
