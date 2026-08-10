.class public Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;
.source "ModePickerUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;,
        Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isFurtherUiVisible:Z

.field private isMoving:Z

.field private mAllModeResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mArShowFlag:Z

.field private mBackCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mBackDefaultMode:Ljava/lang/String;

.field private mBackRestoreMode:Ljava/lang/String;

.field private mBottomBarView:Landroid/view/View;

.field private mCamera:Ljava/lang/String;

.field private mChangedModeName:Ljava/lang/String;

.field private mClickGuideIconEnterMoreMode:Z

.field private mClickModeIcon:Z

.field private mContext:Landroid/content/Context;

.field private mCurPosX:F

.field private mCurrentModeName:Ljava/lang/String;

.field private mFrontCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontDefaultMode:Ljava/lang/String;

.field private mFrontRestoreMode:Ljava/lang/String;

.field private mIScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

.field private mIsCameraSwitching:Z

.field private mIsCurModeSupportQC:Z

.field private mIsOnCreate:Z

.field private mIsShowingGuide:Z

.field private mMainControlRoot:Landroid/view/ViewGroup;

.field private mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

.field private final mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

.field private final mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

.field private mModePanelRoot:Landroid/view/View;

.field private final mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

.field private final mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

.field private mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

.field private final mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPanelHintView:Landroid/widget/TextView;

.field private mPanelMaskView:Landroid/view/View;

.field private mPosX:F

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mProArrowShow:Z

.field private mQCSupportModeArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSmartBackCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartFrontCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

.field private mVIPCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$s7kTCtZNI3ftQfAZ1vgGZi-jCKk(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->lambda$setupModePanelGuideView$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Landroid/view/View;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 228
    invoke-direct/range {v0 .. v10}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;)V

    move-object/from16 v1, p9

    .line 230
    iput-object v1, v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBottomBarView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 184
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 112
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;

    const/4 v11, 0x0

    invoke-direct {v0, v8, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$mStatusChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    iput-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 130
    iput-object v11, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 145
    iput-boolean v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    .line 154
    iput-boolean v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 334
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;

    invoke-direct {v0, v8}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    iput-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 360
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;

    invoke-direct {v0, v8}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    iput-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    .line 186
    iput-object v9, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    move-object/from16 v12, p7

    .line 187
    iput-object v12, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-object/from16 v13, p10

    .line 188
    iput-object v13, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 189
    new-instance v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-direct {v0, v8, v11}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    iput-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    .line 190
    new-instance v14, Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-direct {v14, v9}, Lcom/transsion/camera/app/mode/ModeOrderProvider;-><init>(Landroid/content/Context;)V

    iput-object v14, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 191
    invoke-virtual {v14}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v15

    iput-object v15, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    .line 192
    new-instance v7, Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    move-object/from16 v0, p6

    invoke-direct {v7, v9, v10, v0, v15}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v7, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 193
    new-instance v6, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-direct {v6, v10, v15}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V

    iput-object v6, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    .line 195
    new-instance v5, Lcom/transsion/camera/app/ui/ModePickerUI;

    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, p1

    move-object/from16 v4, p7

    move-object v11, v5

    move-object/from16 v5, p8

    move-object v12, v6

    move-object v6, v14

    move-object/from16 v16, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/ModePickerUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/ui/ScreenManager;)V

    iput-object v11, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    .line 197
    iget-object v0, v8, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {v11, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 199
    invoke-virtual {v15}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v6, Lcom/transsion/camera/app/ui/MorePanelUI;

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p2

    move-object v4, v14

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/MorePanelUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    iput-object v6, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    goto :goto_0

    .line 202
    :cond_0
    new-instance v6, Lcom/transsion/camera/app/ui/ModePanelUI;

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/ModePanelUI;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/content/Context;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object v6, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    .line 205
    :goto_0
    iget-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, v8, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 206
    iget-object v0, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$MorePanelScrollListener;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V

    .line 208
    new-instance v0, Lcom/transsion/camera/app/ui/ModeScrollUI;

    invoke-direct {v0, v12, v10, v9, v14}, Lcom/transsion/camera/app/ui/ModeScrollUI;-><init>(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V

    iput-object v0, v8, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->increaseStartTimes()V

    if-eqz p8, :cond_1

    .line 212
    invoke-interface/range {p8 .. p8}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->getInitialModesNumberInTab()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    invoke-direct {v1, v8, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V

    iput-object v1, v8, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/AbstractModePickerUI;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)F
    .locals 0

    .line 87
    iget p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurPosX:F

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;F)F
    .locals 0

    .line 87
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurPosX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickGuideIconEnterMoreMode:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickGuideIconEnterMoreMode:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickModeIcon:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mClickModeIcon:Z

    return p1
.end method

.method static synthetic access$1600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 87
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mChangedModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mChangedModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/mode/ModePickerConfig;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isFurtherUiVisible:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideMore()V

    return-void
.end method

.method static synthetic access$2300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;IJ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isMoving:Z

    return p0
.end method

.method static synthetic access$802(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isMoving:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)F
    .locals 0

    .line 87
    iget p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPosX:F

    return p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;F)F
    .locals 0

    .line 87
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPosX:F

    return p1
