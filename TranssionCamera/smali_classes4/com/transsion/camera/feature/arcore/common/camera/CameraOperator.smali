.class public final Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;
.super Ljava/lang/Object;
.source "CameraOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;,
        Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final ALIVE_TIMEOUT:I = 0x3e8

.field private static final CAMERA_STATE_ALIVED:I = 0x3

.field private static final CAMERA_STATE_CLOSING:I = 0x4

.field private static final CAMERA_STATE_IDLE:I = 0x0

.field private static final CAMERA_STATE_OPENED:I = 0x2

.field private static final CAMERA_STATE_OPENNING:I = 0x1

.field private static final JOIN_THREAD_TIMEOUT:I = 0xc8

.field private static final KEY_CAM_MODE:Ljava/lang/String; = "com.transsion.cameraMode"

.field public static final LENS_FACING_BACK:Ljava/lang/String; = "0"

.field public static final LENS_FACING_FRONT:Ljava/lang/String; = "1"

.field public static final LENS_UNKNOWN:Ljava/lang/String; = "-1"

.field private static final REOPEN_COUNT:I = 0x3

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_AR:I = 0x4

.field private static final WAIT_FOR_IDLE_TIMEOUT:I = 0x1f4


# instance fields
.field private final mAliveCondition:Ljava/util/concurrent/locks/Condition;

.field private mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private final mCameraCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final mCameraCharacteristicsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

.field private mCameraDeviceSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

.field private final mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraDeviceStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

.field private final mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

.field private final mCameraHandler:Landroid/os/Handler;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private volatile mCameraState:I

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCloseCondition:Ljava/util/concurrent/locks/Condition;

.field private mCurrCameraDeviceInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

.field private final mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

.field private mIsActivityPause:Z

.field private mListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mOpenCondition:Ljava/util/concurrent/locks/Condition;

.field private mPreviewCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mRealScreenSize:Landroid/util/Size;

.field private mReopenCount:I

