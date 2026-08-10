.class public Lcom/bytedance/labcv/effectsdk/SkeletonDetect;
.super Ljava/lang/Object;
.source "SkeletonDetect.java"


# instance fields
.field private final MaxSkeletonNum:I

.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->MaxSkeletonNum:I

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefSkeletonInfo;)I
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetDetectionInput(II)I
.end method

.method private native nativeSetTrackingInput(II)I
.end method

.method private native nativeTargetNum(I)I
.end method


# virtual methods
.method public detectSkeleton(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;
    .locals 10

    move-object v0, p0

    .line 95
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 99
    :cond_0
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;-><init>()V

    .line 100
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

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefSkeletonInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 103
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

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 44
    invoke-direct {p0, p2}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeInit(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 46
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    return p2

    :cond_0
    if-eqz p2, :cond_1

    .line 50
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    .line 53
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    return p1

    :cond_2
    const/4 p1, 0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeTargetNum(I)I

    move-result p2

    if-eqz p2, :cond_3

    .line 61
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    return p2

    .line 65
    :cond_3
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    return p2
.end method

.method public isInited()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->mInited:Z

    return-void
.end method

.method public setDetectionInput(II)I
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeSetDetectionInput(II)I

    move-result p0

    return p0
.end method

.method public setTargetNum(I)I
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeTargetNum(I)I

    move-result p0

    return p0
.end method

.method public setTrackingInput(II)I
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/SkeletonDetect;->nativeSetTrackingInput(II)I

    move-result p0

    return p0
.end method
