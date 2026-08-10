.class public Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;
.super Ljava/lang/Object;
.source "BefDynamicGestureInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;
    }
.end annotation


# instance fields
.field private gestureInfos:[Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;

.field private gestureNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureInfos()[Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;->gestureInfos:[Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;

    return-object p0
.end method

.method public getGestureNum()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;->gestureNum:I

    return p0
.end method

.method public setGestureInfos([Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;->gestureInfos:[Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo$GestureInfo;

    return-void
.end method

.method public setGestureNum(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;->gestureNum:I

    return-void
.end method
