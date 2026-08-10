.class Lcom/transsion/camera/app/common/mode/CameraOutputSurface;
.super Ljava/lang/Object;
.source "CameraOutputSurface.java"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mAuxPreviewHeight:I

.field private mAuxPreviewWidth:I

.field private mAuxSurface:Ljava/lang/Object;

.field private mBackgroundPreviewHeight:I

.field private mBackgroundPreviewWidth:I

.field private mBackgroundSurface:Ljava/lang/Object;

.field private mDataFlowType:I

.field private mDirty:Z

.field private mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mHasRequestedDataChannel:Z

.field private mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mIsPrepareSuccess:Z

.field private mOutputType:I

.field private mPreview:Ljava/lang/Object;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

.field private mVideoFrameRate:I

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideoSurfaceHeight:I

.field private mVideoSurfaceWidth:I

.field private mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OutputSurface"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    .line 21
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 40
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    return-void
.end method

.method private isAuxPreviewDifferent(Ljava/lang/Object;II)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne v0, p1, :cond_1

    .line 190
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isBackgroundPreviewDifferent(Ljava/lang/Object;II)Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne v0, p1, :cond_1

    .line 197
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isPreviewSizeMatch(Landroid/util/Size;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[isSizeMatch] preview size is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isSizeMatch] surface width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " previewSize width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 319
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z
    .locals 2

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSurfaceInfoDifferent type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", oldSurface: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newSurface: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->hasSurface()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p3, p2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p0, p1

    return p0

    .line 211
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized previewReadyForUpdate(Landroid/util/Size;)Z
    .locals 1

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewSizeMatch(Landroid/util/Size;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized videoReadyForUpdate()Z
    .locals 3

    monitor-enter p0

    .line 323
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    monitor-exit p0

    return v2

    .line 325
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public channelReadyForUpdate(Landroid/util/Size;)Z
    .locals 2

    .line 301
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->previewReadyForUpdate(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->videoReadyForUpdate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public declared-synchronized dirty()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 57
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasSetDataChannel()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    return p0
.end method

.method public isPreviewDifferent(Ljava/lang/Object;II)Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne v0, p1, :cond_1

    .line 204
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isVideoSurfaceDifferent(Landroid/view/Surface;II)Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne v0, p1, :cond_1

    .line 140
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    if-eq p0, p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public declared-synchronized requestDataChannel()Lcom/transsion/camera/adapter/CameraDataChannel;
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 273
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    instance-of v3, v2, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 275
    new-instance v2, Landroid/view/Surface;

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    move-object v7, v2

    goto :goto_1

    .line 276
    :cond_0
    instance-of v3, v2, Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_1

    .line 277
    check-cast v2, Landroid/view/SurfaceHolder;

    .line 278
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_2

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    goto :goto_2

    .line 284
    :cond_2
    iput-boolean v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 286
    :goto_2
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 287
    new-instance v0, Landroid/view/Surface;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v4

    .line 289
    :goto_3
    iget-object v0, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    .line 290
    new-instance v0, Landroid/view/Surface;

    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v9, v0

    goto :goto_4

    :cond_4
    move-object v9, v4

    .line 292
    :goto_4
    new-instance v0, Lcom/transsion/camera/adapter/CameraDataChannel;

    iget v6, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    iget-object v10, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    .line 293
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v2, :cond_5

    move-object v11, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v2

    move-object v11, v2

    .line 294
    :goto_5
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v2, :cond_6

    move-object v12, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getBGSurface()Lcom/transsion/camera/adapter/IBGSurface;

    move-result-object v2

    move-object v12, v2

    .line 295
    :goto_6
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v2, :cond_7

    move-object v13, v4

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v13, v2

    .line 296
    :goto_7
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    if-nez v2, :cond_8

    :goto_8
    move-object v14, v4

    goto :goto_9

    :cond_8
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v4

    goto :goto_8

    :goto_9
    iget v15, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    iget v2, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    iget v3, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    iget-boolean v4, v1, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    move-object v5, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-direct/range {v5 .. v18}, Lcom/transsion/camera/adapter/CameraDataChannel;-><init>(ILandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/transsion/camera/adapter/IBGSurface;Lcom/transsion/camera/adapter/IBGSurface;Landroid/view/Surface;Landroid/view/Surface;IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    .line 64
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    .line 65
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    .line 66
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    .line 67
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    .line 68
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I

    .line 69
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    .line 70
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    .line 72
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 73
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 74
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 75
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 77
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 79
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 80
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 82
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetRequestedDataChannelMember()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTagValue(Ljava/lang/String;)V
    .locals 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OutputSurface_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updateAuxPreviewSurface(Ljava/lang/Object;II)Z
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isAuxPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAuxPreviewSurface mAuxSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAuxPreviewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newAuxSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxSurface:Ljava/lang/Object;

    .line 148
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewWidth:I

    .line 149
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mAuxPreviewHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 152
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 154
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateBackgroundPreviewSurface(Ljava/lang/Object;II)Z
    .locals 3

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isBackgroundPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBackgroundPreviewSurface mBackgroundSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundPreviewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBackgroundPreviewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newBackgroundSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundSurface:Ljava/lang/Object;

    .line 164
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewWidth:I

    .line 165
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mBackgroundPreviewHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 166
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 168
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateDataFlowType(I)V
    .locals 3

    monitor-enter p0

    .line 101
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDataFlowType:I

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    const/4 v1, 0x0

    .line 106
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 107
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 108
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 109
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataFlowType, new dataFlow type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateFastThumbSurface(Landroid/view/Surface;III)Z
    .locals 2

    monitor-enter p0

    .line 257
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;)V

    const-string p1, "fastThumb"

    .line 258
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 259
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mFastThumbSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 260
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 262
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFastThumbSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return p1

    .line 265
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z
    .locals 2

    monitor-enter p0

    .line 221
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    const-string p1, "jpeg"

    .line 222
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 223
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 224
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 226
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImageSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return p1

    .line 229
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updatePreviewSurface(Ljava/lang/Object;II)Z
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isPreviewDifferent(Ljava/lang/Object;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreviewSurface mPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreview:Ljava/lang/Object;

    .line 176
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewWidth:I

    .line 177
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mPreviewHeight:I

    .line 178
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewSurface, new surface width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return p1

    .line 183
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateThumbnailSurface(Landroid/view/Surface;III)Z
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILandroid/view/Surface;)V

    const-string p1, "thumbnail"

    .line 246
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 247
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mThumbnailSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 248
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 250
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThumbnailSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return p1

    .line 253
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateType(I)V
    .locals 3

    monitor-enter p0

    .line 86
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    if-eq v0, p1, :cond_0

    .line 87
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mOutputType:I

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    const/4 v1, 0x0

    .line 91
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 92
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 93
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 94
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateType, new type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateVideoSurface(Landroid/view/Surface;IIIZ)Z
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isVideoSurfaceDifferent(Landroid/view/Surface;II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    iput p2, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoFrameRate:I

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurface:Landroid/view/Surface;

    .line 124
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mIsPrepareSuccess:Z

    .line 125
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceWidth:I

    .line 126
    iput p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mVideoSurfaceHeight:I

    .line 127
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 129
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", videoFrameRate:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return p1

    .line 133
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateYuvImageSurface(Lcom/transsion/camera/adapter/IBGSurface;III)Z
    .locals 2

    monitor-enter p0

    .line 233
    :try_start_0
    new-instance v0, Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/transsion/camera/app/common/mode/SurfaceInfo;-><init>(IIILcom/transsion/camera/adapter/IBGSurface;)V

    const-string p1, "yuv"

    .line 234
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->isSurfaceInfoDifferent(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/SurfaceInfo;Lcom/transsion/camera/app/common/mode/SurfaceInfo;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 235
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mYuvImageSurfaceInfo:Lcom/transsion/camera/app/common/mode/SurfaceInfo;

    .line 236
    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mHasRequestedDataChannel:Z

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->mDirty:Z

    .line 238
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateYuvImageSurface, new surface width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return p1

    .line 241
    :cond_0
    monitor-exit p0

    return p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
