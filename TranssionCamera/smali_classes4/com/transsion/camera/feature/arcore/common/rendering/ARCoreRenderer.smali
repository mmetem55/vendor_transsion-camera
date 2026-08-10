.class public Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;
.super Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;
.source "ARCoreRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:[F

.field private static final SCALE_FACTOR:F = 300.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final anchorMatrix:[F

.field private final anchorTransformMatrix:[F

.field private final anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

.field private final cameraStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

.field private displayRotationHelper:Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

.field private final mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field private final mCaptureSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

.field private mChangeState:I

.field private mGLSurfaceHeight:I

.field private mGLSurfaceWidth:I

.field private mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

.field private mIsFirstDraw:Z

.field private mIsInited:Z

.field private mIsPortraitScreen:Z

.field private mIsSessionPaused:Z

.field private mOrientationHint:I

.field private final mRotationMatrix:[F

.field private final mScaleMatrix:[F

.field private final mScreenSize:Landroid/util/Size;

.field private mSharedCamera:Lcom/google/ar/core/SharedCamera;

.field private mSharedSession:Lcom/google/ar/core/Session;

.field private mSurfaceTextureHeight:I

.field private mSurfaceTextureWidth:I

.field private final mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

.field private mTouchScale:F

.field private final planeRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

.field private final projectionMatrix:[F

.field private final shouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final transformMatrix:[F

.field private final viewMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ARCoreRenderer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 67
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->DEFAULT_COLOR:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;)V
    .locals 3

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;)V

    .line 69
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

    invoke-direct {p2}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->backgroundRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

    .line 72
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->shouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsSessionPaused:Z

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    const/16 p2, 0x10

    new-array v1, p2, [F

    .line 78
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchorMatrix:[F

    new-array v1, p2, [F

    .line 79
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->transformMatrix:[F

    new-array v1, p2, [F

    .line 80
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchorTransformMatrix:[F

    new-array v1, p2, [F

    .line 81
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->projectionMatrix:[F

    new-array v1, p2, [F

    .line 82
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    new-array v2, p2, [F

    .line 83
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    new-array p2, p2, [F

    .line 84
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->viewMatrix:[F

    .line 241
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$5;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->cameraStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    .line 257
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$6;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCaptureSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    .line 280
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$7;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    .line 295
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 296
    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 297
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 298
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    .line 299
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->displayRotationHelper:Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

    const-string p2, "0"

    .line 300
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraId:Ljava/lang/String;

    .line 301
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsInited:Z

    .line 302
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScreenSize:Landroid/util/Size;

    .line 303
    iput-object p5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    .line 304
    new-instance p2, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

    const-string p3, "models/trigrid.png"

    invoke-direct {p2, p1, p3}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->planeRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->displayRotationHelper:Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleDrawFrame(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)[F
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->viewMatrix:[F

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)[F
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->projectionMatrix:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 63
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->setRepeatingCaptureRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->resumeARCore()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->shouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)[F
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchorTransformMatrix:[F

    return-object p0
.end method

.method private checkTrackingPlane(Lcom/google/ar/core/Pose;)Z
    .locals 5

    .line 612
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    const-class v0, Lcom/google/ar/core/Plane;

    invoke-virtual {p0, v0}, Lcom/google/ar/core/Session;->getAllTrackables(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p0

    .line 613
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ar/core/Plane;

    .line 614
    invoke-virtual {v0}, Lcom/google/ar/core/Plane;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v1

    sget-object v2, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/ar/core/Plane;->getSubsumedBy()Lcom/google/ar/core/Plane;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {v0}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->calculateDistanceToPlane(Lcom/google/ar/core/Pose;Lcom/google/ar/core/Pose;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private closeCamera()V
    .locals 6

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->closeCamera(Z)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/google/ar/core/Session;->pause()V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->close()V

    .line 333
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    .line 334
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsSessionPaused:Z

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v3, "close"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 339
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 341
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private createCameraPreviewSession()V
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->backgroundRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->setCameraTextureName(I)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    invoke-virtual {v0}, Lcom/google/ar/core/SharedCamera;->getArCoreSurfaces()Ljava/util/List;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 378
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveCaptureSessionStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 379
    invoke-virtual {v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getResponseHandler()Landroid/os/Handler;

    move-result-object v3

    .line 378
    invoke-virtual {v1, v2, v3}, Lcom/google/ar/core/SharedCamera;->createARSessionStateCallback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v1

    .line 380
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCaptureSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    const/4 v4, 0x3

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;-><init>(ILjava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;)V

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->createCaptureSession(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;)V

    return-void
.end method

.method private entryArCoreModeParam()V
    .locals 3

    const-string v0, "MAT_MVP_OVERRIDE_ENABLE"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 521
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->setDoubleParam(Ljava/lang/String;D)V

    return-void
.end method

.method private exitArCoreModeParam()V
    .locals 3

    const-string v0, "MAT_MVP_OVERRIDE_ENABLE"

    const-wide/16 v1, 0x0

    .line 525
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->setDoubleParam(Ljava/lang/String;D)V

    return-void
.end method

.method private handleDrawFrame(Z)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 585
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 586
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->shouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsSessionPaused:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->displayRotationHelper:Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->updateSessionIfNeeded(Lcom/google/ar/core/Session;)V

    .line 596
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->onDrawFrameARCore(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 600
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Exception on the OpenGL thread"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_1
    :goto_1
    return-void
.end method

.method private handleInit()V
    .locals 8

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->backgroundRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->createOnGlThread(Landroid/content/Context;)V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->planeRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->createOnGlThread(Landroid/content/Context;)V

    .line 539
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->entryArCoreModeParam()V

    .line 540
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->openCamera()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 542
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Failed to read an asset file"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    const v2, 0x3b5a740e

    aput v2, v0, v1

    const/4 v3, 0x5

    .line 547
    aput v2, v0, v3

    const/16 v3, 0xa

    .line 548
    aput v2, v0, v3

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 551
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->transformMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 553
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->transformMatrix:[F

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private handleSizeChanged(II)V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScreenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 575
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 576
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTouchScale:F

    .line 577
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceWidth:I

    .line 578
    iput p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceHeight:I

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->createFBO(II)V

    const/4 v0, 0x0

    .line 580
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->displayRotationHelper:Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/helpers/DisplayRotationHelper;->onSurfaceChanged(II)V

    return-void
.end method

.method private handleTap(Lcom/google/ar/core/Frame;Lcom/google/ar/core/Camera;)V
    .locals 5

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->poll()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {p2}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v1

    sget-object v2, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-ne v1, v2, :cond_5

    .line 389
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTouchScale:F

    mul-float/2addr v1, v2

    .line 390
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTouchScale:F

    mul-float/2addr v0, v2

    .line 391
    invoke-virtual {p1, v1, v0}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ar/core/HitResult;

    .line 393
    invoke-virtual {v0}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v1

    .line 395
    instance-of v2, v1, Lcom/google/ar/core/Plane;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/google/ar/core/Plane;

    .line 396
    invoke-virtual {v0}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ar/core/Plane;->isPoseInPolygon(Lcom/google/ar/core/Pose;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->calculateDistanceToPlane(Lcom/google/ar/core/Pose;Lcom/google/ar/core/Pose;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_1

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;->anchor:Lcom/google/ar/core/Anchor;

    invoke-virtual {p1}, Lcom/google/ar/core/Anchor;->detach()V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    :cond_1
    instance-of p1, v1, Lcom/google/ar/core/Point;

    const/4 p2, 0x4

    if-eqz p1, :cond_2

    new-array p1, p2, [F

    .line 414
    fill-array-data p1, :array_0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-array p1, p2, [F

    .line 416
    fill-array-data p1, :array_1

    goto :goto_0

    .line 418
    :cond_3
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->DEFAULT_COLOR:[F

    .line 421
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 422
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 427
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    new-instance p2, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;

    invoke-virtual {v0}, Lcom/google/ar/core/HitResult;->createAnchor()Lcom/google/ar/core/Anchor;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;-><init>(Lcom/google/ar/core/Anchor;[F)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x42840000    # 66.0f
        0x43050000    # 133.0f
        0x43740000    # 244.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_1
    .array-data 4
        0x430b0000    # 139.0f
        0x43430000    # 195.0f
        0x42940000    # 74.0f
        0x437f0000    # 255.0f
    .end array-data
.end method

.method private handleUnint()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->backgroundRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->releaseOnGLThread()V

    .line 530
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->planeRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->releaseOnGLThread()V

    .line 531
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->closeCamera()V

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->exitArCoreModeParam()V

    return-void
.end method

.method private onDrawFrameARCore(Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/CameraNotAvailableException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 437
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->update()Lcom/google/ar/core/Frame;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v9

    .line 440
    invoke-direct {v8, v0, v9}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleTap(Lcom/google/ar/core/Frame;Lcom/google/ar/core/Camera;)V

    .line 443
    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->backgroundRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->draw(Lcom/google/ar/core/Frame;)V

    .line 446
    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v1

    sget-object v2, Lcom/google/ar/core/TrackingState;->PAUSED:Lcom/google/ar/core/TrackingState;

    if-ne v1, v2, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->projectionMatrix:[F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v2, v3}, Lcom/google/ar/core/Camera;->getProjectionMatrix([FIFF)V

    .line 450
    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->viewMatrix:[F

    invoke-virtual {v9, v1, v10}, Lcom/google/ar/core/Camera;->getViewMatrix([FI)V

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 456
    invoke-virtual {v0}, Lcom/google/ar/core/Frame;->getLightEstimate()Lcom/google/ar/core/LightEstimate;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Lcom/google/ar/core/LightEstimate;->getColorCorrection([FI)V

    if-eqz p1, :cond_1

    .line 458
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->planeRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;

    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    const-class v2, Lcom/google/ar/core/Plane;

    .line 459
    invoke-virtual {v1, v2}, Lcom/google/ar/core/Session;->getAllTrackables(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v2

    iget-object v3, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->projectionMatrix:[F

    .line 458
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->drawPlanes(Ljava/util/Collection;Lcom/google/ar/core/Pose;[F)V

    .line 464
    :cond_1
    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->checkTrackingPlane(Lcom/google/ar/core/Pose;)Z

    move-result v0

    .line 466
    iget v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mChangeState:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 468
    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    iget-object v2, v8, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$string;->ar_tip_display_module:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v11, v10}, Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;->showHint(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    iget-object v2, v8, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$string;->ar_tip_searching_plane:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v12, v10}, Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;->showHint(Ljava/lang/String;IZ)V

    .line 472
    :goto_0
    iput v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mChangeState:I

    :cond_3
    if-nez v0, :cond_4

    return-void

    .line 480
    :cond_4
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;

    .line 481
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;->anchor:Lcom/google/ar/core/Anchor;

    invoke-virtual {v1}, Lcom/google/ar/core/Anchor;->getTrackingState()Lcom/google/ar/core/TrackingState;

    sget-object v1, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    .line 486
    iget-object v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$ColoredAnchor;->anchor:Lcom/google/ar/core/Anchor;

    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchorMatrix:[F

    invoke-virtual {v0, v1, v10}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    .line 493
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 494
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->getCurScale()F

    move-result v0

    invoke-direct {v8, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->updateScale(F)V

    .line 497
    :cond_5
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 498
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->getScrollArray()[F

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->updateRotation([F)V

    .line 501
    :cond_6
    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->transformMatrix:[F

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 502
    iget-object v14, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchorTransformMatrix:[F

    const/4 v15, 0x0

    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchorMatrix:[F

    const/16 v17, 0x0

    iget-object v1, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->transformMatrix:[F

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 503
    iget-object v0, v8, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;

    const-string v2, ""

    invoke-direct {v1, v8, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$8;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 511
    invoke-virtual {v9}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    new-array v7, v11, [F

    .line 513
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->tx()F

    move-result v1

    aput v1, v7, v10

    const/4 v1, 0x1

    .line 514
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->ty()F

    move-result v2

    aput v2, v7, v1

    .line 515
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->tz()F

    move-result v0

    aput v0, v7, v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 516
    iget v4, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureWidth:I

    iget v5, v8, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureHeight:I

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onDrawFrame([BIIIII[F)I

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method private openCamera()V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    if-nez v0, :cond_0

    .line 356
    :try_start_0
    new-instance v0, Lcom/google/ar/core/Session;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/ar/core/Session$Feature;->SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    invoke-virtual {v0}, Lcom/google/ar/core/Session;->getConfig()Lcom/google/ar/core/Config;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setFocusMode(Lcom/google/ar/core/Config$FocusMode;)Lcom/google/ar/core/Config;

    .line 363
    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setPlaneFindingMode(Lcom/google/ar/core/Config$PlaneFindingMode;)Lcom/google/ar/core/Config;

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    invoke-virtual {v1, v0}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 358
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to create FuEngineCore session that supports camera sharing"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 366
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->getSharedCamera()Lcom/google/ar/core/SharedCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 368
    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 369
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getResponseHandler()Landroid/os/Handler;

    move-result-object v2

    .line 368
    invoke-virtual {v0, v1, v2}, Lcom/google/ar/core/SharedCamera;->createARDeviceStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->cameraStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;)V

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->openCamera(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    return-void
.end method

.method private resumeARCore()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedSession:Lcom/google/ar/core/Session;

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/ar/core/Session;->resume()V

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsSessionPaused:Z

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSharedCamera:Lcom/google/ar/core/SharedCamera;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getResponseHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/ar/core/SharedCamera;->setCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Failed to resume FuEngineCore session"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setRepeatingCaptureRequest()V
    .locals 3

    .line 324
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getPrimitiveCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;-><init>(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;)V

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->setRepeatingRequest(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;)V

    return-void
.end method

.method private updateRotation([F)V
    .locals 14

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 565
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsPortraitScreen:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    const/4 v3, 0x0

    aget v4, p1, v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v8, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mRotationMatrix:[F

    const/4 v9, 0x0

    const/4 p0, 0x1

    aget v10, p1, p0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :goto_0
    return-void
.end method

.method private updateScale(F)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mScaleMatrix:[F

    const v0, 0x3b5a740e

    mul-float/2addr p1, v0

    aput p1, p0, v1

    const/4 v0, 0x5

    .line 559
    aput p1, p0, v0

    const/16 v0, 0xa

    .line 560
    aput p1, p0, v0

    return-void
.end method


# virtual methods
.method public drawFrame()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getFBOId()I

    move-result v0

    const v1, 0x8d40

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 141
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v3}, Lcom/faceunity/pta_art/core/base/BaseCore;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 143
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleDrawFrame(Z)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    sget-object v3, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->DEFAULT_MATRIX:[F

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->getTexId()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->frameAvailable([FII)V

    .line 146
    :cond_0
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleDrawFrame(Z)V

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->shouldUpdateSurfaceTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsSessionPaused:Z

    if-nez v1, :cond_1

    .line 149
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->onPrepareDrawFrame(III)V

    .line 150
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsFirstDraw:Z

    if-nez v1, :cond_1

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsFirstDraw:Z

    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .line 118
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->init()V

    .line 119
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsFirstDraw:Z

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraId:Ljava/lang/String;

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->DESIRED_SIZE:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->chooseOptimalSurfaceSize(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureWidth:I

    .line 130
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureHeight:I

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleInit()V

    .line 133
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureHeight:I

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureWidth:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleSizeChanged(II)V

    const/4 v0, -0x1

    .line 134
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mChangeState:I

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsInited:Z

    return-void
.end method

.method public orientationChanged(I)V
    .locals 1

    .line 103
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mOrientationHint:I

    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsPortraitScreen:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsPortraitScreen:Z

    :goto_1
    return-void
.end method

.method public snapSurface(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsFirstDraw:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$4;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;II)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    .line 224
    :try_start_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 228
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mSurfaceBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public startRecording(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mOrientationHint:I

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->startVideoRecorder(IILcom/transsion/camera/app/common/mode/VideoFileSpec;I)V

    return-void
.end method

.method public takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z
    .locals 2

    .line 185
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsFirstDraw:Z

    if-nez v0, :cond_0

    .line 186
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;->onPixelReadFail()V

    const/4 p0, 0x0

    return p0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$3;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unInit()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsInited:Z

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer$2;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->handleUnint()V

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;->destroyFB()V

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceWidth:I

    .line 171
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mGLSurfaceHeight:I

    .line 172
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureWidth:I

    .line 173
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mSurfaceTextureHeight:I

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;->hideHint()V

    :cond_0
    const/4 v1, -0x1

    .line 177
    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mChangeState:I

    .line 178
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsInited:Z

    .line 179
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/ARCoreRenderer;->mIsFirstDraw:Z

    :cond_1
    return-void
.end method
