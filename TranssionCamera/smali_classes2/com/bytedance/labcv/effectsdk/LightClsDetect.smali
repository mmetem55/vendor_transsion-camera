.class public Lcom/bytedance/labcv/effectsdk/LightClsDetect;
.super Ljava/lang/Object;
.source "LightClsDetect.java"


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle(Ljava/lang/String;I)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefLightclsInfo;)I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public detectLightCls(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;
    .locals 10

    move-object v0, p0

    .line 50
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 51
    :cond_0
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefLightclsInfo;-><init>()V

    .line 52
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

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefLightclsInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

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

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 0

    .line 26
    invoke-direct {p0, p2, p4}, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->nativeCreateHandle(Ljava/lang/String;I)I

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 28
    iput-boolean p4, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p2

    .line 31
    :cond_0
    invoke-direct {p0, p1, p3, p5}, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iput-boolean p4, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p1

    :cond_1
    const/4 p2, 0x1

    .line 36
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return-void
.end method

.method public setmInited(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/LightClsDetect;->mInited:Z

    return-void
.end method
