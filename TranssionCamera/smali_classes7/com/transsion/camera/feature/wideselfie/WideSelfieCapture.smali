.class Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;
.super Lcom/transsion/camera/feature/common/BaseCapture;
.source "WideSelfieCapture.java"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture;


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

.field private mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

.field private final mFaceBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacingFront:Z

.field private final mLock:Ljava/lang/Object;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private final mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mThumbnailListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

.field private final mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

.field private final mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    .line 55
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    .line 66
    new-instance p2, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture$1;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    .line 118
    new-instance p2, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-direct {p2}, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    .line 119
    new-instance p2, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;

    invoke-direct {p2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    .line 120
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFacingFront:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mThumbnailListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;[BIII)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void
.end method

.method private calculateFOV()V
    .locals 11

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV size is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object v1

    .line 283
    array-length v2, v1

    if-gtz v2, :cond_1

    .line 284
    sget-object p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV focus is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    .line 289
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    aget v5, v1, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    double-to-float v3, v7

    iput v3, v2, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mCameraViewAngleForWidth:F

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    .line 291
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    aget v1, v1, v4

    mul-float/2addr v1, v6

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v9

    double-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mCameraViewAngleForHeight:F

    return-void
.end method

.method private sendStopCommand()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(ILandroid/util/Pair;[Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected doCapture()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doCapture()V

    return-void

    :catchall_0
    move-exception p0

    .line 153
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected doPreCapture()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    .line 146
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doPreCapture()V

    return-void
.end method

.method public doStopCapture()Z
    .locals 4

    .line 159
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doStopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->sendStopCommand()V

    .line 164
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return v0
.end method

.method public init(Z)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->init()Z

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfieCallback:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method protected onDataAvailable(Landroid/util/Pair;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;III)V"
        }
    .end annotation

    .line 262
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 263
    :try_start_0
    iget-object p3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 265
    new-array p3, p3, [Landroid/graphics/Rect;

    .line 266
    iget-object p4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 268
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    iget-object p4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p4

    .line 270
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, p3}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(ILandroid/util/Pair;[Landroid/graphics/Rect;)V

    .line 273
    :cond_1
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 268
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 7

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/common/BaseCapture;->onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 207
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    move v0, p2

    :goto_0
    if-lez v0, :cond_8

    if-gtz p2, :cond_1

    goto :goto_4

    .line 216
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_7

    .line 217
    array-length v2, v1

    if-gtz v2, :cond_2

    goto :goto_3

    .line 224
    :cond_2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_6

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v2, v3

    .line 232
    invoke-static {p1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 236
    :try_start_0
    iget-object v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 237
    array-length v4, v1

    :goto_1
    if-ge p3, v4, :cond_5

    aget-object v5, v1, p3

    .line 239
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6, v2, v0, p2}, Lcom/transsion/camera/utils/CoordinatesUtil;->sensorToPreviewSpace(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v6

    .line 242
    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    iget-object v5, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 246
    :cond_5
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 226
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 227
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 228
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 218
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 219
    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 220
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 210
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 211
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 212
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method

.method protected onStreamAvailable(III)V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->calculateFOV()V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iput p1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mImageWidth:I

    .line 253
    iput p2, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mImageHeight:I

    .line 254
    iput p3, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mImageFormat:I

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, v0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    return-void
.end method

.method public setDirectionListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    return-void
.end method

.method setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mThumbnailListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;

    return-void
.end method

.method public setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mThumbnailHeight:I

    .line 197
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mThumbnailBgWidth:I

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFaceBounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->unInit()Z

    return-void

    :catchall_0
    move-exception p0

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateOrientation(I)V
    .locals 3

    .line 185
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateOrientation(I)V

    .line 186
    iget-boolean v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mFacingFront:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->isVipMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v1, p1, p0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;Z)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mOrientation:I

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;->mOrientation:I

    :goto_0
    return-void
.end method
