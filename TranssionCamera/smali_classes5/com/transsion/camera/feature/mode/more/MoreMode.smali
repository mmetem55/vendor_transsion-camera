.class public Lcom/transsion/camera/feature/mode/more/MoreMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "MoreMode.java"


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
.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

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

    .line 80
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/more/MoreMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 70
    invoke-static {}, Lcom/transsion/camera/feature/mode/more/MoreModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    float-to-double v1, p0

    .line 65
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    .line 64
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 42
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/more/MoreMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_0

    .line 46
    new-instance p2, Lcom/transsion/camera/feature/mode/more/MoreModePreview;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/more/MoreModePreview;-><init>()V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/more/MoreMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    return-void
.end method
