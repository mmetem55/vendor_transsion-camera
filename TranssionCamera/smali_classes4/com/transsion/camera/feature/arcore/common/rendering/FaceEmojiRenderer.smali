.class public Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;
.super Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;
.source "FaceEmojiRenderer.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceEmojiRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    .line 28
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;)Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private checkYuvDataValid()Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->getTransformData()[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 100
    array-length p0, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private entryArModeParam()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$2;

    const-string v2, "entryAnimojiModeParam"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$2;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onCameraChange()V

    return-void
.end method

.method private exitArModeParam()V
    .locals 6

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "quit_ar_mode"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "enable_face_processor"

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "the quit_ar_mode is done"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->key:Ljava/lang/String;

    iget-wide v4, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->value:D

    invoke-static {v2, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 72
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "exitAnimojiModeParam"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleDraw()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->handleDraw()V

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->onDrawBundle()V

    .line 131
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public init()V
    .locals 4

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->init()V

    .line 79
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mImageReader:Landroid/media/ImageReader;

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 81
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getResponseHandler()Landroid/os/Handler;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->openCamera()V

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->entryArModeParam()V

    return-void
.end method

.method public isRenderByRotation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDrawBundleToCurrentFrameBuffer()V
    .locals 9

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->checkYuvDataValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 115
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsFacingFront:Z

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 118
    :goto_0
    iget v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientation:I

    invoke-static {v5}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 119
    invoke-static {v0, v1, v4}, Lcom/faceunity/wrapper/faceunity;->fuSetInputCameraMatrix(III)V

    .line 120
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v5}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v5

    aget v5, v5, v1

    new-array v3, v3, [D

    int-to-double v6, v0

    aput-wide v6, v3, v1

    int-to-double v0, v1

    aput-wide v0, v3, v2

    const/4 v0, 0x2

    int-to-double v1, v4

    aput-wide v1, v3, v0

    const-string v0, "fuai_input_camera_matrix"

    invoke-static {v5, v0, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getOESTextureId()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onPrepareDrawFrame(III)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->getTransformData()[B

    move-result-object v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    .line 124
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getOESTextureId()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientation:I

    const/4 v8, 0x0

    move-object v1, p0

    .line 123
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onDrawFrame([BIIIII[F)I

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->pause()V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->pauseCamera()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->resume()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->resumeCamera()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->unInit()V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->exitArModeParam()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mImageReader:Landroid/media/ImageReader;

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->mYuvData:Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/YuvDataTransform$YuvData;->clearTransformData()V

    return-void
.end method