.field private final mResponseHandler:Landroid/os/Handler;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$ULyvngeDFy8i7tU1tc_fNzvN5HA(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->lambda$openCameraSync$0(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l1idZ_7DpUTozkyCBjSUBqVzfqg(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->lambda$closeCameraSync$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraOperator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;)V
    .locals 3

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getRequestThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;->getInstance()Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;->getRespondThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mResponseHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    .line 78
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 79
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mOpenCondition:Ljava/util/concurrent/locks/Condition;

    .line 80
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mAliveCondition:Ljava/util/concurrent/locks/Condition;

    .line 81
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCloseCondition:Ljava/util/concurrent/locks/Condition;

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIsActivityPause:Z

    .line 157
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$1;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 236
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$2;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 294
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$3;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 527
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    .line 528
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    .line 529
    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mUiHandler:Landroid/os/Handler;

    .line 530
    iput-object p4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

    const/4 p2, 0x0

    .line 531
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCurrCameraDeviceInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    .line 532
    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ContextUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mRealScreenSize:Landroid/util/Size;

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "camera"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 534
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    const-string p4, "-1"

    .line 535
    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 538
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 539
    invoke-virtual {p4, p3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p4

    .line 542
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p4, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 549
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCurrCameraDeviceInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->unlockConditions()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->notifyCameraError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->doOpenCamera(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mAliveCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mOpenCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getFacing(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCloseCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private closeCameraSync()V
    .locals 3

    .line 688
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 689
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x3c

    .line 705
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 707
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "lock.await()"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private doCloseCamera()V
    .locals 7

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 713
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doCloseCamera] mCaptureSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mCameraDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mCameraState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 714
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->closeCameraSync()V

    .line 715
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v2, 0x0

    .line 717
    :try_start_0
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    if-eqz v3, :cond_0

    .line 718
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCloseCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 719
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->unlockConditions()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 725
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 726
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 722
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 728
    :goto_1
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCurrCameraDeviceInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    .line 729
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doCloseCamera] spend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 724
    :goto_2
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 725
    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 726
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    throw v0
.end method

.method private doCreateCaptureSession(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;)V
    .locals 5

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 571
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin doCreateCaptureSession thread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    iget-object v2, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->listener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceSessionStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget v3, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->templateType:I

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mPreviewCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 575
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->updateCamMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 576
    iget-object v2, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->outputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 577
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mPreviewCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 580
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 583
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->outputs:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;->callback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 585
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 587
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end doCreateCaptureSession spend  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private doOpenCamera(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
    .locals 5

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 641
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCurrCameraDeviceInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    .line 642
    iget-object v2, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->stateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    iput-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    .line 643
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doOpenCamera cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->cameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 645
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->openCameraSync(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 670
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 675
    :try_start_1
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 676
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mOpenCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 679
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 683
    :goto_1
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doOpenCamera] mCameraDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",spend "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 681
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 682
    throw p1

    :catchall_1
    move-exception v0

    .line 651
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    .line 652
    sget-object v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke onCameraError e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mReopenCount = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 654
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

    if-eqz p1, :cond_1

    .line 655
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;->onCameraError()V

    .line 657
    :cond_1
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    return-void

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$5;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    .line 666
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mReopenCount:I

    return-void

    :catch_1
    move-exception p1

    .line 647
    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    .line 648
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private doSetRepeatingRequest(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;)V
    .locals 6

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 594
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 595
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin doSetRepeatingRequest thread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 596
    iget-object v3, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;->cameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    iput-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceCaptureListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureListener;

    .line 599
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mPreviewCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 602
    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ARCore updatePreviewRange, fpsRange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mPreviewCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 608
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mPreviewCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 609
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mResponseHandler:Landroid/os/Handler;

    .line 608
    invoke-virtual {v2, v3, p1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 611
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 613
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end doSetRepeatingRequest spend  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static findNearestSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 451
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 452
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 453
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 454
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v1, v3, :cond_0

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFacing(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    const-string p0, "-1"

    .line 334
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p1, :cond_1

    .line 336
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "0"

    .line 338
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "1"

    .line 340
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method private isReadyToCloseCamera()Z
    .locals 5

    .line 125
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 127
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    if-eq v0, v2, :cond_1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mAliveCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    throw v0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private isReadyToOpenCamera()Z
    .locals 0

    .line 118
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isUiThread()Z
    .locals 1

    .line 511
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$closeCameraSync$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 690
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[closeCameraSync] mCaptureSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mCameraDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_1

    .line 696
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 699
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "closeCameraSync() errpr"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    .line 701
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 702
    throw p0
.end method

.method private synthetic lambda$openCameraSync$0(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->cameraId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 626
    :try_start_1
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 628
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 629
    throw p0
.end method

.method private notifyCameraError(Ljava/lang/String;I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceStateListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceStateListener;->onError(Ljava/lang/String;I)V

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraError:Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;

    if-eqz p0, :cond_1

    .line 153
    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;->onCameraError()V

    :cond_1
    return-void
.end method

.method private openCameraSync(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 620
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 621
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraHandler:Landroid/os/Handler;

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 p0, 0x3c

    .line 632
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 634
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "lock.await()"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private unlockConditions()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCloseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mOpenCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mAliveCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    return-void
.end method

.method private updateCamMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 560
    new-instance p0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v0, [I

    const-string v1, "com.transsion.cameraMode"

    invoke-direct {p0, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 562
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private waitForIdleState()V
    .locals 4

    .line 102
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCloseCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->unlockConditions()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 110
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    throw v0

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public chooseOptimalSurfaceSize(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;
    .locals 10

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mRealScreenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 465
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mRealScreenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 470
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    .line 471
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 472
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1

    .line 473
    rem-int/lit8 v3, v0, 0x8

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 474
    :goto_0
    array-length v5, p1

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v6, p1, v4

    .line 475
    sget-object v7, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "option : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 477
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, v0, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, v1, :cond_2

    .line 478
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, v1

    div-int/2addr v8, v0

    if-ne v7, v8, :cond_2

    .line 479
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 483
    :cond_1
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, v0, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, v1, :cond_2

    .line 484
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, v1

    div-int/lit8 v9, v0, 0x10

    mul-int/lit8 v9, v9, 0x10

    div-int/2addr v8, v9

    if-gt v7, v8, :cond_2

    .line 485
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, v1

    div-int/2addr v8, v0

    if-lt v7, v8, :cond_2

    .line 486
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 492
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 493
    invoke-static {v2, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->findNearestSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object p2

    .line 496
    :cond_4
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "optimalSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    if-eqz p1, :cond_5

    .line 499
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 500
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/util/Size;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return-object p2
.end method

.method public closeCamera(Z)V
    .locals 2

    .line 408
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCamera mCameraState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->isReadyToCloseCamera()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x4

    .line 414
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    .line 415
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->doCloseCamera()V

    return-void
.end method

.method public createCaptureSession(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;)V
    .locals 2

    .line 364
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCaptureSession mCameraState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 368
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->doCreateCaptureSession(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionInfo;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 554
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->waitForIdleState()V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method

.method public getPrimitiveCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method public getPrimitiveCaptureSessionStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method public getPrimitiveDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraDeviceStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object p0
.end method

.method public getResponseHandler()Landroid/os/Handler;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mResponseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSensorOrientation(Ljava/lang/String;)I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz p0, :cond_0

    .line 444
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAlived()Z
    .locals 1

    .line 92
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public openCamera(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V
    .locals 2

    .line 384
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera mCameraState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCurrCameraDeviceInfo:Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->isReadyToOpenCamera()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIsActivityPause:Z

    if-eqz v0, :cond_1

    const-string p0, "ARCoreMainActivity is already pause"

    .line 392
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 395
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    .line 396
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->doOpenCamera(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceInfo;)V

    return-void
.end method

.method public pauseCamera()V
    .locals 1

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIsActivityPause:Z

    return-void
.end method

.method public resumeCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mIsActivityPause:Z

    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 515
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setOptimalSurfaceSizeChangedListener(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mListener:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    return-void
.end method

.method public setRepeatingRequest(ZLcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;)V
    .locals 2

    .line 375
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRepeatingRequest mCameraState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->mCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->doSetRepeatingRequest(Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceCaptureInfo;)V

    return-void
.end method
