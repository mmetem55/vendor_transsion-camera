.class public Lcom/transsion/camera/feature/mode/macro/MacroMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "MacroMode.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsWideCamUISupport:Z

.field private mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/macro/MacroMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private initUI()V
    .locals 3

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 90
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 1

    .line 95
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    const-string p0, "key_macro"

    const-string p1, "key_edit_watermark"

    const-string v0, "key_setting_smart_denoise"

    const-string v1, "key_fingerprint_capture"

    .line 85
    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 76
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mIsWideCamUISupport:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 77
    invoke-static {}, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v1, "value_wide_cam_support"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/macro/MacroModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v1, "value_wide_cam_not_support"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 34
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "is_widecam_item_ui_support_in_widecam"

    .line 35
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mIsWideCamUISupport:Z

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/macro/MacroMode;->initUI()V

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 3

    .line 46
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->showHint()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 59
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pause]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 68
    sget-object v0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/macro/MacroMode;->mMacroUI:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->hideHint()V

    :cond_0
    return-void
.end method
