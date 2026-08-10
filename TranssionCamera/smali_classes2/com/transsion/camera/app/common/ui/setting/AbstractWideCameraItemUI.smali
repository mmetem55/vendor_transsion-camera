.class public Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.super Ljava/lang/Object;
.source "AbstractWideCameraItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;,
        Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;,
        Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAsdMode:Z

.field protected final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mCurrentEntryValue:Ljava/lang/String;

.field protected mDefaultSecondValue:I

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEntryView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field protected mIs2XBlurCamera:Z

.field protected mIsBackCamera:Z

.field protected mIsBlurCamera:Z

.field private mIsEnabled:Z

.field protected mIsHighDefiniteCamera:Z

.field private mIsLongPressTriggered:Z

.field protected mIsSATCamera:Z

.field private mIsScrollTriggered:Z

.field protected mIsSupportTele:Z

.field protected mIsTeleCamera:Z

.field private mIsTouchZoomSupported:Z

.field protected mIsVideoCamera:Z

.field protected mIsWideCamera:Z

.field private mIsZoomBarShow:Z

.field private mLastScrollX:F

.field private mLastScrollY:F

.field protected mOverrideClickListener:Landroid/view/View$OnClickListener;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mQueryLongClickStatus:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;

.field protected mSatReplaceWide:Z

.field protected mSatSupportWide:Z

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field protected mSmoothZoomNeed:Z

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected final mUIHandler:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$Le8Qt91u3fl6BFLX6-98AoTwn6Q(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->lambda$notifyCameraOperateAction$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractWideCameraItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$SettingBaseChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 66
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoCamera:Z

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSupportTele:Z

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsHighDefiniteCamera:Z

    const/4 v2, 0x1

    .line 78
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    .line 80
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsEnabled:Z

    .line 86
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsZoomBarShow:Z

    .line 87
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTouchZoomSupported:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 108
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mLastScrollY:F

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mLastScrollY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->transmitMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Landroid/view/GestureDetector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTouchZoomSupported:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsLongPressTriggered:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsLongPressTriggered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsZoomBarShow:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsScrollTriggered:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsScrollTriggered:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mLastScrollX:F

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mLastScrollX:F

    return p1
.end method

.method private createSupportEntries()Z
    .locals 5

    .line 529
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 530
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 536
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 538
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 541
    array-length v0, v0

    if-nez v0, :cond_1

    .line 542
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 531
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private synthetic lambda$notifyCameraOperateAction$0(Landroid/view/View;)V
    .locals 0

    .line 473
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onClickEvent()Z

    return-void
.end method

.method private setValueByIndex(I)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 517
    array-length v1, v0

    .line 518
    rem-int/2addr p1, v1

    .line 519
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryView()V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupEntryView()V
    .locals 4

    .line 231
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mGestureDetector:Landroid/view/GestureDetector;

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getEntryViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryView()V

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTouchZoomSupported:Z

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private shouldShown()Z
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    .line 558
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private transmitMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_move_event"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 290
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected baseZoomCamera()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsHighDefiniteCamera:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    .line 193
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "sat_support_wide"

    .line 192
    invoke-static {p1, v0, p3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatSupportWide:Z

    .line 195
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "sat_replace_wide"

    .line 194
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSatReplaceWide:Z

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->init()V

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setupEntryView()V

    .line 198
    iput-object p4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mQueryLongClickStatus:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .locals 3

    .line 490
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnStatusChanged value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 493
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->createSupportEntries()Z

    .line 494
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateEntryView()V

    :cond_0
    return-void
.end method

.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLongFocusZoomString()Ljava/lang/String;
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLongFocusZoomValue()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 597
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    if-gtz v0, :cond_0

    .line 599
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I

    :cond_0
    return v0
.end method

.method protected getLongFocusZoomValue(I)I
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p0

    return p0
.end method

.method protected getSupport()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getZoomRatio(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 349
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getZoomValue] zoomValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 350
    rem-int/lit8 p1, p0, 0x64

    const-string v0, "%dx"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 351
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :cond_0
    rem-int/lit8 p1, p0, 0xa

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    add-int/lit8 p0, p0, -0x5

    .line 355
    rem-int/lit8 p1, p0, 0x64

    if-nez p1, :cond_1

    .line 356
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    div-int/lit8 v3, p0, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%d.%dx"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method protected isFacingBack()Z
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needShowEntryView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2f

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 464
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsZoomBarShow:Z

    goto :goto_0

    .line 472
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTouchZoomSupported:Z

    .line 473
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 469
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsZoomBarShow:Z

    goto :goto_0

    .line 476
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTouchZoomSupported:Z

    :goto_0
    return-void
.end method

.method protected onClickEvent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onLongClickEvent()Z
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showSeekBar()V

    const/4 p0, 0x0

    return p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method protected registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public restoreDefaultValue()V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 3

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 394
    sget-object p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getVideoCameraId()Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    .line 401
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getFrontWideCameraId()Ljava/lang/String;

    move-result-object p1

    .line 402
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsWideCamera:Z

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBackCamera:Z

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsVideoCamera:Z

    .line 405
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    .line 406
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getOpticalZoomCameraId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSupportTele:Z

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    .line 408
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isHighDefiniteCamera(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsHighDefiniteCamera:Z

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 417
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    .line 420
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 421
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3

    .line 422
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_camera_zoom"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 427
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsEnabled:Z

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setSecondZoomDefaultValue(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDefaultSecondValue:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method protected setToNextIndex()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 511
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setValueByIndex(I)V

    :cond_0
    return-void
.end method

.method protected showCenterZoomRatio()V
    .locals 2

    .line 303
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_show_center_zoom_ratio"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected showSeekBar()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mQueryLongClickStatus:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$ILongClickDetection;->supportLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_normal_camera_item_long_click"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_normal_camera_item_long_click_in_normal"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected startSelectedAnimation(Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_0

    .line 563
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "popupContainer is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 567
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    .line 568
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v3, v0, [F

    .line 569
    fill-array-data v3, :array_2

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    .line 570
    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 571
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 572
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .locals 3

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 386
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .locals 1

    .line 505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mAsdMode:Z

    return-void
.end method

.method protected updateEntryView()V
    .locals 2

    .line 314
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->shouldShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateImageEntryView()V

    goto :goto_0

    .line 317
    :cond_0
    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->updateTextEntryView()V

    goto :goto_0

    .line 321
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateImageEntryView()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    .line 330
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 331
    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTextEntryView()V
    .locals 0

    return-void
.end method

.method public updateWideCameraUIByMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
