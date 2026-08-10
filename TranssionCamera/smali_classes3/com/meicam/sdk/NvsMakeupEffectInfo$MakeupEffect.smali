.class public Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;
.super Ljava/lang/Object;
.source "NvsMakeupEffectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMakeupEffectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeupEffect"
.end annotation


# instance fields
.field public color:Lcom/meicam/sdk/NvsColor;

.field public effectId:Ljava/lang/String;

.field public intensity:F

.field private makeupEffectLayerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->makeupEffectLayerArray:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMakeupEffectLayer(Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->makeupEffectLayerArray:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColor()Lcom/meicam/sdk/NvsColor;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->color:Lcom/meicam/sdk/NvsColor;

    return-object p0
.end method

.method public getEffectId()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->effectId:Ljava/lang/String;

    return-object p0
.end method

.method public getIntensity()F
    .locals 0

    .line 87
    iget p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->intensity:F

    return p0
.end method

.method public getMakeupEffectLayerArray()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->makeupEffectLayerArray:Ljava/util/List;

    return-object p0
.end method

.method public removeMakeupEffectLayerByIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->makeupEffectLayerArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffect;->makeupEffectLayerArray:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
