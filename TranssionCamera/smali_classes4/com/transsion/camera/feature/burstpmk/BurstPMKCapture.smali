.class Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
.super Lcom/transsion/camera/feature/common/BaseCapture;
.source "BurstPMKCapture.java"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture;
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;
    }
.end annotation


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

.field private final mLock:Ljava/lang/Object;

.field private mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mMoveListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

.field private final mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

.field private mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

.field private mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 48
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    .line 60
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    .line 181
    new-instance p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    const/4 p2, 0x1

    .line 182
    iput p2, p1, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mDirection:I

    .line 183
    new-instance p1, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/panorama/PanoramaEngine;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    .line 184
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKModeHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKModeHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;Landroid/graphics/Point;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->onMoveProgressUpdate(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;[BIII)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/common/BaseCapture;->savePicture([BIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureFailed()V

    return-void
.end method

.method private calculateFOV()V
    .locals 11

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSensorPhysicalSize(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV size is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getLensFocalLengths(Ljava/lang/String;)[F

    move-result-object v1

    .line 315
    array-length v2, v1

    if-gtz v2, :cond_1

    .line 316
    sget-object p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "calculateFOV focus is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    .line 321
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

    iput v3, v2, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mCameraViewAngleForWidth:F

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    .line 323
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

    iput v0, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mCameraViewAngleForHeight:F

    return-void
.end method

.method private onMoveProgressUpdate(Landroid/graphics/Point;)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 216
    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;

    if-nez v3, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    invoke-interface {v3, p1}, Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;->onMoveProgress(Landroid/graphics/Point;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendStopCommand()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->process(ILandroid/util/Pair;)V

    return-void
.end method


# virtual methods
.method protected doPreCapture()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->config(Lcom/transsion/camera/featurelibs/panorama/ConfigParam;)Z

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;->access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;)V

    .line 251
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doPreCapture()V

    return-void
.end method

.method protected doStopCapture()Z
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->doStopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->sendStopCommand()V

    :cond_0
    return v0
.end method

.method public init(Z)V
    .locals 1

    .line 242
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->init(Z)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {v0, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->init(Z)Z

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanoramaCallback:Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

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

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->process(ILandroid/util/Pair;)V

    return-void
.end method

.method public onDirectionChange(I)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mDirection:I

    return-void
.end method

.method protected onStreamAvailable(III)V
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->calculateFOV()V

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mImageWidth:I

    .line 299
    iput p2, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mImageHeight:I

    .line 300
    iput p3, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mImageFormat:I

    return-void
.end method

.method public registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSpeedListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V
    .locals 2

    .line 194
    new-instance v0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;-><init>(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    return-void
.end method

.method public setThumbnailListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    return-void
.end method

.method public setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mThumbnailHeight:I

    .line 292
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mThumbnailBgWidth:I

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 270
    invoke-super {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->unInit()V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->setCallback(Lcom/transsion/camera/featurelibs/panorama/IPanorama$PanoramaCallback;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mPanorama:Lcom/transsion/camera/featurelibs/panorama/IPanorama;

    invoke-interface {v0}, Lcom/transsion/camera/featurelibs/panorama/IPanorama;->unInit()Z

    .line 274
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mSpeedListener:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture$SpeedListenerWrapper;

    .line 275
    iput-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mThumbnailListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 278
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 280
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

.method public unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mMoveListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v0

    return-void

    .line 229
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateOrientation(I)V
    .locals 2

    .line 285
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateOrientation(I)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->mConfigParam:Lcom/transsion/camera/featurelibs/panorama/ConfigParam;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    .line 287
    invoke-virtual {v1, p1, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getOrientation(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/featurelibs/panorama/ConfigParam;->mOrientation:I

    return-void
.end method
