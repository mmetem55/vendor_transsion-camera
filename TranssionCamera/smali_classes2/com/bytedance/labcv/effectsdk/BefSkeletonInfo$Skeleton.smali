.class public Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$Skeleton;
.super Ljava/lang/Object;
.source "BefSkeletonInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Skeleton"
.end annotation


# instance fields
.field keypoints:[Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;

.field skeletonRect:Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeypoints()[Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$Skeleton;->keypoints:[Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;

    :cond_0
    return-object p0
.end method

.method public getSkeletonRect()Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$Skeleton;->skeletonRect:Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skeleton{keypoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$Skeleton;->keypoints:[Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$SkeletonPoint;

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skeletonRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo$Skeleton;->skeletonRect:Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FaceRect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
