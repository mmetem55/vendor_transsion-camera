.class public Lcom/transsion/camera/app/ui/CameraAppUI;
.super Lcom/transsion/camera/app/ui/BaseAppUI;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/CameraAppUI$CameraReConnectListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;


# direct methods
.method public static synthetic $r8$lambda$2klvwvAVOxrYxfzVxNIc2BehBUQ(Lcom/transsion/camera/app/ui/CameraAppUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EmwW0uwfMIxNI2tkgeyo6nLLuYg(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->lambda$init$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 308
    new-instance p1, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->settingPicked()V

    return-void
.end method

.method private updateNavBar(Z)V
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-eqz p1, :cond_1

    .line 322
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    .line 324
    invoke-interface {p0, v0, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    .line 328
    :cond_1
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    const/4 p1, 0x0

    .line 330
    invoke-interface {p0, p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :goto_0
    return-void
.end method

.method private updateRingScreenLight(Z)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateNavBar(Z)V

    return-void
.end method


# virtual methods
.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p5

    .line 73
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 76
    sget-object v14, Lcom/transsion/camera/app/ui/CameraAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init"

    invoke-static {v14, v0}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v15

    .line 78
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    .line 79
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mBelowMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 81
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    .line 82
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerRootView:Landroid/view/ViewGroup;

    .line 83
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09042a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    .line 84
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    .line 85
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090279

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    .line 87
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePanelRootParent:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09006d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mArActivityCoverLayout:Landroid/widget/FrameLayout;

    .line 89
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0904b8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mToastLayout:Landroid/widget/FrameLayout;

    .line 90
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePanelRootParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mMainCtrlLayerRootParent:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUILayerRootParentList:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateRoot:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateRootLayoutDisplaySize()V

    .line 97
    iget v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v11, 0x0

    invoke-virtual {v12, v0, v1, v11}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBottomBarLayout(IIZ)V

    .line 99
    invoke-interface {v15}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    .line 100
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v3, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    .line 104
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090387

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 106
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v1

    iput-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 108
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    .line 110
    invoke-virtual {v12, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 113
    :cond_0
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_1

    .line 114
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 116
    :cond_1
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeInflateScrollRoot:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_2

    .line 117
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 120
    :cond_2
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 122
    new-instance v7, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    const v3, 0x7f0904c1

    iget-object v4, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-boolean v6, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;IZ)V

    iput-object v7, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    .line 126
    :cond_3
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x7f0904c1

    if-eqz v0, :cond_4

    .line 127
    new-instance v0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    .line 131
    :cond_4
    new-instance v0, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;-><init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    if-nez p1, :cond_5

    .line 134
    new-instance v6, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v4, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v5

    move-object v0, v6

    move-object/from16 v1, p6

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;Z)V

    iput-object v6, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    .line 136
    invoke-virtual {v12, v6}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 137
    new-instance v10, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v7, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-object v8, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    iget-object v9, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mBottomBarRootView:Landroid/view/View;

    move-object v0, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object v13, v10

    move-object/from16 v10, p0

    move-object/from16 p3, v15

    move v15, v11

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v13, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    .line 141
    invoke-virtual {v12, v13}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 142
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    iget-boolean v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setSecureCamera(Z)V

    .line 143
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    goto :goto_0

    :cond_5
    move-object/from16 p3, v15

    move v15, v11

    .line 146
    :goto_0
    new-instance v0, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, v1, v12}, Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    .line 147
    invoke-virtual {v12, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 149
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, v1, v2, v12}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    .line 150
    invoke-virtual {v12, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 151
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;

    invoke-direct {v1, v12}, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    if-nez p1, :cond_6

    .line 153
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    new-instance v0, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;-><init>()V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isGoogleLensSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;->setGoogleLensSupport(Z)V

    .line 158
    :cond_6
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    new-instance v7, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    const v2, 0x7f0904c1

    iget-object v3, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    move-object v0, v7

    move-object/from16 v4, p5

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;ILandroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v7, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    .line 161
    invoke-virtual {v12, v7}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 164
    :cond_7
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, v1, v2, v12, v12}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    .line 166
    invoke-virtual {v12, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 167
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-virtual {v0, v12}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 168
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    new-instance v1, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, v12}, Lcom/transsion/camera/app/ui/CameraAppUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 172
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    new-instance v0, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v12, v12, v2}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    .line 175
    invoke-virtual {v12, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 178
    :cond_8
    new-instance v10, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v0, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    iput-object v10, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    .line 180
    invoke-virtual {v12, v10}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 182
    iget v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v7, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_9

    if-ne v0, v3, :cond_a

    :cond_9
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v12, v0, v15

    .line 183
    iget-object v5, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    aput-object v5, v0, v4

    iget-object v5, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    aput-object v5, v0, v2

    iget-object v5, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    aput-object v5, v0, v3

    aput-object v12, v0, v1

    const-string v5, "com.transsion.camera.feature.column.ColumnUIManager"

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    .line 187
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSysSupportVIPSelfie()Z

    move-result v0

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSupportFoldUIType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSupportFoldUIType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mIsSecureCamera:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSysSupportVIPSelfie:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->supportVIPCaptureManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    if-nez v0, :cond_b

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v12, v0, v15

    .line 190
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    aput-object v1, v0, v4

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    aput-object v12, v0, v3

    const-string v1, "com.transsion.camera.feature.vipcapture.VIPCaptureManager"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    .line 192
    invoke-virtual {v12, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 193
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_b

    .line 194
    new-instance v1, Lcom/transsion/camera/app/ui/CameraAppUI$CameraReConnectListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v12, v2}, Lcom/transsion/camera/app/ui/CameraAppUI$CameraReConnectListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->setCameraReConnectListener(Lcom/transsion/camera/app/common/IAppUIListener$ICameraReConnectListener;)V

    .line 198
    :cond_b
    new-instance v8, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    const v2, 0x7f0904c1

    iget-object v3, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeOrderEditorManager:Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;

    iget-object v4, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mEditWaterMarkManager:Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;

    iget-object v5, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRemoteCaptureManager:Lcom/transsion/camera/app/ui/manager/RemoteCaptureManager;

    move-object v0, v8

    move-object/from16 v1, p5

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;-><init>(Landroid/app/FragmentManager;ILcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IRemoteCaptureFragmentControl;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v8, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingFragmentManager:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    const-string v0, "init all UI Manager"

    move-object/from16 v8, p3

    .line 201
    invoke-interface {v8, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    const v2, 0x7f030024

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;-><init>(Landroid/content/Context;I)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 203
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->resetSettingUIEntries()V

    const-string v0, "init all UI Provider"

    .line 204
    invoke-interface {v8, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 206
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mThermalThrottleUIManager:Lcom/transsion/camera/app/ui/manager/ThermalThrottleUIManager;

    .line 209
    new-instance v9, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v0, v9

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v9, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    .line 211
    invoke-virtual {v9, v12}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 212
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v12, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerScreenFormListener(Lcom/transsion/camera/app/common/IScreenFormControl;)V

    .line 213
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v12, v0, v7}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 215
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz v0, :cond_c

    .line 216
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_c
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mCameraSwitcherUIManager:Lcom/transsion/camera/app/ui/manager/CameraSwitcherUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mHelpGuideUIManager:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    if-eqz v0, :cond_d

    .line 224
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_d
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mTopBarUIManager:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mGoogleLensUIManager:Lcom/transsion/camera/app/ui/manager/GoogleLensUIManager;

    if-eqz v0, :cond_e

    .line 230
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_e
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_f

    .line 233
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_f
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz v0, :cond_10

    .line 236
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_10
    iget-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRingScreenLightUIManager:Lcom/transsion/camera/app/ui/manager/RingScreenLightUIManager;

    if-eqz v0, :cond_11

    .line 239
    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_11
    new-instance v0, Lcom/transsion/camera/app/SpecifyModePolicy;

    iget-object v1, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/SpecifyModePolicy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/transsion/camera/app/intent/IntentParser;)V

    iput-object v0, v12, Lcom/transsion/camera/app/ui/BaseAppUI;->mSpecifyModePolicy:Lcom/transsion/camera/app/SpecifyModePolicy;

    .line 243
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, v12, Lcom/transsion/camera/app/ui/CameraAppUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 244
    invoke-direct {v12, v15}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateRingScreenLight(Z)V

    .line 245
    invoke-interface {v8}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 257
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideSystemUI()V

    .line 260
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->onConfigurationChanged()Z

    .line 263
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mFoldUIManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p2, :cond_1

    .line 264
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->onConfigurationChanged()Z

    move-result p2

    or-int/2addr p1, p2

    .line 266
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mVIPCaptureManager:Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/manager/AbstractFoldUIManager;->onConfigurationChanged()Z

    .line 269
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetUIRootParentLayout(Z)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    if-eqz p0, :cond_4

    .line 271
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->resetRootParentLayout()V

    :cond_4
    return p1
.end method

.method public unInit()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->unInit()V

    .line 251
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportPreviewHoverForm()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 280
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateModeSettingUISpec(Lcom/transsion/camera/app/common/ModeSettingUISpec;Z)V

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportPreviewHoverForm()Z

    move-result p1

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p1, v2, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onScreenFormChanged(IZ)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->onScreenFormChanged(IZ)V

    :goto_1
    const-wide/16 p1, 0x0

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeDataInfoListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;

    if-eqz v0, :cond_2

    .line 292
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IModeDataInfoListener;->getModePreviewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewLayoutRatio()D

    move-result-wide v3

    .line 300
    invoke-static {p1, p2, v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->needRectChangedAnimation(Z)V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->updatePreviewLayout(ZZD)V

    :cond_3
    return-void
.end method
