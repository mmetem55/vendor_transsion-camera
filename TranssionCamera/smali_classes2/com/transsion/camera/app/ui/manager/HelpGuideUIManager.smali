.class public Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "HelpGuideUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFrontDualFlashUIShow:Z

.field private mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

.field private mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

.field private mIsVideoRecording:Z

.field private mLayoutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeSupportGuideUI:Z

.field private mNeedShow:Z

.field private mRootId:I

.field private mShowByAdjustUIHide:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;ILandroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v7, p6

    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p6, 0x0

    .line 48
    iput-boolean p6, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    const/4 p6, 0x1

    .line 49
    iput-boolean p6, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    .line 283
    new-instance p6, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 59
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    .line 60
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 62
    new-instance p2, Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/HelpGuideUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    .line 63
    invoke-interface {p2, p5}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    return p1
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/ui/IHelpGuideUI;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->facingBack()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->queryFlashValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private addLayouts(I)V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 227
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addModeLayoutId(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addLayouts(I)V

    return-void
.end method

.method private addSettingLayoutId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 216
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 217
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->shouldShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->getStringArrayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addLayouts(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private facingBack()Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 272
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private queryFlashValue()Ljava/lang/String;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private stopPressedAnimation(I)V
    .locals 0

    .line 261
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz p0, :cond_0

    .line 263
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public exitGuideFragment()V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    :cond_0
    return-void
.end method

.method protected getType()I
    .locals 0

    const/16 p0, 0x3ea

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 3

    .line 107
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->stopPressedAnimation(I)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x15

    if-eq p1, v0, :cond_5

    const/16 v0, 0x16

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_8

    const/16 v0, 0x56

    if-eq p1, v0, :cond_6

    const/16 v0, 0x90

    if-eq p1, v0, :cond_2

    const/16 v0, 0x91

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 119
    :cond_0
    :pswitch_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    goto :goto_0

    .line 111
    :cond_1
    :pswitch_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    .line 112
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    .line 114
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    goto :goto_0

    .line 145
    :cond_3
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "shot2shot end action need enable help guide button."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setEnable(Z)V

    goto :goto_0

    .line 122
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    goto :goto_0

    .line 138
    :cond_6
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_0

    .line 126
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    .line 127
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    .line 130
    :cond_8
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->exitGuideFragment()V

    .line 149
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSetupViews()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->onSetupViews()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_1

    .line 164
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_1
    return-void
.end method

.method public setGuideItemList(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;",
            ">;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addModeLayoutId(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 181
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 182
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addSettingLayoutId(Ljava/util/List;)V

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    .line 185
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->facingBack()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->queryFlashValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, "torch"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 189
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dual_front_flash_state_key"

    const-string v3, "-1"

    .line 188
    invoke-virtual {p1, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 190
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    if-eqz v1, :cond_4

    if-eq p1, v0, :cond_4

    move p2, v0

    :cond_4
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    goto :goto_2

    .line 186
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    .line 192
    :goto_2
    sget-object p1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setGuideItemList, mNeedShow: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    new-instance v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;-><init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Landroid/app/FragmentManager;ILjava/util/List;)V

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateIcon(ZLandroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_front_dual_flash_ui_visible"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mNeedShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->unInit()V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_front_dual_flash_ui_visible"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
