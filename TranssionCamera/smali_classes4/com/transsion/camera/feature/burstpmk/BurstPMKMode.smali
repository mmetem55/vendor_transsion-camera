.class public Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "BurstPMKMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isSupportFingerprintCapture:Z

.field private final m3AController:Lcom/transsion/camera/feature/common/I3AController;

.field private mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

.field private mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

.field private mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

.field private final mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

.field private mIsSupportAELock:Z

.field private mPreviewSize:Landroid/util/Size;

.field private final mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private final mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private final mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

.field private mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    .line 61
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    .line 119
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    .line 139
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    .line 152
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    .line 166
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$5;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;[B)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;Z)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 350
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 336
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 338
    iget-boolean v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->isSupportFingerprintCapture:Z

    if-nez v1, :cond_0

    const-string v1, "key_fingerprint_capture"

    const-string v2, "off"

    .line 339
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    if-nez p0, :cond_1

    .line 342
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    const-string v1, "key_exposure"

    invoke-virtual {v0, v1, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v1, v3

    .line 324
    invoke-super {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSizeMatch64(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreviewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 1

    .line 195
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 197
    new-instance p6, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p6, p3}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 199
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p7

    const-string v0, "is_support_ae_lock"

    invoke-static {p6, v0, p7}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    iput-boolean p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    .line 201
    new-instance p6, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p6, p3, p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    .line 202
    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    invoke-virtual {p6, p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->setDirectionListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;)V

    .line 203
    iget-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->initView()V

    .line 205
    new-instance p6, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    iget-object p7, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p6, p3, p7}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    .line 206
    invoke-virtual {p6}, Lcom/transsion/camera/feature/common/BasePreview;->modeInit()V

    .line 208
    new-instance p3, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    invoke-direct {p3, p5, p6, p4, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/panoramawideselfie/R$array;->high_platform:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sget-object p3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 211
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "highPlatform: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, ", Build.HARDWARE: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->panorama_support_fingerprint_capture:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->isSupportFingerprintCapture:Z

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->init(Z)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;)V

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setSpeedListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V

    .line 219
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/common/BaseCapture;->setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V

    return-void
.end method

.method public needUnintModeWhenPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 292
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 314
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->onOrientationChanged(I)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->updateOrientation(I)V

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->updateOrientation(I)V

    return-void
.end method

.method public onSettingReady()V
    .locals 5

    .line 241
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->updateOrientation(I)V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->createDataStream()V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 250
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 4

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 308
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->shutterClick()V

    return v0
.end method

.method public pause()V
    .locals 2

    .line 276
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 279
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->pause()V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->destroyDataStream()V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 269
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->resume()V

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->resume()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1

    .line 388
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 390
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 379
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->unInitView()V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->modeUnInit()V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 257
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
