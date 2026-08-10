.class public Lcom/transsion/camera/app/ui/AODAppUI;
.super Lcom/transsion/camera/app/ui/BaseAppUI;
.source "AODAppUI.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAODExitUIManager:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

.field private mDragExitListener:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

.field private mHintListener:Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/AODAppUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AODAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;)V

    return-void
.end method

.method private turnOffFlash()V
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_0

    .line 193
    sget-object p0, Lcom/transsion/camera/app/ui/AODAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    if-nez p0, :cond_1

    .line 198
    sget-object p0, Lcom/transsion/camera/app/ui/AODAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "settingProvide is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "key_flash_facade"

    .line 201
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "key_flash"

    .line 203
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 206
    sget-object p0, Lcom/transsion/camera/app/ui/AODAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "flash is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "off"

    .line 209
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doLoadContinuousShotUIManager()V
    .locals 0

    return-void
.end method

.method protected doSetupModePickerUIManager()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0902ad

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    :cond_0
    return-void
.end method

.method protected doSetupUIManagers()V
    .locals 3

    .line 129
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doSetupUIManagers()V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->hide()V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AODAppUI;->mAODExitUIManager:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODAppUI;->mAODExitUIManager:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    :cond_0
    return-void
.end method

.method public init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 13

    move-object v10, p0

    .line 73
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 76
    sget-object v0, Lcom/transsion/camera/app/ui/AODAppUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v11

    .line 78
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintRootLayout:Landroid/view/ViewGroup;

    .line 79
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09042a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterPanelRootView:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 82
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark()V

    .line 83
    new-instance v0, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v3, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mGpuAlgorithmManager:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    .line 86
    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewGestureManager:Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->registerGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    .line 90
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f090387

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 92
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 93
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/PreviewUIManager;->getPreviewBackgroundOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewBackgroundOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 95
    new-instance v6, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v4, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->isSecureCamera()Z

    move-result v5

    move-object v0, v6

    move-object/from16 v1, p6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Landroid/content/Context;Z)V

    iput-object v6, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    .line 98
    new-instance v0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v3, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    .line 100
    iget-boolean v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mSecureCamera:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setSecureCamera(Z)V

    .line 101
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeScrollListener:Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    .line 103
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    iget-object v2, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    .line 104
    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$ShutterResponseListener;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/ShutterUIManager;->setShutterHook(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    .line 106
    new-instance v12, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    move-object v0, v12

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p0

    move-object/from16 v6, p7

    move-object v7, p0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V

    iput-object v12, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    .line 109
    new-instance v0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/AODAppUI;->mAODExitUIManager:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    .line 110
    iget-object v1, v10, Lcom/transsion/camera/app/ui/AODAppUI;->mDragExitListener:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->setExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V

    const-string v0, "init all UI Manager"

    .line 112
    invoke-interface {v11, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mContext:Landroid/content/Context;

    const v2, 0x7f030024

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;-><init>(Landroid/content/Context;I)V

    iput-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 114
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->resetSettingUIEntries()V

    const-string v0, "init all UI Provider"

    .line 115
    invoke-interface {v11, v0}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    .line 117
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mThumbnailUIManager:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mShutterUIManager:Lcom/transsion/camera/app/ui/manager/ShutterUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mModePickerUIManager:Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mPreviewUIManager:Lcom/transsion/camera/app/ui/manager/PreviewUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, v10, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagers:Ljava/util/List;

    iget-object v1, v10, Lcom/transsion/camera/app/ui/AODAppUI;->mAODExitUIManager:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v11}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onBatteryStatusChanged(ZII)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI;->onBatteryStatusChanged(ZII)V

    const/4 p1, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    if-ne p1, p3, :cond_1

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AODAppUI;->turnOffFlash()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    .line 167
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->pause()V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODAppUI;->mAODExitUIManager:Lcom/transsion/camera/app/ui/manager/AODExitUIManager;

    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager;->pause()V

    :cond_0
    return-void
.end method

.method public setDragExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setDragExitListener(Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;)V

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODAppUI;->mDragExitListener:Lcom/transsion/camera/app/common/IAppUIListener$IAODExitListener;

    return-void
.end method

.method public setHintListener(Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setHintListener(Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;)V

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODAppUI;->mHintListener:Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;

    return-void
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODAppUI;->mHintListener:Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;

    if-eqz p0, :cond_0

    .line 177
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IHintListener;->onShow(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method protected updateOverlayManagerSettingUIList()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeSettingUISpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getAodModeSettingUIEntries()[Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 160
    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mOverlayUIManager:Lcom/transsion/camera/app/ui/manager/OverlayUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mSettingUIProvider:Lcom/transsion/camera/app/common/provider/SettingUIProvider;

    .line 162
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/provider/SettingUIProvider;->getCommonSettingUIList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 161
    invoke-virtual {v2, p0, v1}, Lcom/transsion/camera/app/ui/manager/OverlayUIManager;->setSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
