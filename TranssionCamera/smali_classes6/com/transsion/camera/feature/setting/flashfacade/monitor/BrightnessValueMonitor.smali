.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.super Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;
.source "BrightnessValueMonitor.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;,
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;
    }
.end annotation


# static fields
.field private static final AE_STABLE_COUNT:I = 0x7

.field private static final EXTEND_DURATION:J = 0x2bcL

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBVCount:I

.field private mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

.field private mBrightnessForPrint:I

.field private mCapturing:Z

.field private mContext:Landroid/content/Context;

.field private final mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

.field private mNextReadyTime:J

.field private final mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

.field private mResumed:Z

.field private final mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    .line 60
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mContext:Landroid/content/Context;

    .line 61
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    .line 62
    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    .line 63
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashConfig()Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    .line 64
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    return-void
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private capturing()Z
    .locals 6

    .line 137
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 141
    iget-wide v4, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNextReadyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    const-wide/16 v4, 0x2bc

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private printCurrentBrightness([I)V
    .locals 3

    const-string v0, "onFrameResult current brightness: "

    if-eqz p1, :cond_1

    .line 190
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 193
    aget p1, p1, v1

    .line 194
    iget v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    if-eq v1, p1, :cond_2

    .line 195
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iput p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateDetector()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->ringScreenLightSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    if-eq v0, v1, :cond_1

    .line 101
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mStableDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$StableDetector;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    if-eq v0, v1, :cond_1

    .line 106
    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNormalDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    :cond_2
    return-void
.end method


# virtual methods
.method public captureStart()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    return-void
.end method

.method public facingDetect()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->facingFront()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->reset()V

    :cond_0
    return-void
.end method

.method public lowLight()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->lowLight()Z

    move-result p0

    return p0
.end method

.method public nextCaptureReady()V
    .locals 2

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mNextReadyTime:J

    return-void
.end method

.method protected onFrameResultLocked(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 1

    .line 155
    iget-boolean p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    if-nez p2, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->capturing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->correctTime()V

    return-void

    .line 162
    :cond_1
    sget-object p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->BRIGHTNESS_VALUE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    if-eq p2, v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->printCurrentBrightness([I)V

    if-eqz p1, :cond_6

    .line 173
    array-length p2, p1

    if-gtz p2, :cond_4

    goto :goto_0

    .line 177
    :cond_4
    iget p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    const/4 p3, 0x7

    if-ge p2, p3, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 178
    iput p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    return-void

    .line 182
    :cond_5
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessDetector:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;

    const/4 p3, 0x0

    aget p1, p1, p3

    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$IBrightnessDetector;->detect(I)Z

    move-result p1

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;

    if-eqz p0, :cond_6

    .line 185
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$BrightnessCallback;->onBrightnessDetected(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mCapturing:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    return-void
.end method

.method public startMonitor()V
    .locals 2

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mResumed:Z

    .line 92
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->BRIGHTNESS_VALUE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->updateDetector()V

    .line 94
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    .line 95
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->startMonitor()V

    return-void
.end method

.method public stopMonitor()V
    .locals 2

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBVCount:I

    .line 118
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->NONE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->mMonitorType:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    .line 119
    iput v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mBrightnessForPrint:I

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;->mFacingTracker:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->facingFront()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;Z)Z

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BaseBrightnessMonitor;->stopMonitor()V

    return-void
.end method
