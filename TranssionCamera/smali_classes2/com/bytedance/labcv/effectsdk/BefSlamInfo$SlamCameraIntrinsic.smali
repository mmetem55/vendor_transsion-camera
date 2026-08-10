.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlamCameraIntrinsic"
.end annotation


# instance fields
.field public cx:F

.field public cy:F

.field public fx:F

.field public fy:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;->fx:F

    .line 165
    iput p2, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;->fy:F

    .line 166
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;->cx:F

    .line 167
    iput p4, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamCameraIntrinsic;->cy:F

    return-void
.end method
