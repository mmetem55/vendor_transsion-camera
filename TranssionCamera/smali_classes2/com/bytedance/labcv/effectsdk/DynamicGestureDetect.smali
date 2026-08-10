.class public Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;
.super Ljava/lang/Object;
.source "DynamicGestureDetect.java"


# instance fields
.field private final MaxGestureNum:I

.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->MaxGestureNum:I

    return-void
.end method

.method private native nativeCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParamF(IF)I
.end method

.method private native nativeSetParamI(II)I
.end method

.method private native nativeSetParamS(ILjava/lang/String;)I
.end method


# virtual methods
.method public detect(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;
    .locals 10

    move-object v0, p0

    .line 52
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 53
    :cond_0
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;-><init>()V

    .line 54
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefDynamicGestureInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    return-object v9
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->nativeCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 32
    :goto_0
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->nativeRelease()I

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    return-void
.end method

.method public setParamF(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicGestureParamType;F)I
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicGestureParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->nativeSetParamF(IF)I

    move-result p0

    return p0
.end method

.method public setParamI(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicGestureParamType;I)I
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicGestureParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->nativeSetParamI(II)I

    move-result p0

    return p0
.end method

.method public setParamS(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicGestureParamType;Ljava/lang/String;)I
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->mInited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$DynamicGestureParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/DynamicGestureDetect;->nativeSetParamS(ILjava/lang/String;)I

    move-result p0

    return p0
.end method
