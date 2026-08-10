.class public Lcom/bytedance/labcv/effectsdk/BefHandInfo;
.super Ljava/lang/Object;
.source "BefHandInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefKeyPoint;,
        Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;
    }
.end annotation


# instance fields
.field private handCount:I

.field private hands:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo;->handCount:I

    return-void
.end method


# virtual methods
.method public getHandCount()I
    .locals 0

    .line 20
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo;->handCount:I

    return p0
.end method

.method public getHands()[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo;->hands:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BefHandInfo{hands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo;->hands:[Lcom/bytedance/labcv/effectsdk/BefHandInfo$BefHand;

    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", handCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefHandInfo;->handCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