.end method

.method private checkSupportQuickCapture(Ljava/lang/String;)Z
    .locals 0

    .line 1251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mQCSupportModeArray:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hideModePickerGuide()V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 1000
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideMore()V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBottomBarView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 853
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isFurtherUiVisible:Z

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 855
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 857
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x77

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private increaseStartTimes()V
    .locals 4

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    .line 953
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 956
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_camera_guide_usage"

    const-string v3, "0"

    .line 955
    invoke-virtual {v1, v2, v3, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    .line 958
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 957
    invoke-virtual {v1, v2, p0, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupModePanelGuideView$0(Landroid/view/View;)V
    .locals 0

    .line 1089
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    return-void
.end method

.method private sendEmptyMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1005
    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1011
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setupModePanelGuideView()V
    .locals 7

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    .line 1082
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1088
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    new-instance v4, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePanelMask(Landroid/view/View;)V

    .line 1092
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1094
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_camera_guide_usage"

    const-string v6, "0"

    .line 1093
    invoke-virtual {v0, v5, v6, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-gt v0, v4, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1097
    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    const v4, 0x7f1001d3

    .line 1098
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1099
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelHintView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private updateHorizontalScroll()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->currentIsIabLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 1075
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    :goto_0
    return-void
.end method

.method private updateHorizontalScroll(Ljava/lang/String;)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1065
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 1067
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object p1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public flashModeListCurrentCamera()V
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->flashModeListCurrentCamera()V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 713
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v0, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method

.method public hideModeRegion()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->hideModePicker()V

    return-void
.end method

.method public hideMoreMode()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isFurtherUiVisible:Z

    if-eqz v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideMore()V

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentMode(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public isModePanelVisible()Z
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 302
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->isVisible()Z

    move-result p0

    return p0
.end method

.method public isModeTabScrolling()Z
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModeTabScrolling()Z

    move-result p0

    return p0
.end method

.method public modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->modePickerHideAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->modePickerShowAlphaAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 5

    .line 419
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsCameraSwitching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondPreviewManagerEvent(I)I

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v2

    invoke-static {v2, p1, v1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    if-eq p1, v2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setViewEnable(Z)V

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setViewEnable(Z)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setViewEnable(Z)V

    .line 433
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/ui/IModePanelUI;->setViewEnable(Z)V

    .line 436
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x18

    if-eq p1, v1, :cond_5

    .line 438
    :cond_4
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    :cond_5
    if-eqz p1, :cond_17

    if-eq p1, v4, :cond_15

    if-eq p1, v2, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/16 v1, 0xb

    if-eq p1, v1, :cond_11

    const/16 v1, 0xc

    if-eq p1, v1, :cond_f

    const/16 v1, 0x23

    if-eq p1, v1, :cond_12

    const/16 v1, 0x24

    if-eq p1, v1, :cond_10

    const/16 v1, 0x38

    if-eq p1, v1, :cond_e

    const/16 v1, 0x39

    if-eq p1, v1, :cond_d

    const/16 v1, 0x58

    if-eq p1, v1, :cond_c

    const/16 v1, 0x59

    if-eq p1, v1, :cond_b

    const/16 v1, 0x64

    if-eq p1, v1, :cond_a

    const/16 v1, 0x65

    if-eq p1, v1, :cond_9

    const/16 v1, 0x90

    if-eq p1, v1, :cond_8

    const/16 v1, 0x91

    if-eq p1, v1, :cond_7

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 511
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mUIHandler:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$UIHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v4, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowState(ZZ)V

    const-wide/16 v0, 0xce4

    .line 515
    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessageDelayed(IJ)V

    .line 518
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 519
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto/16 :goto_1

    .line 505
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 507
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto/16 :goto_1

    .line 499
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 500
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 501
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto/16 :goto_1

    .line 535
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setIsCapturing(Z)V

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "shot2shot end action need enable mode picker ui"

    .line 589
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto/16 :goto_1

    .line 523
    :sswitch_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 524
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto/16 :goto_1

    .line 538
    :sswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->hide()V

    goto/16 :goto_1

    .line 450
    :sswitch_3
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 451
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabIndexOnResume(Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    xor-int/2addr p0, v4

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 443
    :sswitch_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setSelfTimerBegin(Z)V

    .line 444
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabIndexOnPause(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelHintView(Landroid/view/View;)V

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setIsCapturing(Z)V

    .line 447
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    goto/16 :goto_1

    .line 544
    :pswitch_4
    :sswitch_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    goto/16 :goto_1

    .line 567
    :sswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    if-eqz p0, :cond_19

    const/16 p1, 0x8

    .line 568
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 532
    :sswitch_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    goto/16 :goto_1

    .line 528
    :sswitch_8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setIsCapturing(Z)V

    goto/16 :goto_1

    .line 555
    :sswitch_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setDisableVerticalScroll(Z)V

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 586
    :cond_7
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setViewEnable(Z)V

    goto/16 :goto_1

    .line 582
    :cond_8
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setViewEnable(Z)V

    goto/16 :goto_1

    .line 551
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setDisableVerticalScroll(Z)V

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 547
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setDisableVerticalScroll(Z)V

    .line 548
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 576
    :cond_b
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 578
    :sswitch_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 563
    :cond_c
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 572
    :cond_d
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto/16 :goto_1

    .line 559
    :cond_e
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mArShowFlag:Z

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto :goto_1

    .line 489
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setSelfTimerBegin(Z)V

    .line 491
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setIsCapturing(Z)V

    .line 492
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 493
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 494
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mProArrowShow:Z

    if-nez p1, :cond_19

    .line 495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModeArrowVisibility(Z)V

    goto :goto_1

    .line 482
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setSelfTimerBegin(Z)V

    .line 484
    :cond_12
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 485
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updatePanelItemClickable(Z)V

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    goto :goto_1

    .line 461
    :cond_13
    :sswitch_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p0, v4}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    goto :goto_1

    .line 455
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    .line 456
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setEnable(Z)V

    goto :goto_1

    .line 474
    :cond_15
    :sswitch_c
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 475
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsCameraSwitching(Z)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreGuideState(Z)V

    .line 479
    :cond_16
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    goto :goto_1

    .line 464
    :cond_17
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCameraSwitching:Z

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setIsCameraSwitching(Z)V

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 467
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreGuideState(Z)V

    .line 469
    :cond_18
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateArrowEnableState(Z)V

    .line 470
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->hideModePickerGuide()V

    :cond_19
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_c
        0x13 -> :sswitch_a
        0x14 -> :sswitch_9
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1b -> :sswitch_4
        0x1f -> :sswitch_3
        0x2f -> :sswitch_5
        0x35 -> :sswitch_b
        0x54 -> :sswitch_2
        0x6d -> :sswitch_b
        0x7e -> :sswitch_1
        0x8e -> :sswitch_5
        0x9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 699
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->onBackPressed()Z

    move-result p0

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

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 678
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mMainControlRoot:Landroid/view/ViewGroup;

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 406
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 1

    .line 412
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onScreenFormChanged(IZ)V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IScreenFormControl;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onSetupViews()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IModePanelUI;->setupViews()V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$PanelModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickModeIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setupViews()V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$NotifyClickMoreModeGuideIconImpl;-><init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$1;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setNotifyClickMoreModeGuideIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickGuideIconListener;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->TOP_DOWN:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 324
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->LEFT_RIGHT:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeHorizontalScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_2

    .line 327
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    if-eqz v1, :cond_3

    .line 330
    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 0

    .line 390
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->pause()V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_0

    .line 392
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->cancelDragAndDrop()V

    :cond_0
    return-void
.end method

.method public resetMoreModeToNormal()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->resetMoreModeToNormal()V

    :cond_0
    return-void
.end method

.method public restoreCurrentModeByFacing(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public resume()V
    .locals 0

    .line 398
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    if-eqz p0, :cond_0

    .line 400
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->notifyListTypeUpdate()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 656
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 657
    sget-object v0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setSupportQC(Z)V

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setEnable(Z)V

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    const-string v0, "0"

    .line 725
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    const-string v1, "1"

    .line 726
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    const/4 v2, 0x0

    .line 727
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    const/4 v2, 0x1

    .line 728
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getRestoreModeByFacing(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    .line 729
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz v2, :cond_1

    .line 732
    invoke-virtual {v2, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V

    goto :goto_0

    .line 734
    :cond_1
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 735
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 736
    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    .line 737
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    .line 739
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 740
    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    .line 742
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    :goto_0
    const-string p3, "quick_capture_mode"

    .line 744
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 745
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mQCSupportModeArray:Ljava/util/List;

    const-string p3, "vip_mode"

    .line 746
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 747
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    return-void
.end method

.method public setModeOpaque()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setModePickerOpaque()V

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setMoreModeGuideRightRootOpaque()V

    return-void
.end method

.method public setModeUnOpaque()V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->setModePickerUnOpaque()V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 2

    .line 609
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_1

    .line 611
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public shouldExitCameraOnBackPressed()Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->shouldExitCameraOnBackPressed()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 3

    .line 704
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->moreModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 708
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    return-void
.end method

.method public showModePickerGuide()V
    .locals 7

    .line 964
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->setupModePanelGuideView()V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->isModePanelGuideSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsShowingGuide:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    if-eqz v0, :cond_6

    .line 968
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 970
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_camera_guide_usage"

    const-string v3, "0"

    .line 969
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-le v1, v5, :cond_1

    .line 972
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    const/16 v4, 0x20

    if-lt v1, v4, :cond_5

    .line 974
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 977
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/mode/ModePickerConfig;->moreModeSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 978
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    return-void

    .line 981
    :cond_2
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mIsSecureCamera:Z

    if-eqz v3, :cond_4

    if-gt v1, v5, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 984
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-virtual {v0, v2, v1, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 986
    :cond_3
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    goto :goto_0

    .line 988
    :cond_4
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    .line 991
    :cond_5
    :goto_0
    iput-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsOnCreate:Z

    :cond_6
    return-void
.end method

.method public showModeRegion()V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->showModePicker()V

    return-void
.end method

.method public showModeRegionOnSinked()V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->showModeRegionOnSinked()V

    return-void
.end method

.method public showMore()V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    sget-object v1, Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;->BOTTOM_UP:Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeVerticalScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    .line 833
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBottomBarView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 839
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->isFurtherUiVisible:Z

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 841
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 842
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideAllHints()V

    .line 845
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x76

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public showMoreModeGuideAnim()V
    .locals 4

    .line 621
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 623
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_more_mode_guide_click_time"

    const-string v3, "0"

    .line 622
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x5

    .line 626
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->sendEmptyMessage(I)V

    :cond_0
    return-void
.end method

.method public showOrHideModePickerRootUI(ZZ)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->showOrHideModePickerRootUI(ZZ)V

    return-void
.end method

.method public showOrHideMoreModeGuideRightView(Z)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->showOrHideMoreModeGuideRightView(Z)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 668
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mPanelHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_restore_settings_notify_ui"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->unInit()V

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModePanelUI;->unInit()V

    return-void
.end method

.method public updateArrowEnableState(Z)V
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateArrowEnableState(Z)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .locals 4

    .line 779
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 780
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentCamera(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerConfig:Lcom/transsion/camera/app/mode/ModePickerConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 787
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 788
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 789
    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getRestoreMode()Ljava/lang/String;

    move-result-object p0

    .line 788
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentCamera(Ljava/lang/String;)V

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 795
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 796
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getCameraModeList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    .line 797
    invoke-virtual {v1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getDefaultMode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getRestoreMode()Ljava/lang/String;

    move-result-object p0

    .line 796
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 802
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 803
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 804
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 805
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mVIPCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 808
    :cond_3
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 811
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartBackCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 815
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 816
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 817
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 818
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mSmartFrontCameraModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;ZZ)V
    .locals 1

    .line 760
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZ)V

    .line 761
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeOrderProvider:Lcom/transsion/camera/app/mode/ModeOrderProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->updateCurrentMode(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateCurrentMode(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 766
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->setSPVal(Landroid/content/Context;Ljava/lang/String;)V

    .line 767
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateTabSellingPointState()V

    .line 768
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/IModePanelUI;->refreshModePanelView()V

    .line 769
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p2, p1, p3}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateCurrentMode(Ljava/lang/String;Z)V

    .line 770
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateHorizontalScroll()V

    .line 772
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mIsCurModeSupportQC:Z

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 1118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1120
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mAllModeResources:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCamera:Ljava/lang/String;

    invoke-interface {v1, p1, v2, v3}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackDefaultMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mBackRestoreMode:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontDefaultMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mFrontRestoreMode:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1128
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModeEditorAssist:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;

    if-eqz p0, :cond_0

    .line 1112
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateGuideRightRootVisibleState(I)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateGuideRightRootVisibleState(I)V

    :cond_0
    return-void
.end method

.method public updateMoreEditMode(Z)V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePickerUI:Lcom/transsion/camera/app/ui/AbstractModePickerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractModePickerUI;->updateMoreEditMode(Z)V

    return-void
.end method

.method public updatePanelItemClickable(Z)V
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->mModePanelUI:Lcom/transsion/camera/app/ui/IModePanelUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModePanelUI;->updateItemClickable(Z)V

    return-void
.end method
