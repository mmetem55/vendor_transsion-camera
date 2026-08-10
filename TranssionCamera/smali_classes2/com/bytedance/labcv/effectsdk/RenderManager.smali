.class public Lcom/bytedance/labcv/effectsdk/RenderManager;
.super Ljava/lang/Object;
.source "RenderManager.java"


# instance fields
.field private volatile mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "effect"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatErrorCode(I)Ljava/lang/String;
    .locals 0

    .line 643
    invoke-static {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeFormatErrorCode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private native nativeAlgorithmBuffer(Ljava/nio/ByteBuffer;IIIIID)I
.end method

.method private native nativeAlgorithmTextureWithBuffer(ILjava/nio/ByteBuffer;IIIIID)I
.end method

.method private native nativeAppendComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeCleanPipeline()I
.end method

.method private native nativeDeviceConfig(ZZZZ)I
.end method

.method private static native nativeFormatErrorCode(I)Ljava/lang/String;
.end method

.method private native nativeGetAvailableFeatures([Ljava/lang/String;)I
.end method

.method private native nativeGetCapturedImageWithKey(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefCapturedImageInfo;)I
.end method

.method private native nativeGetFaceDetectResult(Lcom/bytedance/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeGetFaceMaskResult(ILcom/bytedance/labcv/effectsdk/BefFaceInfo;)I
.end method

.method private native nativeGetHandDetectResult(Lcom/bytedance/labcv/effectsdk/BefHandInfo;)I
.end method

.method private native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private native nativeGetSkeletonDetectResult(Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;)I
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)I
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I
.end method

.method private native nativeLoadWithTimeout(I)I
.end method

.method private native nativeOnAcceleratorChanged(DDDD)I
.end method

.method private native nativeOnGravityChanged(DDDD)I
.end method

.method private native nativeOnGyroscopeChanged(DDDD)I
.end method

.method private native nativeOnOrientationChanged([DID)I
.end method

.method private native nativeProcess(IIIIID)I
.end method

.method private native nativeProcessBuffer(Ljava/nio/ByteBuffer;IIIII[BID)I
.end method

.method private native nativeProcessGesture(IFFFFF)I
.end method

.method private native nativeProcessTexture(IIIIID)I
.end method

.method private native nativeProcessTouch(IFFFFII)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeRemoveComposerNodes([Ljava/lang/String;)I
.end method

.method private native nativeScaleSlam(F)I
.end method

.method private native nativeSendMessage(IJJLjava/lang/String;)I
.end method

.method private native nativeSet3buffer(Z)I
.end method

.method private native nativeSetAlgorithmForceDetect(Z)I
.end method

.method private native nativeSetBeauty(Ljava/lang/String;)I
.end method

.method private native nativeSetCameraPosition(Z)I
.end method

.method private native nativeSetComposer(Ljava/lang/String;)I
.end method

.method private native nativeSetComposerMode(II)I
.end method

.method private native nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeSetDeviceRotation([F)I
.end method

.method private native nativeSetFilter(Ljava/lang/String;)I
.end method

.method private native nativeSetImageMode(Z)I
.end method

.method private native nativeSetMakeUp(Ljava/lang/String;)I
.end method

.method private native nativeSetPipeline(Z)I
.end method

.method private native nativeSetRenderAPI(I)I
.end method

.method private native nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIII)I
.end method

.method private native nativeSetReshape(Ljava/lang/String;)I
.end method

.method private native nativeSetSticker(Ljava/lang/String;)I
.end method

.method private native nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeUpdateIntensity(IF)I
.end method

.method private native nativeUpdateReshape(FF)I
.end method

.method private native nativeUseBuiltinSensor(Z)I
.end method


# virtual methods
.method public SetFaceForceDetect(Z)I
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetAlgorithmForceDetect(Z)I

    move-result p0

    return p0
.end method

.method public algorithmBuffer(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;IIIIJ)Z
    .locals 10

    move-object v0, p0

    .line 249
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v9, 0x0

    if-nez v1, :cond_0

    return v9

    :cond_0
    move-object v1, p2

    .line 252
    iget v2, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-wide/from16 v3, p7

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeAlgorithmBuffer(Ljava/nio/ByteBuffer;IIIIID)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x1

    :cond_1
    return v9
.end method

.method public algorithmTextureWithBuffer(ILjava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;IIIIJ)Z
    .locals 11

    move-object v0, p0

    .line 271
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v10, 0x0

    if-nez v1, :cond_0

    return v10

    :cond_0
    move-object v1, p3

    .line 274
    iget v3, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-wide/from16 v1, p8

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide v8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeAlgorithmTextureWithBuffer(ILjava/nio/ByteBuffer;IIIIID)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v10, 0x1

    :cond_1
    return v10
.end method

.method public appendComposerNodes([Ljava/lang/String;)I
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeAppendComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cleanPipeline()Z
    .locals 2

    .line 333
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeCleanPipeline()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public deviceConfig(ZZZZ)I
    .locals 0

    .line 647
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public getAvailableFeatures([Ljava/lang/String;)Z
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetAvailableFeatures([Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCapturedImageWithKey(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefCapturedImageInfo;)I
    .locals 0

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetCapturedImageWithKey(Ljava/lang/String;Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BefPublicDefine$BefCapturedImageInfo;)I

    move-result p0

    return p0
.end method

.method public getFaceDetectResult()Lcom/bytedance/labcv/effectsdk/BefFaceInfo;
    .locals 3

    .line 506
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 508
    :cond_0
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/BefFaceInfo;-><init>()V

    .line 509
    invoke-direct {p0, v0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetFaceDetectResult(Lcom/bytedance/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetFaceDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getFaceMaskResult(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;Lcom/bytedance/labcv/effectsdk/BefFaceInfo;)V
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetFaceMaskResult(ILcom/bytedance/labcv/effectsdk/BefFaceInfo;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 528
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceMaskResult type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " return "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_effect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getHandDetectResult()Lcom/bytedance/labcv/effectsdk/BefHandInfo;
    .locals 3

    .line 537
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 539
    :cond_0
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BefHandInfo;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/BefHandInfo;-><init>()V

    .line 540
    invoke-direct {p0, v0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetHandDetectResult(Lcom/bytedance/labcv/effectsdk/BefHandInfo;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetHandDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSkeletonDetectResult()Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;
    .locals 3

    .line 552
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 554
    :cond_0
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;

    invoke-direct {v0}, Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;-><init>()V

    .line 555
    invoke-direct {p0, v0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeGetSkeletonDetectResult(Lcom/bytedance/labcv/effectsdk/BefSkeletonInfo;)I

    move-result p0

    if-eqz p0, :cond_1

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetSkeletonDetectResult return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bef_effect_ai"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getSurfaceTimeStamp(J)D
    .locals 10

    .line 486
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v2, v0, p1

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    sub-long/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 490
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-double p0, v0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/labcv/effectsdk/RenderManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)I
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 71
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 72
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    move v1, p1

    :cond_1
    return v1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/labcv/effectsdk/RenderManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZI)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 53
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    move v1, p1

    :cond_1
    return v1
.end method

.method public isInited()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    return p0
.end method

.method public loadResourceWithTimeout(I)Z
    .locals 2

    .line 221
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeLoadWithTimeout(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onAcceleratorChanged(DDDD)I
    .locals 0

    .line 655
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeOnAcceleratorChanged(DDDD)I

    move-result p0

    return p0
.end method

.method public onGravityChanged(DDDD)I
    .locals 0

    .line 659
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeOnGravityChanged(DDDD)I

    move-result p0

    return p0
.end method

.method public onGyroscopeChanged(DDDD)I
    .locals 0

    .line 663
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeOnGyroscopeChanged(DDDD)I

    move-result p0

    return p0
.end method

.method public onOrientationChanged([DID)I
    .locals 0

    .line 651
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeOnOrientationChanged([DID)I

    move-result p0

    return p0
.end method

.method public processBuffer(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;IIII[BI)Z
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 374
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v11, 0x0

    if-nez v1, :cond_0

    return v11

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-double v9, v1

    move-object v1, p2

    .line 378
    iget v2, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeProcessBuffer(Ljava/nio/ByteBuffer;IIIII[BID)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v11, 0x1

    :cond_1
    return v11
.end method

.method public processGesture(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;FFFFF)I
    .locals 7

    .line 587
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$GestureEventCode;->getCode()I

    move-result v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeProcessGesture(IFFFFF)I

    move-result p0

    return p0
.end method

.method public processTexture(IIIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;J)Z
    .locals 9

    move-object v0, p0

    .line 352
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return v8

    :cond_0
    move-object v1, p5

    .line 355
    iget v5, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-wide v1, p6

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeProcess(IIIIID)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    return v8
.end method

.method public processTextureOnly(IIIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;J)Z
    .locals 9

    move-object v0, p0

    .line 290
    iget-boolean v1, v0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return v8

    :cond_0
    move-object v1, p5

    .line 293
    iget v5, v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-wide v1, p6

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->getSurfaceTimeStamp(J)D

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeProcessTexture(IIIIID)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    return v8
.end method

.method public processTouch(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;FFFFII)I
    .locals 8

    .line 574
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TouchEventCode;->getCode()I

    move-result v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeProcessTouch(IFFFFII)I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeRelease()V

    :cond_0
    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    return-void
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .locals 0

    .line 464
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeRemoveComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public scaleSlam(F)I
    .locals 0

    .line 672
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeScaleSlam(F)I

    move-result p0

    return p0
.end method

.method public sendMessage(IJJLjava/lang/String;)V
    .locals 0

    .line 598
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSendMessage(IJJLjava/lang/String;)I

    return-void
.end method

.method public set3Buffer(Z)Z
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSet3buffer(Z)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setBeauty(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetBeauty(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setCameraPostion(Z)Z
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetCameraPosition(Z)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setComposer(Ljava/lang/String;)I
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetComposer(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerMode(II)I
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-direct {p0, p1, v0}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTags([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetComposerNodes([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setDeviceRotation([F)I
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetDeviceRotation([F)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 179
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetFilter(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setImageMode(Z)Z
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetImageMode(Z)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setMakeUp(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 197
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetMakeUp(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setPipeline(Z)Z
    .locals 2

    .line 305
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetPipeline(Z)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setRenderAPI(I)Z
    .locals 0

    .line 402
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetRenderAPI(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setRenderCacheTextureWithBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)I
    .locals 8

    .line 623
    invoke-virtual {p6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v6

    iget v7, p7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetRenderCacheTexture(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIII)I

    move-result p0

    return p0
.end method

.method public setReshape(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 164
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetReshape(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setSticker(Ljava/lang/String;)Z
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/RenderManager;->mInited:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeSetSticker(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public updateComposerNodes(Ljava/lang/String;Ljava/lang/String;F)I
    .locals 0

    .line 476
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeUpdateComposer(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateIntensity(IF)Z
    .locals 0

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeUpdateIntensity(IF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateReshape(FF)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeUpdateReshape(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public useBuiltinSensor(Z)I
    .locals 0

    .line 676
    invoke-direct {p0, p1}, Lcom/bytedance/labcv/effectsdk/RenderManager;->nativeUseBuiltinSensor(Z)I

    move-result p0

    return p0
.end method
