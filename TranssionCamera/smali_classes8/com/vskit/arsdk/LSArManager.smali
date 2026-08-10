.class public Lcom/vskit/arsdk/LSArManager;
.super Ljava/lang/Object;
.source "LSArManager.java"

# interfaces
.implements Lcom/vskit/arsdk/portal/ARIManager;
.implements Lcom/vskit/arsdk/portal/ARCallback;


# instance fields
.field private m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

.field private mAlphaFilter:Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

.field private mCallback:Lcom/vskit/arsdk/portal/ARCallback;

.field private mCameraType:I

.field private mContext:Landroid/content/Context;

.field private mEffect:Lcom/faceunity/entity/Effect;

.field private mFURenderer:Lcom/faceunity/FURenderer;

.field private mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

.field private mMatrix:[F

.field private mMatrix2:[F

.field private mNoneEffect:Lcom/faceunity/entity/Effect;

.field private final mObject:Ljava/lang/Object;

.field private final mReleaseObj:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSpiltType:I

.field private mTextureId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/vskit/arsdk/LSArManager;->mSpiltType:I

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    .line 43
    iput v0, p0, Lcom/vskit/arsdk/LSArManager;->mCameraType:I

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mReleaseObj:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 48
    iput-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mMatrix:[F

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mMatrix2:[F

    return-void
.end method

.method static synthetic access$000(Lcom/vskit/arsdk/LSArManager;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    return p0
.end method

.method static synthetic access$002(Lcom/vskit/arsdk/LSArManager;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    return p1
.end method

.method static synthetic access$102(Lcom/vskit/arsdk/LSArManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vskit/arsdk/LSArManager;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method private createFURenderer(Landroid/content/Context;)Lcom/faceunity/FURenderer;
    .locals 1

    .line 63
    new-instance v0, Lcom/faceunity/FURenderer$Builder;

    invoke-direct {v0, p1}, Lcom/faceunity/FURenderer$Builder;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {v0, p1}, Lcom/faceunity/FURenderer$Builder;->inputTextureType(I)Lcom/faceunity/FURenderer$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/faceunity/FURenderer$Builder;->setLoadAiHandProcessor(Z)Lcom/faceunity/FURenderer$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Lcom/faceunity/FURenderer$Builder;->setOnFUDebugListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p0}, Lcom/faceunity/FURenderer$Builder;->setOnTrackingStatusChangedListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p0}, Lcom/faceunity/FURenderer$Builder;->setOnBundleLoadCompleteListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, p0}, Lcom/faceunity/FURenderer$Builder;->setOnSystemErrorListener(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/faceunity/FURenderer$Builder;->build()Lcom/faceunity/FURenderer;

    move-result-object p0

    return-object p0
.end method

.method private handlerRunnable()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 277
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 279
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initBitmap(Ljava/lang/String;II)I
    .locals 11

    .line 344
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/faceunity/utils/StorageUtils;->getFilesDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "LSArManager"

    if-nez v0, :cond_0

    .line 347
    iget-object v3, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/vskit/arsdk/utils/BitmapUtil;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "getImageFromAssetsFile"

    .line 348
    invoke-static {v2, v4}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "bitmap2 is null"

    const-string v5, "texture id = "

    const-string v6, "bitmap1 is null"

    const/16 v7, 0x10e

    const-string v8, "bitmap is null"

    const-string v9, "cropBitmapFromFile"

    const/4 v10, 0x0

    if-le p2, p3, :cond_6

    if-eqz v0, :cond_1

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p3, p2}, Lcom/vskit/arsdk/utils/BitmapUtil;->cropBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 353
    invoke-static {v2, v9}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v3, :cond_2

    .line 356
    invoke-static {v2, v8}, Lcom/vskit/arsdk/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 359
    :cond_2
    iget p0, p0, Lcom/vskit/arsdk/LSArManager;->mCameraType:I

    if-ne p0, v1, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v10

    :goto_1
    invoke-static {v3, v10, p0, v1}, Lcom/vskit/arsdk/utils/BitmapUtil;->flipBitmap(Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    .line 362
    invoke-static {v2, v6}, Lcom/vskit/arsdk/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 365
    :cond_4
    invoke-static {p0, v7, v1}, Lcom/vskit/arsdk/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_5

    .line 367
    invoke-static {v2, v4}, Lcom/vskit/arsdk/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 370
    :cond_5
    invoke-static {p0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->createImageTexture(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 371
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return p1

    :cond_6
    if-eqz v0, :cond_7

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2, p3}, Lcom/vskit/arsdk/utils/BitmapUtil;->cropBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 377
    invoke-static {v2, v9}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v3, :cond_8

    .line 380
    invoke-static {v2, v8}, Lcom/vskit/arsdk/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 383
    :cond_8
    iget p0, p0, Lcom/vskit/arsdk/LSArManager;->mCameraType:I

    if-ne p0, v1, :cond_9

    move p0, v1

    goto :goto_2

    :cond_9
    move p0, v10

    :goto_2
    invoke-static {v3, v10, p0, v1}, Lcom/vskit/arsdk/utils/BitmapUtil;->flipBitmap(Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_a

    .line 386
    invoke-static {v2, v6}, Lcom/vskit/arsdk/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 389
    :cond_a
    invoke-static {p0, v7, v1}, Lcom/vskit/arsdk/utils/BitmapUtil;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_b

    .line 391
    invoke-static {v2, v4}, Lcom/vskit/arsdk/utils/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 394
    :cond_b
    invoke-static {p0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->createImageTexture(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return p1
.end method

.method private isSplit(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onCreate2DInputFilterIfNeed(IIII)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    .line 302
    invoke-virtual {v0, p1, p2}, Lcom/vskit/arsdk/filter/GLImageFilter;->initFrameBuffer(II)V

    .line 303
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    invoke-virtual {p0, p3, p4}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDisplaySizeChanged(II)V

    :cond_0
    return-void
.end method

.method private onCreateAlphaFilterIfNeed(II)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mAlphaFilter:Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vskit/arsdk/filter/GLImageAlphaFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mAlphaFilter:Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

    .line 295
    invoke-virtual {v0, p1, p2}, Lcom/vskit/arsdk/filter/GLImageFilter;->initFrameBuffer(II)V

    :cond_0
    return-void
.end method

.method private onCreateTextureIfNeed(II)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget v1, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1}, Lcom/faceunity/entity/Effect;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1}, Lcom/faceunity/entity/Effect;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/vskit/arsdk/LSArManager;->initBitmap(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    .line 320
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onCreateTwoInputFilterIfNeed(II)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    .line 285
    invoke-virtual {v0, p1, p2}, Lcom/vskit/arsdk/filter/GLImageFilter;->initFrameBuffer(II)V

    .line 286
    iget p1, p0, Lcom/vskit/arsdk/LSArManager;->mCameraType:I

    if-lez p1, :cond_0

    .line 287
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->setCameraType(I)V

    :cond_0
    return-void
.end method

.method private onDestroyFilter()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/vskit/arsdk/filter/GLImageFilter;->release()V

    .line 404
    iput-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mAlphaFilter:Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/vskit/arsdk/filter/GLImageFilter;->release()V

    .line 408
    iput-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mAlphaFilter:Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {v0}, Lcom/vskit/arsdk/filter/GLImageFilter;->release()V

    .line 412
    iput-object v1, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    .line 414
    :cond_2
    iget v0, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    if-lez v0, :cond_3

    .line 415
    invoke-static {v0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->deleteTexture(I)V

    const/4 v0, -0x1

    .line 416
    iput v0, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    .line 418
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDestroy Filter, Thread id"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LSArManager"

    invoke-static {v0, p0}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDraw2DFilter(I)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mMatrix2:[F

    invoke-virtual {v0, v1}, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->setTextureTransformMatrix([F)V

    .line 339
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/filter/GLImageFilter;->drawFrame(I)V

    return-void
.end method

.method private onDraw2DFilterFBO(I)I
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mMatrix:[F

    invoke-virtual {v0, v1}, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->setTextureTransformMatrix([F)V

    .line 310
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->m2DFilter:Lcom/vskit/arsdk/filter/GLImage2DInputFilter;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/filter/GLImageFilter;->drawFrameBuffer(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private onDrawAlphaFilter(I)I
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget v1, p0, Lcom/vskit/arsdk/LSArManager;->mTextureId:I

    if-lez v1, :cond_0

    .line 331
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mAlphaFilter:Lcom/vskit/arsdk/filter/GLImageAlphaFilter;

    invoke-virtual {p0, p1, v1}, Lcom/vskit/arsdk/filter/GLImageAlphaFilter;->drawFrameBuffer(II)I

    move-result p0

    monitor-exit v0

    return p0

    .line 333
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onDrawFilter(I)I
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    iget v1, p0, Lcom/vskit/arsdk/LSArManager;->mSpiltType:I

    invoke-virtual {v0, v1}, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->setSplitType(I)V

    .line 325
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/filter/GLImageFilter;->drawFrameBuffer(I)I

    move-result p0

    return p0
.end method

.method private onDrawTwoInputAndAlphaFilter(III)I
    .locals 2

    .line 255
    iget v0, p0, Lcom/vskit/arsdk/LSArManager;->mSpiltType:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/vskit/arsdk/LSArManager;->handlerRunnable()V

    .line 261
    invoke-direct {p0, p2, p3}, Lcom/vskit/arsdk/LSArManager;->onCreateTwoInputFilterIfNeed(II)V

    .line 263
    invoke-direct {p0, p2, p3}, Lcom/vskit/arsdk/LSArManager;->onCreateAlphaFilterIfNeed(II)V

    .line 265
    invoke-direct {p0, p2, p3}, Lcom/vskit/arsdk/LSArManager;->onCreateTextureIfNeed(II)V

    .line 267
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/LSArManager;->onDrawFilter(I)I

    move-result p1

    .line 269
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/LSArManager;->onDrawAlphaFilter(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 55
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    .line 56
    new-instance p1, Lcom/faceunity/entity/Effect;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/faceunity/entity/Effect;-><init>(I)V

    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mNoneEffect:Lcom/faceunity/entity/Effect;

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init and create renderar sdk version 2.0.0, Thread id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSArManager"

    .line 57
    invoke-static {p1, p0}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBundleItemEffect(I)V
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 541
    invoke-interface {p0, p1}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleItemEffect(I)V

    :cond_0
    return-void
.end method

.method public onBundleLoadComplete(ILjava/lang/String;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v0, :cond_1

    .line 523
    iget v1, p0, Lcom/vskit/arsdk/LSArManager;->mSpiltType:I

    if-lez v1, :cond_0

    const/4 p1, 0x1

    .line 524
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadComplete(ILjava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBundleLoadStart()V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 534
    invoke-interface {p0}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadStart()V

    :cond_0
    return-void
.end method

.method public onCameraChange(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 423
    iget-object v3, v0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz v3, :cond_0

    const-string v3, "LSArManager"

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCameraChange: render, Thread id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v3, v0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {v3, v1, v2}, Lcom/faceunity/FURenderer;->onCameraChange(II)V

    .line 427
    :cond_0
    iget-object v3, v0, Lcom/vskit/arsdk/LSArManager;->mMatrix:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 428
    iget-object v5, v0, Lcom/vskit/arsdk/LSArManager;->mMatrix:[F

    const/4 v6, 0x0

    int-to-float v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 430
    iget-object v3, v0, Lcom/vskit/arsdk/LSArManager;->mMatrix2:[F

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 431
    iget-object v5, v0, Lcom/vskit/arsdk/LSArManager;->mMatrix2:[F

    rsub-int v2, v2, 0x168

    int-to-float v7, v2

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    if-nez v1, :cond_1

    .line 434
    iget-object v11, v0, Lcom/vskit/arsdk/LSArManager;->mMatrix:[F

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 435
    iget-object v2, v0, Lcom/vskit/arsdk/LSArManager;->mMatrix2:[F

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 438
    :cond_1
    iput v1, v0, Lcom/vskit/arsdk/LSArManager;->mCameraType:I

    .line 439
    iget-object v2, v0, Lcom/vskit/arsdk/LSArManager;->mFilter:Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;

    if-eqz v2, :cond_2

    .line 440
    invoke-virtual {v2, v1}, Lcom/vskit/arsdk/filter/GLImageTwoInputFilter;->setCameraType(I)V

    .line 442
    :cond_2
    iget-object v1, v0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    new-instance v2, Lcom/vskit/arsdk/LSArManager$2;

    invoke-direct {v2, v0}, Lcom/vskit/arsdk/LSArManager$2;-><init>(Lcom/vskit/arsdk/LSArManager;)V

    iput-object v2, v0, Lcom/vskit/arsdk/LSArManager;->mRunnable:Ljava/lang/Runnable;

    .line 454
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDrawFrameForOrientation([BIIIII)I
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/vskit/arsdk/LSArManager;->handlerRunnable()V

    .line 189
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/vskit/arsdk/LSArManager;->onCreate2DInputFilterIfNeed(IIII)V

    .line 191
    invoke-direct {p0, p2}, Lcom/vskit/arsdk/LSArManager;->onDraw2DFilterFBO(I)I

    move-result p2

    .line 193
    iget-object p5, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz p5, :cond_0

    .line 194
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/faceunity/FURenderer;->onDrawFrame([BIII)I

    move-result p2

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onDrawFrame: render output tid = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "LSArManager"

    invoke-static {p5, p1}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/vskit/arsdk/LSArManager;->onDrawTwoInputAndAlphaFilter(III)I

    move-result p1

    .line 200
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/LSArManager;->onDraw2DFilter(I)V

    return p1
.end method

.method public onEffectSelected(Lcom/faceunity/entity/Effect;)V
    .locals 3

    .line 104
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getSplitType()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-nez v1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-direct {p0, v0}, Lcom/vskit/arsdk/LSArManager;->isSplit(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    iget-object v2, p0, Lcom/vskit/arsdk/LSArManager;->mNoneEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 110
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {v1, p1}, Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    iget-object v2, p0, Lcom/vskit/arsdk/LSArManager;->mNoneEffect:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onFilterNameSelected(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    const-string v2, "origin"

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onFilterNameSelected(Ljava/lang/String;)V

    .line 119
    :goto_1
    iput v0, p0, Lcom/vskit/arsdk/LSArManager;->mSpiltType:I

    .line 120
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mEffect:Lcom/faceunity/entity/Effect;

    .line 121
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    new-instance v1, Lcom/vskit/arsdk/LSArManager$1;

    invoke-direct {v1, p0}, Lcom/vskit/arsdk/LSArManager$1;-><init>(Lcom/vskit/arsdk/LSArManager;)V

    iput-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mRunnable:Ljava/lang/Runnable;

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "LSArManager"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Thread id = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p0, p1}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onFpsChange(DD)V
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 516
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/vskit/arsdk/portal/ARCallback;->onFpsChange(DD)V

    :cond_0
    return-void
.end method

.method public onMusicFilterTime(J)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_0

    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/FURenderer;->onMusicFilterTime(J)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/vskit/arsdk/LSArManager;->createFURenderer(Landroid/content/Context;)Lcom/faceunity/FURenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/faceunity/FURenderer;->onSurfaceCreated()V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceCreated: render, Thread id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSArManager"

    .line 92
    invoke-static {p1, p0}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSurfaceDestroyed(Z)V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mReleaseObj:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "LSArManager"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy effect, Thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {p1, v1}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {p1}, Lcom/faceunity/FURenderer;->onDestroy()V

    goto :goto_0

    :cond_0
    const-string p1, "LSArManager"

    const-string v1, "destroy render and set render to null"

    .line 234
    invoke-static {p1, v1}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {p1}, Lcom/faceunity/FURenderer;->onSurfaceDestroyed()V

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    .line 239
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/vskit/arsdk/LSArManager;->onDestroyFilter()V

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemError(Ljava/lang/String;)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 548
    invoke-interface {p0, p1}, Lcom/vskit/arsdk/portal/ARCallback;->onSystemError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTrackingStatusChanged(I)V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 555
    invoke-interface {p0, p1}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public onUninit()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUninit: render, Thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    .line 246
    invoke-static {v1, v0}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {v0}, Lcom/faceunity/FURenderer;->onSurfaceDestroyed()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/vskit/arsdk/LSArManager;->onDestroyFilter()V

    return-void
.end method

.method public setCallback(Lcom/vskit/arsdk/portal/ARCallback;)V
    .locals 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallback, Thread id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    invoke-static {v1, v0}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager;->mCallback:Lcom/vskit/arsdk/portal/ARCallback;

    return-void
.end method

.method public setInputTextureType(I)V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInputTextureType: is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Thread id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    .line 479
    invoke-static {v1, v0}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setInputTextureType(I)V

    :cond_0
    return-void
.end method

.method public setMaxFaces(I)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_0

    .line 467
    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setMaxFaces(I)V

    :cond_0
    return-void
.end method

.method public setReset(I)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager;->mFURenderer:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setResetFlag(I)V

    :cond_0
    return-void
.end method
