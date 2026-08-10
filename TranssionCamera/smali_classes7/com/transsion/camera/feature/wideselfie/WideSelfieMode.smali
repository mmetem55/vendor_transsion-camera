.class public Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "WideSelfieMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;"
    }
.end annotation


# instance fields
.field private isSupportFingerprintCapture:Z

.field private final m3AController:Lcom/transsion/camera/feature/common/I3AController;

.field private final mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

.field private final mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

.field private mIsSupportAELock:Z

.field private mOrientation:I

.field private mPreviewSize:Landroid/util/Size;

.field private final mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private final mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private final mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

.field private mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

.field private mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

.field private mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

.field private mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    .line 69
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    .line 127
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    .line 147
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 159
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    .line 173
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$5;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    .line 195
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;[B)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mAeAfLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Z)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;Z)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->lock3A(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private updateOrientation(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->updateOrientation(I)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BasePreview;->updateOrientation(I)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 289
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateOrientation(I)V

    return-void
.end method

.method private updateThumbnailSize(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :goto_0
    return-void
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

    .line 432
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

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

    .line 416
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 3

    .line 402
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 404
    iget-boolean v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->isSupportFingerprintCapture:Z

    if-nez v1, :cond_0

    const-string v1, "key_fingerprint_capture"

    const-string v2, "off"

    .line 405
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    if-nez p0, :cond_1

    .line 408
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->EXPOSURE_ZERO:Ljava/lang/String;

    const-string v1, "key_exposure"

    invoke-virtual {v0, v1, p0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 0

    return-object p5
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 382
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->getSupportFoldUIType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 388
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    :cond_2
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 389
    invoke-super {p0, p1, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSizeMatch64(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 391
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize mPreviewSize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 1

    .line 227
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 229
    new-instance p6, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p6, p3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    .line 230
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p7

    const-string v0, "is_support_ae_lock"

    invoke-static {p6, v0, p7}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    iput-boolean p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    .line 232
    new-instance p6, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-object p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p6, p3, p7}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 233
    invoke-virtual {p6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->initView()V

    .line 235
    new-instance p6, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    iget-object p7, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p6, p3, p7, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;Z)V

    iput-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    .line 236
    invoke-virtual {p6}, Lcom/transsion/camera/feature/common/BasePreview;->modeInit()V

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p6, Lcom/transsion/camera/feature/panoramawideselfie/R$bool;->panorama_support_fingerprint_capture:I

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->isSupportFingerprintCapture:Z

    .line 238
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->m3AController:Lcom/transsion/camera/feature/common/I3AController;

    invoke-direct {p1, p5, p6, p4, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/common/I3AController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    const/4 p2, 0x1

    .line 240
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->init(Z)V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mDirectionListener:Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setDirectionListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;)V

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public needUnintModeWhenPause()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 343
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 365
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 366
    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mOrientation:I

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 369
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 370
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 2

    .line 375
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 377
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    return-void
.end method

.method public onSettingReady()V
    .locals 4

    .line 271
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 272
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 274
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->createDataStream()V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 279
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 4

    .line 348
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 359
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->shutterClick()V

    return v0
.end method

.method public pause()V
    .locals 2

    .line 327
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 330
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->pause()V

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->destroyDataStream()V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->stopCapture()Z

    return-void
.end method

.method public resume()V
    .locals 4

    .line 318
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->resume()V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->resume()V

    .line 322
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    if-nez v0, :cond_0

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setModeChangeFlag mWideSelfieUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->setModeChangeFlag(Z)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method protected supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateBackCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->afLockSupport()Z

    move-result p0

    if-nez p0, :cond_1

    .line 469
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0

    .line 471
    :cond_1
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method protected supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mIsSupportAELock:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportedLockStateFrontCamera()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p0

    return-object p0

    .line 460
    :cond_0
    sget-object p0, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    return-object p0
.end method

.method public unInit()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->unInitView()V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->modeUnInit()V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 312
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
