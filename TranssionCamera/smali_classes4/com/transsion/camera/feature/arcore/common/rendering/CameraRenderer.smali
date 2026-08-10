.class public Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;
.super Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;
.source "CameraRenderer.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBundleTextureMvpMatrix:[F

.field private final mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

.field private final mCameraId:Ljava/lang/String;

.field protected final mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field private final mCameraStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

.field private final mCaptureSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

.field private mGLSurfaceHeight:I

.field private mGLSurfaceWidth:I

.field protected final mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

.field protected mImageReader:Landroid/media/ImageReader;

.field protected final mIsFacingFront:Z

.field protected mIsInited:Z

.field protected mOrientation:I

.field private mOrientationHint:I

.field private final mShouldCreateSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mSurfaceTextureHeight:I

.field protected mSurfaceTextureWidth:I

.field protected final mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

.field private mTransformMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldCreateSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 46
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mTransformMatrix:[F

    new-array v0, v0, [F

    .line 47
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mBundleTextureMvpMatrix:[F

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    .line 107
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$2;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCaptureSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    .line 129
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$3;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    .line 181
    check-cast p1, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    .line 182
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 183
    iput-object p5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraId:Ljava/lang/String;

    .line 184
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    .line 185
    invoke-virtual {p2}, Lcom/faceunity/pta_art/core/base/BaseCore;->getRendererHelper()Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    .line 186
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getFrontCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsFacingFront:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldCreateSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->setRepeatingCaptureRequest()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 39
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;II)[I
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->handleTakePicture(II)[I

    move-result-object p0

    return-object p0
.end method

.method private calculateBundleMVPMatrix()V
    .locals 10

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mBundleTextureMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 293
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mScreenOrientation:I

    const/16 v2, 0x5a

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    .line 301
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    .line 302
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    int-to-float v4, v0

    mul-float/2addr v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 303
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 304
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 308
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mBundleTextureMvpMatrix:[F

    invoke-static {v2, v1, v3, v0, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 309
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mBundleTextureMvpMatrix:[F

    const/4 v5, 0x0

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->mScreenOrientation:I

    int-to-float v6, p0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method private closeCamera()V
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->closeCamera(Z)V

    return-void
.end method

.method private createCameraPreviewSession()V
    .locals 5

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSurfaceTextureWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSurfaceTextureHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "createCameraPreviewSession getSurfaceTexture is null"

    .line 154
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 158
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "mImageReader.getSurface() is not valid or is null or mImageReader is null"

    .line 168
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "no available surface,skip createCaptureSession()"

    .line 171
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_2
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 175
    invoke-virtual {v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveCaptureSessionStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCaptureSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->createCaptureSession(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;)V

    return-void

    :cond_3
    const-string p0, "previewSurface is not valid or is null"

    .line 161
    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    return-void
.end method

.method private handleSizeChanged(II)V
    .locals 3

    .line 190
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mGLSurfaceWidth:I

    .line 191
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mGLSurfaceHeight:I

    .line 192
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSizeChanged, mGLSurfaceWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mGLSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mGLSurfaceHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mGLSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createFBO(II)V

    .line 194
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mGLSurfaceWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mGLSurfaceHeight:I

    const/4 p2, 0x0

    invoke-static {p2, p2, p1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method private handleTakePicture(II)[I
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->handleDraw()V

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createBitmapFromFBO(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method private renderBundleOfflineTexture()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getBundleFBOId()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v1, 0x8d40

    .line 277
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x0

    .line 278
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 279
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 280
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->onDrawBundleToCurrentFrameBuffer()V

    const/4 p0, 0x0

    .line 281
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private setRepeatingCaptureRequest()V
    .locals 3

    .line 145
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;)V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->setRepeatingRequest(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;)V

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 318
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 319
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    if-gtz v0, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->handleDraw()V

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getTexId()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->frameAvailable([FII)V

    :cond_2
    const v0, 0x8d40

    .line 330
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getTexId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->draw2DTexture([FI)V

    .line 332
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onPostDrawFrame()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraSurfaceSize()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleDraw()V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->onPrepareDrawFrame()V

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v1

    const v2, 0x8d40

    if-eqz v1, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->renderBundleOfflineTexture()V

    .line 213
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xbe2

    .line 214
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 215
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 219
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 220
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mTransformMatrix:[F

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->drawOESTexture([F)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->isValidCurrAvatar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->drawBGTexture([F)V

    :cond_2
    return-void
.end method

.method public init()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->reset()V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->setRenderMode(I)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->requestRender()V

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraId:Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->DESIRED_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->chooseOptimalSurfaceSize(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    .line 253
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 258
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->handleSizeChanged(II)V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsInited:Z

    return-void
.end method

.method protected onDrawBundle()V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->isRenderByRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getBundleTexId()I

    move-result v0

    if-lez v0, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->calculateBundleMVPMatrix()V

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIRendererHelper:Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mBundleTextureMvpMatrix:[F

    const/4 v3, 0x0

    invoke-interface {v1, v2, p0, v0, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/IRendererHelper;->draw2DTexture([F[FIZ)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->onDrawBundleToCurrentFrameBuffer()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDrawBundleToCurrentFrameBuffer()V
    .locals 0

    return-void
.end method

.method protected openCamera()V
    .locals 4

    .line 198
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;)V

    .line 200
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->openCamera(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    return-void
.end method

.method public orientationChanged(I)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->orientationChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientation:I

    goto :goto_1

    .line 72
    :cond_1
    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsFacingFront:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientation:I

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientation:I

    goto :goto_1

    .line 66
    :cond_4
    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsFacingFront:Z

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientation:I

    .line 75
    :goto_1
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientationHint:I

    return-void
.end method

.method public snapSurface(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$5;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;II)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    .line 378
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 382
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mSurfaceBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public startRecording(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureHeight:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mSurfaceTextureWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mOrientationHint:I

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->startVideoRecorder(IILcom/transsion/camera/app/common/mode/VideoFileSpec;I)V

    return-void
.end method

.method public takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mShouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;->onPixelReadFail()V

    const/4 p0, 0x0

    return p0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$4;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unInit()V
    .locals 2

    .line 265
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->unInit()V

    .line 266
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->closeCamera()V

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->destroyFB()V

    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->mIsInited:Z

    :cond_0
    return-void
.end method
