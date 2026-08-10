.class public Lcom/bytedance/labcv/effectsdk/HumanDistance;
.super Ljava/lang/Object;
.source "HumanDistance.java"


# instance fields
.field private inited:Z

.field private mNativeDistPtr:J

.field private mNativeFaceAttrPtr:J

.field private mNativeFacePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "effect"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILjava/lang/String;ZLcom/bytedance/labcv/effectsdk/BefDistanceInfo;)I
.end method

.method private native nativeLoadModel(ILjava/lang/String;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetParam(IF)I
.end method


# virtual methods
.method public detectDistance(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILjava/lang/String;ZLcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;
    .locals 11

    .line 93
    new-instance v10, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;

    invoke-direct {v10}, Lcom/bytedance/labcv/effectsdk/BefDistanceInfo;-><init>()V

    .line 94
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v0, p8

    iget v6, v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILjava/lang/String;ZLcom/bytedance/labcv/effectsdk/BefDistanceInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeDetect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v10
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 65
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    if-nez v0, :cond_4

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->nativeCreateHandle(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string p3, "bef_effect_ai"

    if-eqz p2, :cond_0

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "nativeCreateHandle fail!! return "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 47
    :cond_0
    invoke-direct {p0, p1, p5, p6}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeCheckLicense fail!! return "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 53
    :cond_1
    sget-object p1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->BEF_HUMAN_DISTANCE_MODEL1:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;

    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HumanDistanceModelType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p4}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->nativeLoadModel(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeLoadModel fail!! return "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_2
    if-nez p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 59
    :goto_0
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public isInited()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    return p0
.end method

.method public release()V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    return-void
.end method

.method public setParam(IF)I
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HumanDistance;->inited:Z

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 106
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/HumanDistance;->nativeSetParam(IF)I

    move-result p0

    if-eqz p0, :cond_1

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeSetParam return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bef_effect_ai"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method
