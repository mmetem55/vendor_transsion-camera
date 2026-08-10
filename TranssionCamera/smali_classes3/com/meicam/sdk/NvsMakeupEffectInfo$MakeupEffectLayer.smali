.class public Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;
.super Ljava/lang/Object;
.source "NvsMakeupEffectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meicam/sdk/NvsMakeupEffectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeupEffectLayer"
.end annotation


# instance fields
.field public intensity:F

.field public layerId:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;->type:I

    return-void
.end method


# virtual methods
.method public getIntensity()F
    .locals 0

    .line 125
    iget p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;->intensity:F

    return p0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;->layerId:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/meicam/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;->type:I

    return p0
.end method
