.class public Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;
.super Ljava/lang/Object;
.source "BefCarDetectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;,
        Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefCarRect;
    }
.end annotation


# instance fields
.field private blurScore:D

.field private brandCount:I

.field private brandInfos:[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;

.field private carCount:I

.field private carRects:[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefCarRect;

.field private grayScore:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->carCount:I

    .line 5
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->brandCount:I

    return-void
.end method


# virtual methods
.method public getBlurScore()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->blurScore:D

    return-wide v0
.end method

.method public getBrandCount()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->brandCount:I

    return p0
.end method

.method public getBrandInfos()[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->brandInfos:[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;

    return-object p0
.end method

.method public getCarCount()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->carCount:I

    return p0
.end method

.method public getCarRects()[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefCarRect;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->carRects:[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefCarRect;

    return-object p0
.end method

.method public getGrayScore()D
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->grayScore:D

    return-wide v0
.end method

.method public setBrandCount(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->brandCount:I

    return-void
.end method

.method public setBrandInfos([Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->brandInfos:[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefBrandInfo;

    return-void
.end method

.method public setCarCount(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->carCount:I

    return-void
.end method

.method public setCarRects([Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefCarRect;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo;->carRects:[Lcom/bytedance/labcv/effectsdk/BefCarDetectInfo$BefCarRect;

    return-void
.end method
