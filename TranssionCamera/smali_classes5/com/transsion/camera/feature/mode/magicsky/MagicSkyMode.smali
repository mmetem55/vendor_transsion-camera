.class public Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "MagicSkyMode.java"


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


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private iShutterClickCallback:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

.field private final mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mIsDetect:I

.field private mLastDetect:I

.field private mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

.field private mResumeTimestamp:J


# direct methods
.method public static synthetic $r8$lambda$6XJASazMd7v88rb8l1g5Yj4aSQA(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MagicSkyMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    .line 43
    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mLastDetect:I

    .line 167
    new-instance p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$1;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->iShutterClickCallback:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    .line 261
    new-instance p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$2;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 273
    new-instance p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private static findBestMatchPanelSize(Ljava/util/List;DIID)Landroid/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;DIID)",
            "Landroid/util/Size;"
        }
    .end annotation

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_0

    const/16 p4, 0x240

    .line 323
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    .line 324
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    sub-double/2addr v3, p1

    .line 326
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, p5

    if-gtz v3, :cond_1

    .line 328
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v3, v0

    if-gtz v5, :cond_1

    move-object p3, v2

    move-wide v0, v3

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method private getPreviewSize(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            "ZD)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 285
    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p4

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double v0, p0

    mul-double/2addr v0, p2

    double-to-int v3, v0

    if-eqz p5, :cond_0

    .line 289
    sget-object p4, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ratio mapping panel size: ("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p1

    move-wide v1, p2

    move v4, p0

    move-wide v5, p6

    .line 290
    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->findBestMatchPanelSize(Ljava/util/List;DIID)Landroid/util/Size;

    move-result-object p4

    if-eqz p4, :cond_1

    return-object p4

    :cond_0
    const/4 p4, 0x0

    :cond_1
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez p4, :cond_4

    .line 298
    sget-object p5, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPreviewSize] no preview size match the aspect ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", then use standard 4:3 for preview"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide p2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/Size;

    .line 302
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v2, p2

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, p6

    if-lez v2, :cond_3

    goto :goto_0

    .line 306
    :cond_3
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    .line 308
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p4

    sub-int/2addr p4, p0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    int-to-double v0, p4

    move-object p4, p5

    goto :goto_0

    :cond_4
    return-object p4
.end method

.method private initMagicSkyUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v3

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onOrientationChanged(I)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    instance-of p2, p1, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz p2, :cond_1

    .line 158
    check-cast p1, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string p2, "key_magic_sky_type"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->iShutterClickCallback:Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setShutterClickCallback(Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;)V

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_self_timer"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "off"

    .line 162
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setShutterBarSelfTimerDrawable(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 1

    .line 274
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkMagicSkyDetection(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p1

    .line 275
    sget-object p2, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sky Detection is : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    const-string p3, "key_magic_sky_detection"

    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    .line 278
    iget p2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mLastDetect:I

    if-eq p2, p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const-string p2, "key_magic_sky_type"

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    .line 280
    iget p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mIsDetect:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mLastDetect:I

    :cond_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 93
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getLowStorageMessage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$string;->storage_full:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const-string p0, "key_tran_plugin"

    const-string p1, "key_magic_sky_type"

    const-string v0, "key_edit_watermark"

    const-string v1, "key_fingerprint_capture"

    .line 105
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 81
    invoke-static {}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 82
    invoke-static {}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v2

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    const/4 v5, 0x1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    move-object v0, p0

    move-object v1, p1

    .line 100
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 53
    sget-object p1, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p4, "init mode"

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->initMagicSkyUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    const-string p1, "key_self_timer_status"

    .line 57
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_self_timer"

    .line 58
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 212
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 218
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, -0x1

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v1, p1

    goto :goto_1

    :sswitch_0
    const-string v0, "status_self_timer_begin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "status_self_timer_cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v0, "status_self_timer_end"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 236
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz p0, :cond_7

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hide()V

    goto :goto_2

    .line 242
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz p0, :cond_7

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->show()V

    goto :goto_2

    .line 221
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setShutterBarSelfTimerDrawable(Z)V

    goto :goto_2

    .line 223
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setShutterBarSelfTimerDrawable(Z)V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xaded465 -> :sswitch_2
        -0x5096c46 -> :sswitch_1
        0x31566b69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSettingReady()V
    .locals 1

    .line 255
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClick(I)Z

    move-result p0

    return p0
.end method

.method protected onShutterClickBefore(I)Z
    .locals 4

    .line 187
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mResumeTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Do not take pictures for 5 seconds after the camera is started in monkey scene."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->isSkySelectUIShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 1

    .line 144
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateAdapterPosition()V

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mResumeTimestamp:J

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 63
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "uninit mode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_self_timer_status"

    .line 65
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_self_timer"

    .line 66
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->unInitMagicSkyUI()V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setShutterClickCallback(Lcom/transsion/camera/app/ui/mode/magicsky/IShutterClickCallback;)V

    .line 70
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mMagicSkyPanelUI:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-interface {v0, v1, v2, v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/magicsky/MagicSkyMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 76
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSkyType(I)V

    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updatePreviewSize(Landroid/util/Size;)V

    return-void
.end method
