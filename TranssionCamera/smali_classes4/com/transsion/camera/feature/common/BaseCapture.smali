.class public abstract Lcom/transsion/camera/feature/common/BaseCapture;
.super Ljava/lang/Object;
.source "BaseCapture.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture;
.implements Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;,
        Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;,
        Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;,
        Lcom/transsion/camera/feature/common/BaseCapture$PendingState;,
        Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;,
        Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;,
        Lcom/transsion/camera/feature/common/BaseCapture$IdleState;,
        Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    }
.end annotation


# static fields
.field private static final JPEG_QUALITY:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final m3AController:Lcom/transsion/camera/feature/common/I3AController;

.field private final mAvailabilityListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

.field protected final mCameraId:Ljava/lang/String;

.field private final mCaptureEnableState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private final mCaptureSavingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private final mCaptureStartingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private final mCaptureStoppingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private final mCapturingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private final mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

.field private final mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

.field protected final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mIdleState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

.field private final mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

.field protected mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

.field protected volatile mOrientation:I

.field private mPendingAvailable:Z

.field private mPendingCreate:Z

.field private mPendingDestroy:Z

.field protected final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private final mStateSwitchLock:Ljava/lang/Object;

.field protected mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mStreamStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$1;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mAvailabilityListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    .line 92
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$2;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    .line 326
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$4;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    .line 348
    new-instance v0, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseCapture$IdleState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mIdleState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 349
    new-instance v1, Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureEnableState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 350
    new-instance v1, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStartingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureStartingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 351
    new-instance v1, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture$CapturingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCapturingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 352
    new-instance v1, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureStoppingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 353
    new-instance v1, Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture$CaptureSavingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureSavingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 360
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStateSwitchLock:Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCameraId:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    .line 109
    iput-object p3, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 110
    iput-object p4, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 111
    new-instance p1, Lcom/transsion/camera/feature/common/CommonModeHelper;

    invoke-direct {p1}, Lcom/transsion/camera/feature/common/CommonModeHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mModeHelper:Lcom/transsion/camera/feature/common/CommonModeHelper;

    .line 112
    new-instance p1, Lcom/transsion/camera/feature/common/DataStream;

    invoke-direct {p1, p3}, Lcom/transsion/camera/feature/common/DataStream;-><init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    .line 113
    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/common/BaseCapture;Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStreamStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureEnableState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/common/BaseCapture;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mPendingCreate:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mPendingCreate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureStartingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/common/BaseCapture;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/IDataStream;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCapturingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/common/BaseCapture;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mPendingAvailable:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mPendingAvailable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/common/BaseCapture;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mPendingDestroy:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/feature/common/BaseCapture;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mPendingDestroy:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureStoppingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCaptureSavingState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerCaptureEnd()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/common/BaseCapture;)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStateSwitchLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mIdleState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    return-object p0
.end method

.method private lock3A(Z)V
    .locals 3

    .line 340
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock3A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/common/I3AController;->lock3A(Z)V

    return-void
.end method

.method private triggerCaptureEnd()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->captureSuccess()V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_0

    .line 214
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureEnd()V

    :cond_0
    return-void
.end method

.method private triggerSavingStart()V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->startSaving()V

    return-void
.end method


# virtual methods
.method public final createDataStream()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mAvailabilityListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {v0}, Lcom/transsion/camera/feature/common/IDataStream;->createStream()V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->createStream()V

    return-void
.end method

.method public final destroyDataStream()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/common/IDataStream;->setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDataStream:Lcom/transsion/camera/feature/common/IDataStream;

    invoke-interface {v0}, Lcom/transsion/camera/feature/common/IDataStream;->destroyStream()V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->destroyStream()V

    return-void
.end method

.method protected doCapture()V
    .locals 1

    .line 164
    sget-object p0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "doCapture"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    return-void
.end method

.method protected doPreCapture()V
    .locals 2

    .line 155
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doPreCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureStart()V

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string v0, "camera_click.ogg"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->shutterSoundPlay(Ljava/lang/String;)V

    return-void
.end method

.method protected doStopCapture()Z
    .locals 2

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doStopCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_0

    .line 177
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureStop()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public init(Z)V
    .locals 0

    return-void
.end method

.method protected abstract onDataAvailable(Landroid/util/Pair;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "[B>;III)V"
        }
    .end annotation
.end method

.method public onFrameResult(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 184
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    .line 185
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->onAeLocked()V

    :cond_0
    return-void
.end method

.method protected abstract onStreamAvailable(III)V
.end method

.method protected savePicture([BIII)V
    .locals 8

    .line 224
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->triggerSavingStart()V

    .line 226
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/transsion/camera/feature/common/BaseCapture$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/common/BaseCapture$3;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;[BIII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    return-void
.end method

.method public setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStreamStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    return-void
.end method

.method public setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    return-void
.end method

.method public final shutterClick()V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->shutterClick()V

    return-void
.end method

.method public final stopCapture()Z
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->stopCapture()Z

    move-result p0

    return p0
.end method

.method protected triggerCaptureFailed()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mCurrentState:Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->captureFail()V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    if-eqz p0, :cond_0

    .line 207
    invoke-interface {p0}, Lcom/transsion/camera/feature/common/ICapture$IStatusListener;->onCaptureFailed()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mOrientation:I

    return-void
.end method

.method public updateOrientation(I)V
    .locals 3

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/common/BaseCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mOrientation:I

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
