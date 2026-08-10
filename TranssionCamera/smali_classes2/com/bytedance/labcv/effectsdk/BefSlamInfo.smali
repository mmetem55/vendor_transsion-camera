.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraInfo;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuData;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;,
        Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;
    }
.end annotation


# instance fields
.field public cameraPose:Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;

.field public featurePoints:[Lcom/bytedance/labcv/effectsdk/BefSlamInfo$Points;

.field public intrinsic:Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;

.field public isClicked:Z

.field public planeInfo:Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPlane;

.field public planePose:Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamPose;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
