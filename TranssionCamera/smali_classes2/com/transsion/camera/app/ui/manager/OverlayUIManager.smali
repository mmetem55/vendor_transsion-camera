.class public Lcom/transsion/camera/app/ui/manager/OverlayUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "OverlayUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private mCommonSettingUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field private mModeSettingUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayRootLayout:Landroid/view/ViewGroup;

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 58
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    .line 71
    iput-object p8, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 72
    iput-object p9, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method private findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 468
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, p3, :cond_1

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private initCommonSettingUI(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 487
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_2

    .line 494
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 497
    :cond_2
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_3

    .line 500
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v0, :cond_4

    .line 504
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v0, :cond_5

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 511
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_6

    .line 512
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 515
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    if-eqz v0, :cond_7

    .line 516
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V

    .line 519
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    if-eqz v0, :cond_8

    .line 520
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    .line 523
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    if-eqz v0, :cond_9

    .line 524
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 527
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    if-eqz v0, :cond_a

    .line 528
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V

    .line 531
    :cond_a
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wide_camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 532
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    :cond_b
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "front_wide_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 536
    new-instance v0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/OverlayUIManager;Lcom/transsion/camera/app/ui/manager/OverlayUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    return-void
.end method

.method private removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 551
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 553
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 558
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private unInitOverlaySettingUIs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 417
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 420
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 421
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 566
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_3

    .line 573
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_3
    if-nez v0, :cond_4

    .line 577
    sget-object p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEntryView null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 581
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setupEntryView()V

    .line 583
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 585
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 442
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 444
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    if-eqz v1, :cond_0

    .line 446
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 453
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 454
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_2

    .line 455
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->findCommonSettingKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->initCommonSettingUI(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 459
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 460
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 462
    :cond_3
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 319
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 324
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public notifyCameraStateToUI(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 286
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCameraState(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 290
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 291
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCameraState(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 300
    invoke-interface {v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 305
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 306
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 307
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 331
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 334
    invoke-interface {v0, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 339
    invoke-interface {p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()Z
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 430
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 433
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 434
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 435
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 266
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 274
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 279
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mInflater:Landroid/view/LayoutInflater;

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0c0170

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09035d

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mOverlayRootLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onLongPress(FF)Z
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 247
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 254
    invoke-interface {v2, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 259
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onModePanelDistanceChanged(FZ)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 98
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onModePanelDistanceChanged(FZ)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 103
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onModePanelDistanceChanged(FZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 111
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 113
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 118
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 149
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 155
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 160
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 217
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 222
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_1

    .line 225
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 202
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 207
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_1

    .line 210
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 232
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 237
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_1

    .line 240
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .locals 2

    .line 125
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 129
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onScreenFormChanged(IZ)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 133
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 134
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onScreenFormChanged(IZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 348
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 356
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 361
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method protected onSetupViews()V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 184
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 187
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 191
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 192
    invoke-interface {v3, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    goto :goto_1

    .line 195
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 169
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 174
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 177
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 366
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 368
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;",
            ">;)V"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->updateOverlaySettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    .line 383
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setZoomOffsetPadding(I)V
    .locals 2

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 409
    instance-of v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz v1, :cond_0

    .line 410
    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setZoomOffsetPadding(I)V

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->unInitOverlaySettingUIs(Ljava/util/List;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mModeSettingUIs:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->unInitOverlaySettingUIs(Ljava/util/List;)V

    return-void
.end method

.method public updateModeConfigToZoom(Lcom/transsion/camera/app/common/ModeConfig;)V
    .locals 2

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->mCommonSettingUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 400
    instance-of v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V

    :cond_1
    return-void
.end method
