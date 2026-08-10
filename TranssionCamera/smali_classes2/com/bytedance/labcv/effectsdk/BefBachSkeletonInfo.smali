.class public Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;
.super Ljava/lang/Object;
.source "BefBachSkeletonInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$SkeletonPoint;,
        Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;
    }
.end annotation


# instance fields
.field private skeletonNum:I

.field private skeletons:[Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkeletonNum()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;->skeletonNum:I

    return p0
.end method

.method public getSkeletons()[Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;->skeletons:[Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;

    :cond_0
    return-object p0
.end method

.method public setSkeletonNum(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;->skeletonNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefSkeletonInfo{skeletons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;->skeletons:[Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo$Skeleton;

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skeletonNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;->skeletonNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
