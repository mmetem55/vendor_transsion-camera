.class public Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "TopBarUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$HighDefinitionCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisableTopbar:Z

.field private mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

.field private mHighDefinitionCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;

.field private mIsVideoRecording:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field private final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

.field private mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

.field private mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

.field private mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;


# direct methods
.method public static synthetic $r8$lambda$VNzhxtJdH8Yqh2tU_rV4l6vjIQ8(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onItemSelected()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v7, p4

    .line 59
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p3, 0x0

    .line 51
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 53
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 60
    new-instance p3, Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-direct {p3}, Lcom/transsion/camera/app/ui/PopupOptionManager;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance p4, Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/app/ui/TopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V

    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onItemSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHighDefinitionCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;

    return-object p0
.end method

.method private findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_1

    .line 428
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

.method private initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_settings_entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wide_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_super_definition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 456
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 458
    :cond_3
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$HighDefinitionCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$HighDefinitionCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_tele_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 463
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_5
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_bw_portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 467
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    :cond_6
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_dual_cam_bw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 471
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_7
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_periscope_camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 475
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_9

    .line 479
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 482
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_a

    .line 483
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 486
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_b

    .line 487
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 490
    :cond_b
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    return-void
.end method

.method private onItemSelected()V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p0, :cond_0

    .line 439
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    :cond_0
    return-void
.end method

.method private setItemClickDisableByKey(ZLjava/lang/String;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 381
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    :cond_1
    return-void
.end method

.method private stopPressedAnimation(I)V
    .locals 0

    .line 494
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 497
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unInitTopBarSettingUIs()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 392
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_0

    .line 401
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 403
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    .line 408
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 409
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_3

    .line 410
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 411
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 414
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 415
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    const/4 v1, 0x0

    .line 416
    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 10

    .line 295
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->stopPressedAnimation(I)V

    const/16 v0, 0x90

    const/16 v1, 0x2d

    const/16 v2, 0x17

    const/16 v3, 0xf

    const/16 v4, 0xb

    const/4 v5, 0x2

    if-eqz p1, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_a

    if-eq p1, v5, :cond_b

    const/4 v8, 0x3

    if-eq p1, v8, :cond_a

    if-eq p1, v4, :cond_b

    const/16 v8, 0xc

    if-eq p1, v8, :cond_a

    if-eq p1, v3, :cond_9

    const/16 v8, 0x10

    if-eq p1, v8, :cond_8

    const/16 v8, 0x12

    if-eq p1, v8, :cond_a

    if-eq p1, v2, :cond_6

    const/16 v8, 0x1b

    if-eq p1, v8, :cond_5

    const/16 v8, 0x9c

    if-eq p1, v8, :cond_4

    if-eq p1, v1, :cond_9

    const/16 v8, 0x2e

    if-eq p1, v8, :cond_8

    const/16 v8, 0x4d

    if-eq p1, v8, :cond_7

    const/16 v8, 0x4e

    if-eq p1, v8, :cond_a

    const/16 v8, 0x5d

    if-eq p1, v8, :cond_3

    const/16 v8, 0x5e

    if-eq p1, v8, :cond_2

    if-eq p1, v0, :cond_9

    const/16 v8, 0x91

    if-eq p1, v8, :cond_8

    const/16 v8, 0x93

    const-string v9, "key_flash_facade"

    if-eq p1, v8, :cond_1

    const/16 v7, 0x94

    if-eq p1, v7, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 353
    invoke-direct {p0, v6, v9}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemClickDisableByKey(ZLjava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    goto :goto_0

    .line 347
    :cond_1
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 348
    invoke-direct {p0, v7, v9}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemClickDisableByKey(ZLjava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    goto :goto_0

    .line 315
    :cond_2
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 316
    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 317
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 305
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    goto :goto_0

    .line 320
    :cond_4
    sget-object v6, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v8, "shot2shot end action need enable top bar ui"

    invoke-static {v6, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v7}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnable(Z)V

    goto :goto_0

    .line 335
    :cond_5
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 336
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto :goto_0

    .line 324
    :cond_6
    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 326
    :cond_7
    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->shrinkTopBar()V

    .line 327
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto :goto_0

    .line 311
    :cond_8
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 312
    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    goto :goto_0

    .line 300
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 301
    iput-boolean v7, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    goto :goto_0

    .line 343
    :cond_a
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 344
    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    goto :goto_0

    .line 332
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 358
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 359
    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v6, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyCameraOperateAction(I)V

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_c

    if-eq p1, v1, :cond_c

    if-eq p1, v0, :cond_c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c

    if-eq p1, v2, :cond_c

    if-eqz p1, :cond_c

    if-eq p1, v5, :cond_c

    const/16 v0, 0x15

    if-ne p1, v0, :cond_d

    .line 371
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_d

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->hintInfo(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 1

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 125
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 140
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/TopBarUI;->resume()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 285
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 288
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 158
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public setmHighDefinitionCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHighDefinitionCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchHighDefinitionCameraListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    :goto_1
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->unInit()V

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->unInitTopBarSettingUIs()V

    return-void
.end method

.method public updateSettingUIs()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/TopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingUIs(Ljava/util/List;)V

    return-void
.end method
