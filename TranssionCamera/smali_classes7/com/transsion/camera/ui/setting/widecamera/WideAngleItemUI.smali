.class public Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.source "WideAngleItemUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideCameraResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mResources:Landroid/content/res/Resources;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mWideCameraItemText:[Ljava/lang/String;

.field private mWideCameraZoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 54
    new-instance p1, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 56
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraZoomList:Ljava/util/List;

    .line 171
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f05009e

    .line 172
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    const p1, 0x7f030141

    .line 173
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraItemText:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 50
    sget-object v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->showWideHint()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateHintByZoom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->getZoomRatioByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateTextEntryView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Ljava/lang/String;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->deviceZoomInShowRange(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/content/res/Resources;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    return p0
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .locals 0

    .line 190
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0x64

    :goto_0
    return p0
.end method

.method private deviceZoomInShowRange(Ljava/lang/String;)Z
    .locals 0

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCurrentZoom()I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->convertZoom(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getEquivalentZoom(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x64

    return p0
.end method

.method private getZoomRatioByValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraItemText:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraItemText:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private isIszZoomStatus()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSatReplacedWide()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyZoomUi(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_normal_camera_item_long_click"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_normal_camera_item_long_click_in_normal"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private showWideHint()V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isMicroPanTiltCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f1001d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f100241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    return-void
.end method

.method private updateHintByZoom(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "100"

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 144
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 145
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    return-void
.end method

.method private updateTextEntryView(Ljava/lang/String;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private zoomUnderBase()Z
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->getCurrentZoom()I

    move-result p0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 0

    .line 221
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method public getExtraKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method protected getZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 155
    sget-object p1, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getZoomValue] zoomValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    rem-int/lit8 p1, p0, 0xa

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    add-int/lit8 p0, p0, -0x5

    .line 160
    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, ".%dx"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected init()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->zoomUnderBase()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 216
    :goto_1
    sget-object v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WideCameraSideBar init, isSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 399
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_1

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onClickEvent()Z
    .locals 7

    .line 233
    sget-object v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WideCamera mCurrentEntryValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const-string v2, "60"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateTextEntryView()V

    return v3

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v4, "on"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz v0, :cond_4

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_3

    const-string v0, "100"

    .line 243
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_3
    return v3

    .line 248
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_macro"

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 251
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->isSatReplacedWide()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 252
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v2, v6, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_9

    .line 256
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 258
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->updateTextEntryView()V

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showCenterZoomRatio()V

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->isSatReplacedWide()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 261
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setToNextIndex()V

    goto :goto_2

    .line 265
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setToNextIndex()V

    .line 267
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_wide_camera_item_wide_cam_seleccted"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->isSatReplacedWide()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v1, "replace"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_3

    .line 272
    :cond_c
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v1, :cond_e

    :cond_d
    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_f

    :cond_e
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 279
    :cond_f
    :goto_3
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    if-eqz v0, :cond_11

    .line 280
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v1, "wide_macro_exchange"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->startSelectedAnimation(Landroid/view/View;)V

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->showWideHint()V

    :cond_11
    return v3
.end method

.method protected onLongClickEvent()Z
    .locals 4

    .line 378
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    const/4 v1, 0x1

    const-string v2, "value_wide_camera_item_first_zoom_seleccted"

    const-string v3, "key_wide_camera_item_long_click"

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->notifyZoomUi(Z)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->isIszZoomStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->notifyZoomUi(Z)V

    :goto_0
    return v1
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 289
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 290
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0300b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f030146

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_zoom_limit_monitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "wide_camera"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 297
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideCameraResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$WideCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mZoomSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WideCameraItemUI endHint.....mHintInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "wide_camera"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_camera_zoom"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 312
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unInit()V

    return-void
.end method

.method protected updateTextEntryView()V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_camera_zoom"

    const-string v3, "100"

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;->getZoomRatioByValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 349
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
