.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlamImuInfo"
.end annotation


# instance fields
.field hasAccelerometer:I

.field hasGravity:I

.field hasGyroscope:I

.field hasOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setHasAccelerometer(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;->hasAccelerometer:I

    return-void
.end method

.method public setHasGravity(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;->hasGravity:I

    return-void
.end method

.method public setHasGyroscope(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;->hasGyroscope:I

    return-void
.end method

.method public setHasOrientation(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamImuInfo;->hasOrientation:I

    return-void
.end method
