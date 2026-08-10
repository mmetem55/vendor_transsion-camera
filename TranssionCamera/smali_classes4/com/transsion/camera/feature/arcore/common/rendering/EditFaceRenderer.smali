.class public Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;
.super Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;
.source "EditFaceRenderer.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

.field private final mBundleMvpMatrix:[F

.field private final mCameraId:Ljava/lang/String;

.field private final mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field private mIsInited:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditFaceRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;)V

    .line 31
    new-instance p1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object p3, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_2D:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-direct {p1, p3}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;-><init>(Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mBundleMvpMatrix:[F

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 38
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewHeight:I

    return p0
.end method

.method private calculateBundleMVPMatrix()V
    .locals 10

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mBundleMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mScreenOrientation:I

    const/16 v2, 0x5a

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewHeight:I

    .line 93
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewWidth:I

    int-to-float v4, v0

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 94
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 95
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mBundleMvpMatrix:[F

    invoke-static {v2, v1, v3, v0, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 102
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mBundleMvpMatrix:[F

    const/4 v5, 0x0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mScreenOrientation:I

    int-to-float v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method private handleSizeChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 77
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewWidth:I

    .line 78
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewHeight:I

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createFBO(II)V

    return-void
.end method

.method private onDrawBundleToCurrentFrameBuffer()V
    .locals 8

    .line 116
    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewWidth:I

    iget v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onDrawFrame([BIIIII[F)I

    return-void
.end method

.method private renderBundleOfflineTexture()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getBundleFBOId()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v1, 0x8d40

    .line 108
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x0

    .line 109
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 110
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->onDrawBundleToCurrentFrameBuffer()V

    const/4 p0, 0x0

    .line 112
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private setModeParam()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$2;

    const-string v2, "closeFaceCapture"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$2;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 3

    .line 126
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mViewHeight:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onPrepareDrawFrame(III)V

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->renderBundleOfflineTexture()V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    const v2, 0x3f6ac083    # 0.917f

    .line 132
    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 133
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbe2

    .line 136
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    .line 137
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getBundleTexId()I

    move-result v0

    if-lez v0, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->onDrawBundleTexture(I)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->onDrawBundleToCurrentFrameBuffer()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 146
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getTexId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([FI)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->init()V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mCameraId:Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->DESIRED_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->chooseOptimalSurfaceSize(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->handleSizeChanged(II)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->createOnGlThread()V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->setModeParam()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mIsInited:Z

    return-void
.end method

.method protected onDrawBundleTexture(I)V
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->calculateBundleMVPMatrix()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mBundleMvpMatrix:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([F[FIZ)V

    return-void
.end method

.method public takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unInit()V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->unInit()V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->m2DRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->releaseOnGLThread()V

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->destroyFB()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/EditFaceRenderer;->mIsInited:Z

    :cond_0
    return-void
.end method
