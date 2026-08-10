.class public Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;
.super Ljava/lang/Object;
.source "BefSlamInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BefSlamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlamClickFlag"
.end annotation


# instance fields
.field public isClicked:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsClicked()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;->isClicked:I

    return p0
.end method

.method public getX()F
    .locals 0

    .line 146
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    .line 154
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;->y:F

    return p0
.end method

.method public setIsClicked(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;->isClicked:I

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefSlamInfo$SlamClickFlag;->y:F

    return-void
.end method
