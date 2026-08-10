.class public Lcom/bytedance/labcv/effectsdk/HeadSegment;
.super Ljava/lang/Object;
.source "HeadSegment.java"


# instance fields
.field private inited:Z

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeInitModel(Ljava/lang/String;)I
.end method

.method private native nativeProcess(Ljava/nio/ByteBuffer;IIIII[[FLcom/bytedance/labcv/effectsdk/BefHeadSegInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParam(IF)I
.end method

.method private serializeFace106([Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;)[[F
    .locals 8

    if-eqz p1, :cond_3

    .line 50
    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_2

    .line 51
    :cond_0
    array-length p0, p1

    const/16 v0, 0xd4

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput p0, v1, v0

    const-class p0, F

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    move v1, v0

    .line 53
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    move v3, v0

    :goto_1
    const/16 v4, 0x6a

    if-ge v3, v4, :cond_1

    .line 55
    aget-object v4, p0, v1

    mul-int/lit8 v5, v3, 0x2

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->points_array:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;

    aget-object v6, v6, v3

    iget v7, v6, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    aput v7, v4, v5

    add-int/2addr v5, v2

    .line 56
    iget v6, v6, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    .line 26
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    if-nez v1, :cond_3

    .line 27
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeCreateHandle()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    :cond_0
    const/4 p1, 0x1

    if-nez v0, :cond_1

    .line 31
    invoke-direct {p0, p2}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeInitModel(Ljava/lang/String;)I

    move-result p2

    .line 32
    sget-object p3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->BEF_AI_HS_ENABLE_TRACKING:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    invoke-virtual {p0, p3, p1}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;I)I

    .line 33
    sget-object p3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->BEF_AI_HS_MAX_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    const/4 p4, 0x2

    invoke-virtual {p0, p3, p4}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;I)I

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInited()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    return p0
.end method

.method public process(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;)Lcom/bytedance/labcv/effectsdk/BefHeadSegInfo;
    .locals 11

    .line 71
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BefHeadSegInfo;

    invoke-direct {v9}, Lcom/bytedance/labcv/effectsdk/BefHeadSegInfo;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p7

    .line 73
    invoke-direct {p0, v1}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->serializeFace106([Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;)[[F

    move-result-object v7

    const/4 v10, 0x0

    if-nez v7, :cond_0

    return-object v10

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v8, v9

    .line 78
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeProcess(Ljava/nio/ByteBuffer;IIIII[[FLcom/bytedance/labcv/effectsdk/BefHeadSegInfo;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "headseg failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_effect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_1
    return-object v9
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeRelease()I

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;I)I
    .locals 0

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->getValue()I

    move-result p1

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeSetParam(IF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
